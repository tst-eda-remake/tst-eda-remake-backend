# from services.auth_services import verify_user
# from fastapi import status, APIRouter, Depends
# from schemas.AuthSchemas import UserSignupRequest, SigninResponse
#
# router = APIRouter(
#     prefix="/auth",
#     tags=["authentication"]
# )
#
# @router.post(
#     "/signup",
#     response_model=SigninResponse,
#     status_code=status.HTTP_201_CREATED,
#     summary="Cadastra um novo usuário",
#     description="Cria o registro do usuário no banco de dados interno após a validação do token Firebase."
# )
# async def signup(userSignup: UserSignupRequest, decoded_token = Depends(verify_user)):
#     """
#     Realiza o cadastro do usuário no sistema.
#
#     Args:
#         user_signup (UserSignupRequest): Dados do perfil do usuário (nome, cargo, etc).
#         decoded_token (dict): Token JWT decodificado, injetado pela dependência de verificação.
#
#     Returns:
#         SigninResponse: Objeto contendo os dados do usuário cadastrado com sucesso.
#
#     Raises:
#         HTTPException (401): Caso o header esteja ausente, malformado ou o token seja inválido.
#         HTTPException (403): Caso o token seja válido, mas o e-mail não tenha sido verificado.
#         HTTPExecption (409): Se o usuário ja apresentar cadastro.
#     """
#     # antes de rodar o escopo da função, o Depends é chamado e aguada-se a autorização
#
#     # aqui chamaria a logica interna no services para o cadastro do aluno no DB
#
#     # Retorno caso não suba escessão.
#     return {
#         "status": 201,
#         "user_info": SigninResponse(
#             first_name=userSignup.first_name,
#             last_name=userSignup.last_name,
#             email=userSignup.email,
#             role=userSignup.role,
#             uid=decoded_token.get("uid")
#         )
#     }
