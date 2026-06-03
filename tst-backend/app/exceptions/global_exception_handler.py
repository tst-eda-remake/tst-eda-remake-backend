from fastapi import FastAPI, Request, status
from fastapi.responses import JSONResponse
from app.exceptions.question_exceptions import QuestionNotFoundException
from app.exceptions.user_exceptions import UserNotFoundException
from app.main import app

@app.exception_handler(QuestionNotFoundException)
async def question_not_found_handler(request: Request, exc: QuestionNotFoundException):

    return JSONResponse(
        status_code=status.HTTP_404_NOT_FOUND,
        content={
            "title": "Invalid Request",
            "status": status.HTTP_404_NOT_FOUND,
            "detail": exc.message,
            "instance": request.url.path
        }
    )

@app.exception_handler(UserNotFoundException)
async def user_not_found_handler(request: Request, exc: UserNotFoundException):
    return JSONResponse(
        status_code=status.HTTP_404_NOT_FOUND,
        content={
            "title": "Invalid Request",
            "status": status.HTTP_404_NOT_FOUND,
            "detail": exc.message,
            "instance": request.url.path
        }
    )
