from fastapi import APIRouter, Depends, status
from app.schemas.user_schema import UserResponse
from app.services.auth_service import verify_token
from app.services.user_service import get_user_information

router = APIRouter(
    prefix="/user",
    tags=["user-endpoints"]
)

@router.get(
    "/",
    response_model=UserResponse,
    status_code=status.HTTP_200_OK,
    summary="Busca informações simples do usuário."
)
async def getUserInformation(decoded_token = Depends(verify_token)):
    return get_user_information(decoded_token)


