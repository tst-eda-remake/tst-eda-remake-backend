import pytest
from unittest.mock import MagicMock, patch

from app.services.test_service import save_test, get_test_by_id, update_test, deletes_test

from app.exceptions.test_exception import TestNotFoundException
from app.schemas.test_schemas import TestCreate, TestResponse, TestUpdate
from app.models.test_model import Test


@pytest.fixture(autouse=True)
def mock_repository():
    """Mocka o repositório global instanciado no service."""
    with patch("app.services.test_service.repository") as mock_repo:
        yield mock_repo


# --- TESTES: save_test ---

def test_save_test_success(mock_repository):
    # Arrange
    test_request = TestCreate(
        input="Entrada de teste", 
        output="Saída esperada", 
        is_public=True, 
        question_id=42
    )
    mock_saved_test = MagicMock(spec=Test)
    mock_repository.save.return_value = mock_saved_test

    # Act
    result = save_test(test_request)

    # Assert
    mock_repository.save.assert_called_once()
    assert result == mock_saved_test


# --- TESTES: get_test_by_id ---

def test_get_test_by_id_success(mock_repository):
    # Arrange
    test_id = 1
    
    # Criamos um mock que simula o Model do banco com os atributos que o TestResponse precisa
    mock_test = MagicMock(spec=Test)
    mock_test.id = test_id
    mock_test.input = "Entrada mockada"
    mock_test.output = "Saída mockada"
    mock_test.is_public = False
    
    mock_repository.find_by_id.return_value = mock_test

    # Act
    result = get_test_by_id(test_id)

    # Assert
    mock_repository.find_by_id.assert_called_once_with(test_id)
    
    # Garantimos que o retorno é uma instância real de TestResponse com os dados mapeados
    assert isinstance(result, TestResponse)
    assert result.id == test_id
    assert result.input == "Entrada mockada"
    assert result.output == "Saída mockada"
    assert result.is_public is False


def test_get_test_by_id_not_found(mock_repository):
    # Arrange
    test_id = 999
    mock_repository.find_by_id.return_value = None

    # Act & Assert
    with pytest.raises(TestNotFoundException):
        get_test_by_id(test_id)
    
    mock_repository.find_by_id.assert_called_once_with(test_id)


# --- TESTES: update_test ---

def test_update_test_success(mock_repository):
    # Arrange
    test_id = 1
    test_update = TestUpdate(
        input="Nova Entrada", 
        output="Nova Saída", 
        is_public=True
    )
    
    # Simulando o objeto antes/durante a atualização
    mock_test = MagicMock(spec=Test)
    mock_test.id = test_id
    mock_test.input = test_update.input
    mock_test.output = test_update.output
    mock_test.is_public = test_update.is_public
    
    mock_repository.find_by_id.return_value = mock_test

    # Act
    result = update_test(test_update, test_id)

    # Assert
    mock_repository.find_by_id.assert_called_once_with(test_id)
    mock_test.update_test.assert_called_once_with(test_update)
    mock_repository.save_changes.assert_called_once()
    
    # Valida se o schema final foi montado corretamente a partir do mock modificado
    assert isinstance(result, TestResponse)
    assert result.id == test_id
    assert result.input == "Nova Entrada"
    assert result.is_public is True


def test_update_test_not_found(mock_repository):
    # Arrange
    test_id = 999
    test_update = TestUpdate(input="In", output="Out", is_public=True)
    mock_repository.find_by_id.return_value = None

    # Act & Assert
    with pytest.raises(TestNotFoundException):
        update_test(test_update, test_id)
        
    mock_repository.find_by_id.assert_called_once_with(test_id)


# --- TESTES: deletes_test ---

def test_delete_test_success(mock_repository):
    # Arrange
    test_id = 1
    mock_repository.delete.return_value = True

    # Act
    result = deletes_test(test_id)

    # Assert
    mock_repository.delete.assert_called_once_with(test_id)
    assert result is None


def test_delete_test_not_found(mock_repository):
    # Arrange
    test_id = 999
    mock_repository.delete.return_value = False

    # Act & Assert
    with pytest.raises(TestNotFoundException):
        deletes_test(test_id)

    mock_repository.delete.assert_called_once_with(test_id)