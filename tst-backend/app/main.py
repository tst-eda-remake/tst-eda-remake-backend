from fastapi import FastAPI, Depends
# from api import auth_router

from core.security import verify_token

app = FastAPI()

# adicionando as rotas do diretorio api
# app.include_router(auth_router.router)

@app.get("/")
def hello_world():
    print("hello world")
    return {
        "status": 200,
        "response": "ola mundo"
    }
