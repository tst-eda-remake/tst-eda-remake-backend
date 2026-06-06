from fastapi import APIRouter, Depends, status
from urllib3 import HTTPResponse
from app.schemas.question_schema import QuestionCreate, QuestionUpdate, QuestionResponse
import app.services.question_service as service

router = APIRouter(
        prefix="/question",
        tags=["question-endpoints"]
)

@router.get(
    "/",
    response_model=list[QuestionResponse],
    summary="Lista todas as questões."
)
async def get_all_questions():
    return service.get_all_questions()


@router.get(
    "/{id}",
    response_model=QuestionResponse,
    status_code=status.HTTP_200_OK,
    summary="Busca informações da questão."
)
async def get_question_information(id: int):
    return service.get_question_information(id)


@router.post(
    "/",
    response_model=QuestionResponse,
    status_code=status.HTTP_201_CREATED,
    summary="Cria nova questão."
)
async def create_question(question_data: QuestionCreate):
    return service.create_question(question_data)

@router.put(
    "/{id}",
    response_model=QuestionResponse,
    status_code=status.HTTP_200_OK,
    summary="Atualiza informações da questão."
)
async def update_question_information(id: int, question_info: QuestionUpdate):
    return service.update_question(id, question_info)


@router.delete(
    "/{id}",
    status_code=status.HTTP_200_OK,
)
async def delete_question_by_id(id: int):
    if not service.delete_question_by_id(id):
        return HTTPResponse(
                status=400,
                body={
                    "message": f"Não foi possível excluir questão de id: {id}."
                }
        )

    return HTTPResponse(
        status=200,
        body={
            "message": f"Questão de id {id} excluída."
        }
    )
