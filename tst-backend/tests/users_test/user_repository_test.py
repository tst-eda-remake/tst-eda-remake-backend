from plistlib import UID
from unittest import result

import pytest
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from app.models.config.database_config import Base
from app.models.repositories.user_repository import UserRepository
from app.models.user_model import User
from app.schemas.auth_schemas import UserSignupRequest, TokenProviderData

# Criamos a engine e a sessão fora para não recriar a engine toda vez
TEST_DATABASE_URL = "sqlite:///:memory:"
test_engine = create_engine(TEST_DATABASE_URL, connect_args={"check_same_thread": False})
TestSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=test_engine)

@pytest.fixture(scope="function")
def set_up_test_db():
    # 1. Cria as tabelas no banco em memória antes do teste rodar
    Base.metadata.create_all(bind=test_engine)
    
    # 2. Cria a sessão do banco de teste
    db_test_session = TestSessionLocal()
    
    # 3. Instancia o repositório PASSANDO a sessão de teste para ele
    repository = UserRepository(db=db_test_session)
    
    yield repository  # Fornece o repositório pronto para o teste
    
    # 4. DEPOIS do teste: fecha a sessão e limpa o banco
    db_test_session.close()
    Base.metadata.drop_all(bind=test_engine)

@pytest.fixture(scope="function")
def set_up_users_examples() -> dict[str, User]:
    user_signup = UserSignupRequest(
        first_name="João",
        last_name="Ventura",
        initial_semester="2025.1",
        course_semester="2025.2"
    )

    token_data = TokenProviderData(
        sub="1234567890123456789012345678",  # 28 caracteres
        email="joao@email.com",
        role="student"
    )

    user = User(
        user_singup=user_signup,
        token_data=token_data
    )

    user_with_same_id = User(
        user_singup=user_signup,
        token_data=TokenProviderData(
            sub=token_data.uid,
            email="outroemail@gmail.com",
            role="student"
        )
    )

    user_with_same_email = User(
        user_singup=user_signup,
        token_data=TokenProviderData(
            sub=token_data.uid[0:] + "0",
            email=token_data.email,
            role="student"
        )
    )

    return {
        "user": user,
        "same_user_id": user_with_same_id,
        "same_user_email": user_with_same_email

    }

def test_insert_user(set_up_test_db, set_up_users_examples):
    result = set_up_test_db.insert_user(set_up_users_examples["user"])

    assert result is True

def test_insert_user_same_id(set_up_test_db, set_up_users_examples):
    result = set_up_test_db.insert_user(set_up_users_examples["user"])

    assert result is True

    result_duplicated = set_up_test_db.insert_user(set_up_users_examples["same_user_id"])

    assert result_duplicated is False

def test_insert_user_same_email(set_up_test_db, set_up_users_examples):
    result = set_up_test_db.insert_user(set_up_users_examples["user"])

    assert result is True

    result_duplicated = set_up_test_db.insert_user(set_up_users_examples["same_user_email"])

    assert result_duplicated is False

def test_get_user_after_insert(set_up_test_db, set_up_users_examples):
    result = set_up_test_db.insert_user(set_up_users_examples["user"])

    assert result is True

    user_fetch = set_up_test_db.get_user_by_uid(set_up_users_examples["user"].id)

    assert user_fetch.id == set_up_users_examples["user"].id
    assert user_fetch.email == set_up_users_examples["user"].email

def test_get_user_without_insert(set_up_test_db, set_up_users_examples):
    result = set_up_test_db.get_user_by_uid(set_up_users_examples["user"].id)

    assert result is None

def test_data_persistence_user(set_up_test_db, set_up_users_examples):
    result = set_up_test_db.insert_user(set_up_users_examples["user"])

    assert result is True

    user_fetch = set_up_test_db.get_user_by_uid(set_up_users_examples["user"].id)

    assert user_fetch.id == set_up_users_examples["user"].id
    assert user_fetch.email == set_up_users_examples["user"].email
    assert user_fetch.first_name == set_up_users_examples["user"].first_name
    assert user_fetch.last_name == set_up_users_examples["user"].last_name
    assert user_fetch.course_semester == set_up_users_examples["user"].course_semester 
    assert user_fetch.initial_semester == set_up_users_examples["user"].initial_semester 
    assert user_fetch.role == set_up_users_examples["user"].role 








