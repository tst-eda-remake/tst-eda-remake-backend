from sqlalchemy import String, CheckConstraint
from sqlalchemy.orm import Mapped, mapped_column
from schemas.auth_schemas import UserSignupRequest
from .config.database_config import Base

class User(Base):
    __tablename__ = "users"

    id: Mapped[str] = mapped_column(
        String(28), # tamanho maximo da String
        primary_key=True, 
        index=True  # Adiciona um índice para buscas ultra rápidas
    )

    email: Mapped[str] = mapped_column(
        String(256),
        unique=True,
        nullable=False,
        index=True
    )

    first_name: Mapped[str] = mapped_column(
        String(50),
        nullable=False
    )

    last_name: Mapped[str] = mapped_column(
        String(50),
        nullable=False
    )

    initial_semester: Mapped[str] = mapped_column(
        String(6),
        nullable=False
    )

    is_taking_curse: Mapped[bool] = mapped_column(
        nullable=False
    )

    role: Mapped[str] = mapped_column(
        String(10),
        nullable=False
    )

    __table_args__ = (
        CheckConstraint('char_length(id) = 28', name='check_firebase_uid_length'),
        CheckConstraint('char_length(initial_semester) = 6', name='check_semester_format')
    )

    def __init__(self, uid: str, userSingup: UserSignupRequest):
        self.id = uid
        self.email = userSingup.email
        self.first_name = userSingup.first_name
        self.last_name = userSingup.last_name
        self.initial_semester = userSingup.initial_semester
        self.is_taking_curse = userSingup.is_taking_course
        self.role = userSingup.role
