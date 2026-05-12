from fastapi import FastAPI

app = FastAPI()
 
@app.get("/")
def hello_world():
    print("hello world")
    return {
        "status": 200,
        "response": "ola mundo"
    }

