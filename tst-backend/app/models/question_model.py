from app.models.config.database_config import Base
from sqlalchemy import String
from sqlalchemy.orm import Mapped, mapped_column, relationship

class Question(Base):
    __tablename__ = "questions"

    id: Mapped[int] = mapped_column(
        primary_key=True,
        index=True
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
    
    # --- guinoronhaf: comentado porque é uma questão a ser implementada posteriormente ---
    # test_cases: Mapped[list["Test"]] = relationship(
    #     back_populates="question",
    #     cascade="all, delete-orphan"
    # )
