from dotenv import load_dotenv
from sqlalchemy import create_engine
from sqlalchemy.orm import DeclarativeBase, sessionmaker
from app.core.settings import settings

# gerenciador de conexão: cuida do login e mantem o canal fisico aberto 
engine = create_engine(
    settings.DATABASE_URL, # type: ignore
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

def init_db():
    from app.models.user_model import User
    from app.models.question_model import Question 
    from app.models.test_model import Test

    print("🔨 Criando tabelas no banco de dados...")
    Base.metadata.create_all(bind=engine)
    print("✅ Todas as tabelas foram estruturadas com sucesso!")