from fastapi import APIRouter, Depends, status
from urllib3 import HTTPResponse
from app.schemas.topic_schemas import TopicCreate, TopicUpdate, TopicResponse
import app.services.topic_service as service

router = APIRouter(
    prefix="/topic",
    tags=["topic-endpoints"]
)


@router.get(
    "/",
    response_model=list[TopicResponse],
    summary="Lista todos os tópicos."
)
async def get_all_topics():
    return service.get_all_topics()


@router.get(
    "/search",
    response_model=TopicResponse | list[TopicResponse],
    status_code=status.HTTP_200_OK,
    summary="Busca tópico."
)
async def get_topic_by_attribute(id: int | None = None, name: str | None = None):
    if id is not None:
        return service.get_topic_by_id(id)
    elif name is not None:
        return service.get_topic_by_name(name)
    else:
        return None

@router.post(
    "/",
    response_model=TopicResponse,
    status_code=status.HTTP_201_CREATED,
    summary="Cria novo tópico."
)
async def create_topic(topic_data: TopicCreate):
    return service.create_topic(topic_data)


@router.put(
    "/{id}",
    response_model=TopicResponse,
    status_code=status.HTTP_200_OK,
    summary="Atualiza tópico."
)
async def update_topic(id: int, topic_update: TopicUpdate):
    return service.update_topic(id, topic_update)

@router.delete(
    "/{id}",
    status_code=status.HTTP_200_OK,
)
async def delete_topic_by_id(id: int):
    if not service.delete_topic(id):
        return HTTPResponse(
                status=400,
                body={
                    "message": f"Não foi possível excluir tópico de id: {id}."
                }
        )

    return HTTPResponse(
        status=200,
        body={
            "message": f"Tópico de id {id} excluído."
        }
    )
