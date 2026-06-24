from fastapi import FastAPI, Request, status
from fastapi.responses import JSONResponse
from app.exceptions.question_exceptions import QuestionNotFoundException
from app.exceptions.user_exceptions import UserAlredyExistsException, UserNotFoundException
from app.exceptions.topic_exceptions import TopicNotFoundException
from app.exceptions.test_exception import TestNotFoundException

def register_exception_handlers(app: FastAPI):

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
    
    @app.exception_handler(UserAlredyExistsException)
    async def user_alredy_exists_handler(request: Request, exc: UserAlredyExistsException):
        return JSONResponse(
            status_code=status.HTTP_409_CONFLICT,
            content={
                "title": "Invalid Request",
                "status": status.HTTP_409_CONFLICT,
                "detail": exc.message,
                "instance": request.url.path
            }
        )

    @app.exception_handler(TopicNotFoundException)
    async def topic_not_found_handler(request: Request, exc: TopicNotFoundException):
        return JSONResponse(
            status_code=status.HTTP_404_NOT_FOUND,
            content={
                "title": "Invalid Request",
                "status": status.HTTP_404_NOT_FOUND,
                "detail": exc.message,
                "instance": request.url.path
            }
        )
    
    @app.exception_handler(TestNotFoundException)
    async def test_not_found_handler(request: Request, exc: TestNotFoundException):
        return JSONResponse(
            status_code=status.HTTP_404_NOT_FOUND,
            content={
                "title": "Invalid Request",
                "status": status.HTTP_404_NOT_FOUND,
                "detail": exc.message,
                "instance": request.url.path
            }
        )
