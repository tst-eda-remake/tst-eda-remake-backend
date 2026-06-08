from app.schemas.topic_schemas import TopicCreate, TopicUpdate, TopicResponse
from app.exceptions.topic_exceptions import TopicNotFoundException
from app.models.topic_model import Topic
from app.models.repositories.topic_repository import TopicRepository

topic_repository = TopicRepository()

def get_all_topics():
    topics = topic_repository.find_all()
    topics_response = list(map(TopicResponse.model_validate, topics))
    return topics_response

def get_topic_by_id(id: int):
    topic = topic_repository.find_by_id(id)

    if not topic:
        raise TopicNotFoundException(identifier=id)

    return TopicResponse.model_validate(topic)

def get_topics_by_ids(ids: list[int]):
    topics = topic_repository.find_by_ids(ids)
    topics_response = list(map(TopicResponse.model_validate, topics))
    return topics_response

def get_topic_by_name(name: str):
    topics = topic_repository.find_by_name(name)
    topics_response = list(map(TopicResponse.model_validate, topics))
    return topics_response

def create_topic(topic_data: TopicCreate):
    new_topic = Topic(topic_data)

    saved_topic = topic_repository.save(new_topic)

    if not saved_topic:
        return None

    return TopicResponse.model_validate(saved_topic)

def update_topic(id: int, topic_update: TopicUpdate):
    topic = topic_repository.find_by_id(id)

    if not topic:
        raise TopicNotFoundException(identifier=id)

    topic.update(topic_update)

    if not topic_repository.save_changes():
        return None

    return TopicResponse.model_validate(topic)

def delete_topic(id: int):
    return topic_repository.delete(id)
