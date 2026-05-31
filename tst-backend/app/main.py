from fastapi import FastAPI, Depends
from app.api import auth_router
from app.api import user_router 
from app.api import question_router
from contextlib import asynccontextmanager
from app.models.config.database_config import init_db 

@asynccontextmanager
async def lifespan(app: FastAPI):
    # ⚡ Executa exatamente quando o uvicorn sobe o servidor, ANTES de receber requisições
    init_db()
    yield
    # Código aqui dentro roda quando o servidor desliga (se precisar limpar algo)

app = FastAPI(lifespan=lifespan)

# adicionando as rotas do diretorio api
app.include_router(auth_router.router)
app.include_router(user_router.router)
app.include_router(question_router.router)

@app.get("/")
def hello_world():
    print("hello world")
    return {
        "status": 200,
        "response": "ola mundo"
    }
