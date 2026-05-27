from fastapi import FastAPI, Depends
from app.api import auth_router
from app.api import user_router 

app = FastAPI()

# adicionando as rotas do diretorio api
app.include_router(auth_router.router)
app.include_router(user_router.router)

@app.get("/")
def hello_world():
    print("hello world")
    return {
        "status": 200,
        "response": "ola mundo"
    }
