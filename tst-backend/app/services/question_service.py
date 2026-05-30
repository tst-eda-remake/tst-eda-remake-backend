from app.schemas.questio_schema import QuestionCreate, QuestionResponse
from app.exceptions.question_exceptions import QuestionNotFoundException
from app.models.question_model import Question
from app.models.repositories.question_repository import QuestionRepository

question_repository = QuestionRepository()

def get_question_information(id: int):
    question = question_repository.get_question_by_id(id)

    if not question:
        raise QuestionNotFoundException

    return QuestionResponse.model_validate(question)


def create_question(question_info: QuestionCreate):
    question = Question(question_info)

    if not question_repository.insert_question(question):
        return False # change for an exception later

    return QuestionResponse.model_validate(question)
