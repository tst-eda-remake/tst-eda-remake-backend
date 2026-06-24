from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

def include_routers(app: FastAPI):
    from app.api.auth_router import router as auth_router
    from app.api.question_router import router as question_router
    from app.api.test_router import router as test_router
    from app.api.topic_router import router as topic_roter
    from app.api.user_router import router as user_router

    app.include_router(auth_router)
    app.include_router(question_router)
    app.include_router(test_router)
    app.include_router(topic_roter)
    app.include_router(user_router)

def config_middleware_cors(app: FastAPI):
    origins = [
        "http://localhost:4200", # Angular padrão
        "http://localhost:3000",      # React / Next.js padrão local
        "http://localhost:5173",      # Vite / Vue.js padrão local
        "https://meufront.com",       # link de produção [definir posteriormente]
        "https://staging.meufront.com"  # link de homologação [definir posteriormente]
    ]

    app.add_middleware(
        CORSMiddleware,
        allow_origins=origins,            
        allow_credentials=True,           
        allow_methods=["*"],           
        allow_headers=["*"]
    )


    