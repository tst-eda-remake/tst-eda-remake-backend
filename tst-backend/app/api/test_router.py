from xmlrpc.client import Boolean

from fastapi import APIRouter, Depends, status
from urllib3 import HTTPResponse
from app.schemas.test_schemas import TestCreate, TestResponse, TestUpdate
from app.services.auth_service import verify_token
import app.services.test_service as service

router = APIRouter(
    prefix="/test",
    tags=["test"],
    # dependencies=[Depends(verify_token)]
)

@router.post(
    "/",
    status_code=status.HTTP_201_CREATED,
    description="criar teste.",
    response_model=TestResponse
)
async def create_test(test_request: TestCreate):
    return service.save_test(test_request)

@router.delete(
    "/{id_test}",
    status_code=status.HTTP_200_OK,
    description="deletar um test."
)
async def delete_test(id_test: int):
    service.deletes_test(id_test)

    return HTTPResponse(
        status=200,
        body={
            "message": f"test with id {id_test} was deleted."
        }
    )

@router.put(
    "/{id_test}",
    status_code=status.HTTP_200_OK,
    description="atualizar teste.",
    response_model=TestResponse
)
async def update_test(id_test: int, update_test_request: TestUpdate):
    return service.update_test(update_test_request, id_test)
