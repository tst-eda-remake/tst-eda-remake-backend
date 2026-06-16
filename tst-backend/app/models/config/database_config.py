from dotenv import load_dotenv
from sqlalchemy import create_engine
from sqlalchemy.orm import DeclarativeBase, sessionmaker
from app.core.settings import settings

# gerenciador de conexão: cuida do login e mantem o canal fisico aberto 
engine = create_engine(
    settings.DATABASE_URL # type: ignore
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
    from app.models.topic_model import Topic
    from app.models.question_topic_model import QuestionTopic

    print("🔨 Criando tabelas no banco de dados...")
    Base.metadata.create_all(bind=engine)
    print("✅ Todas as tabelas foram estruturadas com sucesso!")
