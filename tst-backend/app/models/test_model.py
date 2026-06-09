from sqlalchemy import String, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column, relationship
from app.models.config.database_config import Base
from app.models.question_model import Question
from app.schemas.test_schemas import TestCreate, TestUpdate

class Test(Base):
    __tablename__ = "tests"

    id: Mapped[int] = mapped_column(
        primary_key=True,
        index=True,
        autoincrement=True
    )

    input: Mapped[str] = mapped_column(
        String(256),
        nullable=False 
    )

    output: Mapped[str] = mapped_column(
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

    def __init__(self, test_create: TestCreate):
        self.input = test_create.input
        self.output = test_create.output
        self.is_public = test_create.is_public
        self.question_id = test_create.question_id

    def update_test(self, test_info_update: TestUpdate):
        self.input = test_info_update.input
        self.output = test_info_update.output
        self.is_public = test_info_update.is_public