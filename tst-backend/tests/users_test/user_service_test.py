import pytest
from unittest.mock import MagicMock, patch

from app.schemas.auth_schemas import TokenProviderData, UserSignupRequest
from app.schemas.user_schema import UserResponse
from app.exceptions.user_exceptions import UserNotFoundException
from app.models.user_model import User

import app.services.user_service as service


@pytest.fixture
def real_token_data():
    return TokenProviderData(
        sub="1234567890123456789012345678",  # 28 caracteres
        email="joao@email.com",
        role="student"
    )


@pytest.fixture
def real_user_signup_request():
    return UserSignupRequest(
        first_name="João",
        last_name="Ventura",
        initial_semester="2025.1",
        course_semester="2025.2"
    )


@pytest.fixture
def real_user_instance(real_user_signup_request, real_token_data):
    # Instancia o modelo real usando os schemas válidos
    return User(
        user_singup=real_user_signup_request,
        token_data=real_token_data
    )


@pytest.fixture
def expected_user_response():
    return {
        "first_name": "João",
        "last_name": "Ventura",
        "initial_semester": "2025.1",
        "course_semester": "2025.2"
    }


# --- TESTES DO GET_USER_INFORMATION ---

@patch('app.services.user_service.user_repository')
def test_get_user_information_success(mock_repo, real_token_data, real_user_instance, expected_user_response):
    mock_repo.get_user_by_uid.return_value = real_user_instance
    
    with patch('app.services.user_service.UserResponse.model_validate') as mock_validate:
        mock_validate.return_value = expected_user_response
        
        result = service.get_user_information(real_token_data)
        
        mock_repo.get_user_by_uid.assert_called_once_with(real_token_data)
        mock_validate.assert_called_once_with(real_user_instance)
        assert result == expected_user_response


@patch('app.services.user_service.user_repository')
def test_get_user_information_user_not_found(mock_repo, real_token_data):
    mock_repo.get_user_by_uid.return_value = None
    
    with pytest.raises(UserNotFoundException):
        service.get_user_information(real_token_data)
    
    # CORREÇÃO: Alinhado para esperar o objeto real_token_data completo
    mock_repo.get_user_by_uid.assert_called_once_with(real_token_data)


# --- TESTES DO SIGNUP_USER ---

@patch('app.services.user_service.user_repository')
@patch('app.services.user_service.User')
def test_signup_user_success(mock_user_class, mock_repo, real_token_data, real_user_signup_request, expected_user_response):
    fake_user_instance = MagicMock()
    mock_user_class.return_value = fake_user_instance
    mock_repo.insert_user.return_value = True
    
    with patch('app.services.user_service.UserResponse.model_validate') as mock_validate:
        mock_validate.return_value = expected_user_response
        
        result = service.singup_user(real_token_data, real_user_signup_request)
        
        mock_user_class.assert_called_once_with(real_user_signup_request, token_data=real_token_data)
        mock_repo.insert_user.assert_called_once_with(fake_user_instance)
        assert result == expected_user_response


@patch('app.services.user_service.user_repository')
@patch('app.services.user_service.User')
def test_signup_user_repository_fail(mock_user_class, mock_repo, real_token_data, real_user_signup_request):
    fake_user_instance = MagicMock()
    mock_user_class.return_value = fake_user_instance
    mock_repo.insert_user.return_value = False
    
    result = service.singup_user(real_token_data, real_user_signup_request)
    
    assert result is False
    mock_user_class.assert_called_once_with(real_user_signup_request, token_data=real_token_data)
    mock_repo.insert_user.assert_called_once_with(fake_user_instance)


# --- TESTES DO UPDATE_USER ---

@patch('app.services.user_service.user_repository')
def test_update_user_success(mock_repo, real_user_signup_request, expected_user_response):
    mock_user_instance = MagicMock()
    mock_repo.get_user_by_uid.return_value = mock_user_instance
    mock_repo.save_changes.return_value = True
    
    with patch('app.services.user_service.UserResponse.model_validate') as mock_validate:
        mock_validate.return_value = expected_user_response
        
        result = service.update_user("abc-123", real_user_signup_request)
        
        mock_repo.get_user_by_uid.assert_called_once_with("abc-123")
        mock_user_instance.set_personal_information.assert_called_once_with(real_user_signup_request)
        mock_repo.save_changes.assert_called_once()
        mock_validate.assert_called_once_with(mock_user_instance)
        assert result == expected_user_response


@patch('app.services.user_service.user_repository')
def test_update_user_not_found(mock_repo, real_user_signup_request):
    mock_repo.get_user_by_uid.return_value = None
    
    with pytest.raises(UserNotFoundException):
        service.update_user("usuario-fantasma", real_user_signup_request)
        
    mock_repo.get_user_by_uid.assert_called_once_with("usuario-fantasma")
    mock_repo.save_changes.assert_not_called()


@patch('app.services.user_service.user_repository')
def test_update_user_save_changes_fail(mock_repo, real_user_signup_request):
    mock_user_instance = MagicMock()
    mock_repo.get_user_by_uid.return_value = mock_user_instance
    mock_repo.save_changes.return_value = False
    
    result = service.update_user("abc-123", real_user_signup_request)
    
    assert result is None
    mock_repo.get_user_by_uid.assert_called_once_with("abc-123")
    mock_user_instance.set_personal_information.assert_called_once_with(real_user_signup_request)
    mock_repo.save_changes.assert_called_once()


# --- TESTES DO DELETE_USER_BY_ID ---

@patch('app.services.user_service.user_repository')
def test_delete_user_by_id_success(mock_repo):
    mock_repo.delete_user.return_value = True
    try: 
        result = service.delete_user_by_id("uid-para-deletar")
        
        mock_repo.delete_user.assert_called_once_with("uid-para-deletar")
        assert True
    except UserNotFoundException: 
        assert False # isso indica que lançou uma excessão e não deveria


@patch('app.services.user_service.user_repository')
def test_delete_user_by_id_not_found(mock_repo):
    mock_repo.delete_user.return_value = False
    
    try:
        result = service.delete_user_by_id("uid-inexistente")
        
        mock_repo.delete_user.assert_called_once_with("uid-inexistente")
        assert False
    except UserNotFoundException:
        assert True
