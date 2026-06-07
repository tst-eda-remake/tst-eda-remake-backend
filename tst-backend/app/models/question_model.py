from app.models.config.database_config import Base
from sqlalchemy import String, Enum
from sqlalchemy.orm import Mapped, mapped_column, relationship
from app.schemas.question_schema import QuestionCreate, QuestionUpdate
from app.enums.question_difficulty import QuestionDifficulty

class Question(Base):
    __tablename__ = "questions"

    id: Mapped[int] = mapped_column(
        primary_key=True,
        index=True, 
        autoincrement=True
    )

    difficulty: Mapped[str] = mapped_column(
        Enum(QuestionDifficulty),
        nullable=False
    )

    title: Mapped[str] = mapped_column(
        String(30),
        unique=True,
        nullable=False,
        index=True
    )

    description: Mapped[str] = mapped_column(
        String(1024),
        nullable=False
    )

    restriction: Mapped[str | None] = mapped_column(
        String(512),
    )

    input_format: Mapped[str] = mapped_column(
        String(512),
        nullable=False
    )

    output_format: Mapped[str] = mapped_column(
        String(512),
        nullable=False
    )

    resolution_path: Mapped[str] = mapped_column(
        String(256),
        nullable=False
    )
    
    test_cases: Mapped[list["Test"]] = relationship(
        back_populates="question",
        cascade="all, delete-orphan"
    )

    topics = relationship(
        "Topic",
        secondary="question_topics",
        back_populates="questions"
    )
    
    def __init__(self, question_create: QuestionCreate):
        self.title = question_create.title
        self.difficulty = question_create.difficulty
        self.description = question_create.description
        self.restriction = question_create.restriction
        self.input_format = question_create.input_format
        self.output_format = question_create.output_format
        self.resolution_path = question_create.resolution_path

    def update(self, question_update: QuestionUpdate):
        for field, value in question_update.model_dump(exclude_unset=True).items():
            setattr(self, field, value)
