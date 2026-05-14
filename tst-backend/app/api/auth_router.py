import os
import firebase_admin
from firebase_admin import credentials, auth
from fastapi import APIRouter, HTTPException, Header
from schemas.AuthSchemas import UserSingUpRequest

router = APIRouter(
    prefix="/auth",
    tags=["authentication"]
)

firebase_credential_path = os.getenv('PATH_FIREBASE_CREDENTIALS')

if not firebase_credential_path:
    print("erro ao procurar as credencias do Firebase.")
    raise ValueError('Credenciais nao encontradas no path.')

cred = credentials.Certificate(firebase_credential_path)
default_app = firebase_admin.initialize_app(cred)

# criando uma funcao de dependencia para a rota de singup
# antes de realizar a rota que for selecionada como dependent, ela executara isso primeiro.
async def verify_user(id_token: str = Header(None)):
    if not id_token or not id_token.startswith("Bearer "):
        raise HTTPException(
            status_code=401,
            detail="Token ausente."
        )
    
    token = id_token.split("Bearer ")[1]

    try:
        decoded_token = auth.verify_id_token(token)

        if not decoded_token.get("email_verified"):
            raise HTTPException(
                status_code=403,
                detail="Email não validado pelo usuário."
            )
        
        return decoded_token
    except Exception:
        raise HTTPException(
            status_code=401,
            detail="Token Invalido."
        )
