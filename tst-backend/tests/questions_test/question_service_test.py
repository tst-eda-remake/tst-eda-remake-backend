import pytest
from unittest.mock import MagicMock, patch

from app.schemas.question_schema import (
    QuestionCreate,
    QuestionUpdate,
    QuestionResponse
)
from app.exceptions.question_exceptions import QuestionNotFoundException
from app.models.question_model import Question

import app.services.question_service as service


@pytest.fixture
def real_question_create():
    return QuestionCreate(
        title="Questão Teste",
        description="Descrição da questão",
        restriction="Nenhuma",
        input_format="txt",
        output_format="json",
        resolution_path="/tmp/resolution"
    )


@pytest.fixture
def real_question_update():
    return QuestionUpdate(
        title="Novo Título",
        description="Nova descrição"
    )


@pytest.fixture
def real_question_instance(real_question_create):
    question = Question(real_question_create)
    question.id = 1
    return question


@pytest.fixture
def expected_question_response():
    return {
        "id": 1,
        "title": "Questão Teste",
        "description": "Descrição da questão",
        "restriction": "Nenhuma",
        "input_format": "txt",
        "output_format": "json",
        "resolution_path": "/tmp/resolution"
    }


@patch("app.services.question_service.question_repository")
def test_get_question_information_success(
    mock_repo,
    real_question_instance,
    expected_question_response
):
    mock_repo.find_by_id.return_value = real_question_instance

    with patch(
        "app.services.question_service.QuestionResponse.model_validate"
    ) as mock_validate:
        mock_validate.return_value = expected_question_response

        result = service.get_question_by_id(1)

        mock_repo.find_by_id.assert_called_once_with(1)
        mock_validate.assert_called_once_with(real_question_instance)

        assert result == expected_question_response


@patch("app.services.question_service.question_repository")
def test_get_question_information_not_found(mock_repo):
    mock_repo.find_by_id.return_value = None

    with pytest.raises(QuestionNotFoundException):
        service.get_question_by_id(999)

    mock_repo.find_by_id.assert_called_once_with(999)


@patch("app.services.question_service.question_repository")
@patch("app.services.question_service.Question")
def test_create_question_success(
    mock_question_class,
    mock_repo,
    real_question_create,
    expected_question_response
):
    fake_question_instance = MagicMock()

    mock_question_class.return_value = fake_question_instance
    mock_repo.save.return_value = True

    with patch(
        "app.services.question_service.QuestionResponse.model_validate"
    ) as mock_validate:
        mock_validate.return_value = expected_question_response

        result = service.create_question(real_question_create)

        mock_question_class.assert_called_once_with(real_question_create)
        mock_repo.save.assert_called_once_with(
            fake_question_instance
        )

        assert result == expected_question_response


@patch("app.services.question_service.question_repository")
@patch("app.services.question_service.Question")
def test_create_question_repository_fail(
    mock_question_class,
    mock_repo,
    real_question_create
):
    fake_question_instance = MagicMock()

    mock_question_class.return_value = fake_question_instance
    mock_repo.save.return_value = None

    result = service.create_question(real_question_create)

    assert result is None

    mock_question_class.assert_called_once_with(real_question_create)
    mock_repo.save.assert_called_once_with(
        fake_question_instance
    )


@patch("app.services.question_service.question_repository")
def test_update_question_success(
    mock_repo,
    real_question_update,
    expected_question_response
):
    mock_question_instance = MagicMock()

    mock_repo.find_by_id.return_value = mock_question_instance
    mock_repo.save_changes.return_value = True

    with patch(
        "app.services.question_service.QuestionResponse.model_validate"
    ) as mock_validate:
        mock_validate.return_value = expected_question_response

        result = service.update_question(
            1,
            real_question_update
        )

        mock_repo.find_by_id.assert_called_once_with(1)

        mock_question_instance.update.assert_called_once_with(
            real_question_update
        )

        mock_repo.save_changes.assert_called_once()

        mock_validate.assert_called_once_with(
            mock_question_instance
        )

        assert result == expected_question_response


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

    result = service.update_question(
        1,
        real_question_update
    )

    assert result is None

    mock_repo.find_by_id.assert_called_once_with(1)

    mock_question_instance.update.assert_called_once_with(
        real_question_update
    )

    mock_repo.save_changes.assert_called_once()


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
