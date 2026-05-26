from sqlalchemy import String, CheckConstraint
from sqlalchemy.orm import Mapped, mapped_column
from app.schemas.auth_schemas import UserSignupRequest, TokenProviderData
from app.models.config.database_config import Base

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

    course_semester: Mapped[str| None] = mapped_column(
        String(6)
    )

    role: Mapped[str] = mapped_column(
        String(10),
        nullable=False
    )

    __table_args__ = (
        CheckConstraint('length(id) = 28', name='check_firebase_uid_length'),
        CheckConstraint('length(initial_semester) = 6', name='check_semester_format')
    )

    def __init__(self, user_singup: UserSignupRequest, token_data: TokenProviderData):
        self.id = token_data.uid
        self.email = token_data.email
        self.first_name = user_singup.first_name
        self.last_name = user_singup.last_name
        self.initial_semester = user_singup.initial_semester
        self.course_semester = user_singup.course_semester
        self.role = token_data.role
