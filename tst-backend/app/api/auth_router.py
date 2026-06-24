from app.services.auth_service import verify_token
import app.services.user_service as service
from fastapi import status, APIRouter, Depends
from app.schemas.auth_schemas import UserSignupRequest, TokenProviderData
from app.schemas.user_schema import UserResponse

router = APIRouter(
    prefix="/auth",
    tags=["authentication"]
)

@router.post(
    "/signup",
    response_model=UserResponse,
    status_code=status.HTTP_201_CREATED,
    summary="Cadastra um novo usuário",
    description="Cria o registro do usuário no banco de dados interno após a validação do token Firebase."
)
async def signup(user_signup: UserSignupRequest, decoded_token: TokenProviderData = Depends(verify_token)):
    """
    Realiza o cadastro do usuário no sistema.

    Args:
        user_signup (UserSignupRequest): Dados do perfil do usuário (nome, cargo, etc).
        decoded_token (dict): Token JWT decodificado, injetado pela dependência de verificação.

    Returns:
        SigninResponse: Objeto contendo os dados do usuário cadastrado com sucesso.

    Raises:
        HTTPException (401): Caso o header esteja ausente, malformado ou o token seja inválido.
        HTTPException (403): Caso o token seja válido, mas o e-mail não tenha sido verificado.
        HTTPExecption (409): Se o usuário ja apresentar cadastro.
    """
    
    return service.singup_user(
        user_info=user_signup, 
        token_data=decoded_token
    )
