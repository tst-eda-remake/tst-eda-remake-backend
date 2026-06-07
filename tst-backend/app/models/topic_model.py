from app.models.config.database_config import Base
from sqlalchemy import String, Enum
from sqlalchemy.orm import Mapped, mapped_column

from app.schemas.topic_schemas import TopicCreate, TopicUpdate

class Topic(Base):
    __tablename__ = "topics"

    id: Mapped[int] = mapped_column(
        primary_key=True,
        index=True,
        autoincrement=True
    )

    name: Mapped[str] = mapped_column(
        String(100),
        unique=True,
        nullable=False
    )

    def __init__(self, topic_data: TopicCreate):
        self.name = topic_data.name

    def update(self, topic_update: TopicUpdate):
        for field, value in topic_update.model_dump(exclude_unset=True).items():
            setattr(self, field, value)
