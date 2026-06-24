from fastapi import FastAPI
from app.api import (
    auth_router, 
    user_router,
    question_router,
    topic_router,
    test_router
)
from contextlib import asynccontextmanager
from app.models.config.database_config import init_db 
from app.core.config_app import config_middleware_cors, include_routers
from app.exceptions.global_exception_handler import register_exception_handlers

@asynccontextmanager
async def lifespan(app: FastAPI):
    # ⚡ Executa exatamente quando o uvicorn sobe o servidor, ANTES de receber requisições
    init_db()
    yield
    # Código aqui dentro roda quando o servidor desliga (se precisar limpar algo)

app = FastAPI(lifespan=lifespan)

register_exception_handlers(app)
config_middleware_cors(app)
include_routers(app)
