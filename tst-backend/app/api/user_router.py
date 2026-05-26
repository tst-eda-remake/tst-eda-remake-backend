from fastapi import APIRouter, Depends, status
from urllib3 import HTTPResponse
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

# Observação, isso deve ser uma operação realizada pelo ADMIN da aplicação, apenas.
# esse endpoint deve apresentar a verificação de role. -> implementar, posteriormente
@router.delete(
    "/{id}",
    status_code=status.HTTP_200_OK,
    dependencies=[Depends(verify_token)]
)
async def delete_user_by_uid(id: str):
    if not service.delete_user_by_id(id):
        return HTTPResponse(
            status=400,
            body={
                "message": f"Não foi possível excluir usuário de id: {id}"
            }
        )
    
    return HTTPResponse(
        status=200, 
        body={
            "message": f"Usuário de id: {id} excluído com sucesso"
        }
    )

