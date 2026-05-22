import os
import firebase_admin
from firebase_admin import auth, credentials
from fastapi import Depends, HTTPException
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from core.settings import settings

firebase_credentials_path = os.path.expanduser(settings.PATH_FIREBASE_CREDENTIALS)

# Valida as configurações do SDK
cred = credentials.Certificate(firebase_credentials_path)
# Initializa serviçõs do firebase_admin
firebase_admin.initialize_app(cred)

security = HTTPBearer()

"""
Verifica validade de um token do tipo Bearer token.
"""
def verify_token(credentials: HTTPAuthorizationCredentials = Depends(security)):
    token = credentials.credentials

    try:
        decoded_token = auth.verify_id_token(token)
        return decoded_token

    except Exception:
        raise HTTPException(
                status_code=401,
                detail="Token inválido."
        )
