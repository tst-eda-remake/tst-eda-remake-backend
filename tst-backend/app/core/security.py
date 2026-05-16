import os
import firebase_admin

from firebase_admin import auth, credentials
from fastapi import Depends, HTTPException
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials

env_value = os.getenv('PATH_FIREBASE_CREDENTIALS')

if not env_value:
    raise ValueError("Variável de ambiente não definida.")

firebase_credentials_path = os.path.expanduser(env_value)

# Define path do arquivo de configuração do SDK Firebase
FIREBASE_CREDENTIALS = "/home/guilherme/Documentos/estudos/cc/projetos/tst_eda_remake/settings/tst-eda-remake-demo-firebase-adminsdk-fbsvc-d92549ae5b.json"

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
