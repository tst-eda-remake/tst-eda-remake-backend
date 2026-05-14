import os
from sys import exception
from firebase_admin import credentials, initialize_app
from fastapi import APIRouter
from schemas.AuthSchemas import userSingUpRequest

router = APIRouter(
    prefix="/auth",
    tags=["authentication"]
)

firebase_credential_path = os.getenv('PATH_FIREBASE_CREDENTIALS')

if not firebase_credential_path:
    print("erro ao procurar as credencias do Firebase.")
    raise ValueError('Credenciais nao encontradas no path.')

cred = credentials.Certificate(firebase_credential_path)
default_app = initialize_app(cred)

@router.post("/")
def singup():
    return "usuario realizou login com sucesso."
