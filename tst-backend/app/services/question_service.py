from app.schemas.question_schema import QuestionCreate, QuestionResponse, QuestionUpdate
from app.exceptions.question_exceptions import QuestionNotFoundException
from app.exceptions.topic_exceptions import TopicNotFoundException
from app.models.question_model import Question
from app.models.repositories.question_repository import QuestionRepository
from app.models.repositories.topic_repository import TopicRepository
from app.models.config.database_config import session_local

question_repository = QuestionRepository()
topic_repository = TopicRepository(question_repository.db) # mesma sessão do question_repository

def get_all_questions():
    questions = question_repository.find_all()
    questions_response = list(map(QuestionResponse.model_validate, questions))
    return questions_response

def get_question_by_id(id: int):
    question = question_repository.find_by_id(id)

    if not question:
        raise QuestionNotFoundException(identifier=id)

    return QuestionResponse.model_validate(question)


def create_question(question_data: QuestionCreate):
    new_question = Question(question_data)

    requested_ids = set(question_data.topics)

    topics = topic_repository.find_by_ids(requested_ids)

    found_ids = {topic.id for topic in topics}

    invalid_ids = requested_ids - found_ids

    if invalid_ids:
        raise TopicNotFoundException(identifier=list(invalid_ids))

    new_question.topics = topics

    saved_question = question_repository.save(new_question)

    if not saved_question:
        return None

    return QuestionResponse.model_validate(saved_question)


def update_question(id: int, question_update: QuestionUpdate):
    question = question_repository.find_by_id(id)

    if not question:
        raise QuestionNotFoundException(identifier=id)

    question.update(question_update)

    if not question_repository.save_changes():
        return None # change for an exception later

    return QuestionResponse.model_validate(question)


def delete_question_by_id(id: int):
    return question_repository.delete(id)
