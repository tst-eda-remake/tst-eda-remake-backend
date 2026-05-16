import os
import firebase_admin
from firebase_admin import credentials, auth
from fastapi import HTTPException, Header

firebase_credential_path = os.path.expanduser(
    str(os.getenv('PATH_FIREBASE_CREDENTIALS')) # path em str das configuracoes do firebase project
)

if not firebase_credential_path:
    print("erro ao procurar as credencias do Firebase.")
    raise ValueError('Credenciais nao encontradas no path.')

cred = credentials.Certificate(firebase_credential_path)
default_app = firebase_admin.initialize_app(cred)

async def verify_user(authorization: str = Header(None)) -> dict:
    """
    Dependência para validação de autenticação via Firebase ID Token.

    Verifica se o token JWT enviado no header 'Authorization' é válido,
    se não expirou e se o e-mail do usuário já foi verificado no Firebase.

    Args:
        authorization (str): Header de autorização no formato 'Bearer <TOKEN>'.
            obs: O FastAPI converte automaticamente 'Authorization' para 'authorization'.

    Returns:
        dict: O conteúdo do token decodificado (payload), contendo 'uid', 'email', etc.

    Raises:
        HTTPException (401): Caso o header esteja ausente, malformado ou o token seja inválido.
        HTTPException (403): Caso o token seja válido, mas o e-mail não tenha sido verificado.
    """

    if not authorization or not authorization.startswith("Bearer "):
        raise HTTPException(
            status_code=401,
            detail="Token ausente."
        )
    
    token = authorization.split("Bearer ")[1]

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