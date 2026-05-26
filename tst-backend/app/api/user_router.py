from fastapi import APIRouter, Depends, status
from app.schemas.user_schema import UserResponse
from app.services.auth_service import verify_token
import app.services.user_service as service
from app.schemas.auth_schemas import TokenProviderData, UserSignupRequest

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
async def get_user_information(decoded_token: TokenProviderData = Depends(verify_token)):
    return service.get_user_information(decoded_token.uid)


@router.put(
    "/",
    response_model=UserResponse,
    status_code=status.HTTP_200_OK,
    summary="Atualiza as informações básicas do usuário."
)
async def update_user_information(user_info: UserSignupRequest, decoded_token: TokenProviderData = Depends(verify_token)):
    return service.update_user(user_info=user_info, uid=decoded_token.uid)


