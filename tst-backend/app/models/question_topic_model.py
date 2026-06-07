from app.models.config.database_config import Base
from sqlalchemy import String, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column, relationship

class QuestionTopic(Base):
    __tablename__ = "question_topics"

    question_id: Mapped[int] = mapped_column(
        ForeignKey("questions.id"),
        primary_key=True
    )
    
    topic_id: Mapped[int] = mapped_column(
        ForeignKey("topics.id"),
        primary_key=True
    )
