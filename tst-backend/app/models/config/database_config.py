import os
from sqlalchemy import create_engine
from sqlalchemy.orm import DeclarativeBase, sessionmaker

DATABASE_URL = os.getenv("DATABASE_URL") 

if not DATABASE_URL:
    print("url nao informada, ERRO")
    exit()

# gerenciador de conexão: cuida do login e mantem o canal fisico aberto 
engine = create_engine(
    DATABASE_URL, # type: ignore
    connect_args={
        "options": '-c search_path="tst-eda-remake-db"'
    }
)

# session local é uma fabrica de sessões -> criar sessions (add, commit, close).
session_local = sessionmaker(
    autocommit=False, 
    autoflush=False, 
    bind=engine
)

class Base(DeclarativeBase):
    pass