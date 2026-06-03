import pytest
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from app.models.config.database_config import Base
from app.models.question_model import Question
from app.schemas.question_schema import QuestionCreate
from app.models.repositories.question_repository import QuestionRepository

TEST_DATABASE_URL = "sqlite:///:memory:"
test_engine = create_engine(
    TEST_DATABASE_URL,
    connect_args={"check_same_thread": False}
)

TestSessionLocal = sessionmaker(
    autocommit=False,
    autoflush=False,
    bind=test_engine
)

@pytest.fixture(scope="function")
def set_up_test_db():
    Base.metadata.create_all(bind=test_engine)

    db_test_session = TestSessionLocal()

    repository = QuestionRepository(db=db_test_session)

    yield repository

    db_test_session.close() # já fecha a sessão do bd
    Base.metadata.drop_all(bind=test_engine)

@pytest.fixture(scope="function")
def set_up_question_examples() -> dict[str, Question]:
    question = Question(QuestionCreate(
        title="Two Sum",
        description="Encontre dois números cuja soma seja igual ao alvo.",
        restriction="1 <= n <= 10^5",
        input_format="Lista de inteiros",
        output_format="Índices dos elementos",
        resolution_path="/solutions/two_sum.py"
    ))
    
    # guinoronhaf: setando id aqui porque o model Question não recebe o id no construtor, já que o bd incrementa isso
    question.id = 1

    question_same_id = Question(QuestionCreate(
        title="Binary Search",
        description="Busca binária.",
        restriction="Lista ordenada",
        input_format="Lista + valor",
        output_format="Posição",
        resolution_path="/solutions/binary_search.py"
    ))

    question_same_id.id = 1

    question_same_title = Question(QuestionCreate(
        title="Two Sum",
        description="Outra descrição",
        restriction=None,
        input_format="Entrada qualquer",
        output_format="Saída qualquer",
        resolution_path="/solutions/other.py"
    ))

    question_same_title.id = 2

    return {
        "question": question,
        "same_id": question_same_id,
        "same_title": question_same_title
    }

def test_insert_question(set_up_test_db, set_up_question_examples):
    result = set_up_test_db.insert_question(
        set_up_question_examples["question"]
    )

    assert result is True

def test_insert_question_same_id(set_up_test_db, set_up_question_examples):
    result = set_up_test_db.insert_question(
        set_up_question_examples["question"]
    )

    assert result is True

    duplicated_result = set_up_test_db.insert_question(
        set_up_question_examples["same_id"]
    )

    assert duplicated_result is False

def test_insert_question_same_title(set_up_test_db, set_up_question_examples):
    result = set_up_test_db.insert_question(
        set_up_question_examples["question"]
    )

    assert result is True

    duplicated_result = set_up_test_db.insert_question(
        set_up_question_examples["same_title"]
    )

    assert duplicated_result is False

def test_get_question_after_insert(set_up_test_db, set_up_question_examples):
    question_id = set_up_question_examples["question"].id

    result = set_up_test_db.insert_question(
        set_up_question_examples["question"]
    )

    assert result is True

    question_fetch = set_up_test_db.get_question_by_id(question_id)

    assert question_fetch is not None
    assert question_fetch.id == question_id

def test_get_question_without_insert(set_up_test_db, set_up_question_examples):
    question_id = set_up_question_examples["question"].id

    question_fetch = set_up_test_db.get_question_by_id(question_id)

    assert question_fetch is None

def test_data_persistence_question(set_up_test_db, set_up_question_examples):
    original = set_up_question_examples["question"]

    result = set_up_test_db.insert_question(original)

    assert result is True

    question_fetch = set_up_test_db.get_question_by_id(original.id)

    assert question_fetch is not None
    assert question_fetch.id == original.id
    assert question_fetch.title == original.title
    assert question_fetch.description == original.description
    assert question_fetch.restriction == original.restriction
    assert question_fetch.input_format == original.input_format
    assert question_fetch.output_format == original.output_format
    assert question_fetch.resolution_path == original.resolution_path

def test_delete_question(set_up_test_db, set_up_question_examples):
    question = set_up_question_examples["question"]

    result = set_up_test_db.insert_question(question)

    assert result is True

    deleted = set_up_test_db.delete_question(question.id)

    assert deleted is True

    question_fetch = set_up_test_db.get_question_by_id(question.id)

    assert question_fetch is None

def test_delete_nonexistent_question(set_up_test_db):
    result = set_up_test_db.delete_question(999)

    assert result is False
