import pytest
from unittest.mock import MagicMock, patch

from app.schemas.question_schema import (
    QuestionCreate,
    QuestionResponseTests,
    QuestionUpdate,
    QuestionResponse
)

from app.schemas.test_schemas import TestCreate, TestResponse
from app.exceptions.question_exceptions import QuestionNotFoundException, QuestionCouldntPersistException
from app.models.test_model import Test
from app.models.question_model import Question
from app.enums.question_difficulty import QuestionDifficulty

import app.services.question_service as service

from app.models.topic_model import Topic
from app.schemas.topic_schemas import TopicCreate, TopicResponse


@pytest.fixture
def real_topics():
    topic_1 = Topic(TopicCreate(name="Inverte Pilha com Fila"))
    topic_1.id = 1
    topic_2 = Topic(TopicCreate(name="Inverte Fila com Pilha"))
    topic_2.id = 2
    return [topic_1, topic_2]

@pytest.fixture
def real_tests():
    question_id = 1
    test_1 = Test(
        TestCreate(
            input="1 2 3 4",
            output="10",
            is_public=True,
            question_id=question_id
        )
    )
    test_1.id = 1

    test_2 = Test(
        TestCreate(
            input="1 2 3 4 5",
            output="12",
            is_public=False,
            question_id=question_id
        )
    )
    test_2.id = 2

    return [test_1, test_2]

@pytest.fixture
def real_question_create():
    return QuestionCreate(
        title="Questão Teste",
        difficulty=QuestionDifficulty.INDETERMINADA,
        description="Descrição da questão",
        restriction="Nenhuma",
        input_format="txt",
        output_format="json",
        resolution_path="/tmp/resolution",
        topics=[1, 2]
    )


@pytest.fixture
def real_question_update():
    return QuestionUpdate(
        title="Novo Título",
        description="Nova descrição"
    )


@pytest.fixture
def real_question_instance(real_question_create, real_topics, real_tests):
    question = Question(real_question_create)
    question.id = 1
    question.tests = real_tests
    question.topics = real_topics
    return question


@pytest.fixture
def expected_question_response(real_question_instance, real_topics, real_tests):
    return {
        "id": 1,
        "title": real_question_instance.title,
        "difficulty": real_question_instance.difficulty,
        "description": real_question_instance.description,
        "restriction": real_question_instance.restriction,
        "input_format": real_question_instance.input_format,
        "output_format": real_question_instance.output_format,
        "topics": [
            TopicResponse.model_validate(real_topics[0]),
            TopicResponse.model_validate(real_topics[1])
        ],
        "tests": [
            TestResponse.model_validate(real_tests[0])
        ]
    }


@patch("app.services.question_service.question_repository")
def test_get_question_information_success(
    mock_repo,
    real_question_instance,
    expected_question_response
):
    """
    Esse teste funciona e nao me pergunte o porque!
    """
    
    mock_repo.find_by_id.return_value = real_question_instance

    result = service.get_question_by_id(1, tests=True)

    expected_response_instance = QuestionResponseTests.model_validate(expected_question_response)
    
    assert result == expected_response_instance


@patch("app.services.question_service.question_repository")
def test_get_question_information_not_found(mock_repo):
    mock_repo.find_by_id.return_value = None

    with pytest.raises(QuestionNotFoundException):
        service.get_question_by_id(999, tests=True)

    mock_repo.find_by_id.assert_called_once_with(999)


@patch("app.services.question_service.topic_repository")
@patch("app.services.question_service.question_repository")
def test_create_question_success(
    mock_question_repo,
    mock_topic_repo,
    real_question_create,
    real_topics,
    expected_question_response
):
    mock_topic_repo.find_by_ids.return_value = real_topics

    def side_effect_save(question):
        question.id = 1
        question.tests = []
        return question

    mock_question_repo.save.side_effect = side_effect_save

    # Executa o serviço
    result = service.create_question(real_question_create)

    # Asserções de repositório
    mock_topic_repo.find_by_ids.assert_called_once_with({1, 2})
    mock_question_repo.save.assert_called_once()
    saved_question = mock_question_repo.save.call_args[0][0]
    assert saved_question.topics == real_topics

    # Alinhamento da fixture com o comportamento de criação real
    expected_question_response["topics"] = [
        {"id": t.id, "name": t.name} for t in real_topics
    ]
    expected_question_response["tests"] = []
    
    expected_response_instance = QuestionResponse.model_validate(expected_question_response)
    
    assert result == expected_response_instance

from app.exceptions.topic_exceptions import TopicNotFoundException


@patch("app.services.question_service.topic_repository")
@patch("app.services.question_service.question_repository")
@patch("app.services.question_service.Question")
def test_create_question_invalid_topic(
    mock_question_class,
    mock_question_repo,
    mock_topic_repo,
    real_question_create,
    real_topics
):
    mock_question_repo.save.return_value = True

    mock_topic_repo.find_by_ids.return_value = [
        real_topics[0]
    ]

    with pytest.raises(TopicNotFoundException):
        service.create_question(real_question_create)

    mock_question_repo.save.assert_not_called()


@patch("app.services.question_service.question_repository")
def test_update_question_success(
    mock_repo,
    real_question_update,
    real_question_instance, 
    expected_question_response
):
    mock_repo.find_by_id.return_value = real_question_instance
    mock_repo.save_changes.return_value = True

    with patch.object(real_question_instance, 'update') as mock_update:
        result = service.update_question(1, real_question_update)
        mock_repo.find_by_id.assert_called_once_with(1)
        mock_repo.save_changes.assert_called_once()

    # ================= CORREÇÃO AQUI =================
    # 4. Alinhamos os tópicos da fixture esperada com o que está na instância real usada no teste
    expected_question_response["topics"] = [
        {"id": t.id, "name": t.name} for t in real_question_instance.topics
    ]
    expected_response_instance = QuestionResponse.model_validate(expected_question_response)
    
    assert result == expected_response_instance


@patch("app.services.question_service.question_repository")
def test_update_question_not_found(
    mock_repo,
    real_question_update
):
    mock_repo.find_by_id.return_value = None

    with pytest.raises(QuestionNotFoundException):
        service.update_question(
            999,
            real_question_update
        )

    mock_repo.find_by_id.assert_called_once_with(999)
    mock_repo.save_changes.assert_not_called()


@patch("app.services.question_service.question_repository")
def test_update_question_save_changes_fail(
    mock_repo,
    real_question_update
):
    mock_question_instance = MagicMock()

    mock_repo.find_by_id.return_value = mock_question_instance
    mock_repo.save_changes.return_value = False

    with pytest.raises(QuestionCouldntPersistException):
        service.update_question(
            1,
            real_question_update
        )

    mock_repo.find_by_id.assert_called_once_with(1)

    mock_question_instance.update.assert_called_once_with(
        real_question_update
    )


@patch("app.services.question_service.question_repository")
def test_delete_question_by_id_success(mock_repo):
    mock_repo.delete.return_value = True

    result = service.delete_question_by_id(1)

    mock_repo.delete.assert_called_once_with(1)

    assert result is True


@patch("app.services.question_service.question_repository")
def test_delete_question_by_id_not_found(mock_repo):
    mock_repo.delete.return_value = False

    result = service.delete_question_by_id(999)

    mock_repo.delete.assert_called_once_with(999)

    assert result is False
