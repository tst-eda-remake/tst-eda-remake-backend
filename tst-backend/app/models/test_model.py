from unicodedata import category

from sqlalchemy import String, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column, relationship
from .config.database_config import Base

from question_model import Question

class Test(Base):
    __tablename__ = "tests"

    id: Mapped[int] = mapped_column(
        primary_key=True,
        index=True
    )

    input: Mapped[str] = mapped_column(
        String(256),
        nullable=False 
    )

    ouput: Mapped[str] = mapped_column(
        String(256),
        nullable=False 
    )

    is_public: Mapped[bool] = mapped_column(
        nullable=False
    )

    question_id: Mapped[int] = mapped_column(
        ForeignKey(f"{Question.__tablename__}.id")
    )

    # isso indica que é mapeado para apenas um Obejeto Question (1 (Question) -> N (tests))
    question: Mapped["Question"] = relationship(
        back_populates="test_cases" # esse parametro relaciona com o nome do atributo no model Question
    )