from typing import Optional

from sqlalchemy import delete
from sqlalchemy.exc import IntegrityError
from sqlalchemy.orm import Session

from app.models.config.database_config import session_local
from app.models.topic_model import Topic

class TopicRepository:

    def __init__(self, db: Optional[Session] = None):
        self.db = db if db is not None else session_local()

    def find_all(self) -> list[Topic]:
        return self.db.query(
            Topic
        ).all()

    def find_by_id(self, id: int) -> Optional[Topic]:
        return self.db.query(
            Topic
        ).filter(Topic.id == id).first()

    def find_by_name(self, name: str) -> list[Topic]:
        return self.db.query(
            Topic
        ).filter(Topic.name.ilike(f"%{name}%")).all()

    def save(self, topic: Topic):
        try:
            self.db.add(topic)

            self.db.commit()
            # self.db.refresh(topic) --> garantir que o id seja preenchido
            return topic
        except IntegrityError:
            self.db.rollback()
            return None

    def save_changes(self):
        try:
            self.db.commit()
            return True
        except:
            self.db.rollback()
            return False

    def delete(self, id: int):
        try:
            lines = self.db.query(Topic).filter(Topic.id == id).delete(
                    synchronize_session="evaluate"
            )

            self.db.commit()

            return lines > 0
        except Exception:
            self.db.rollback()
            return False
