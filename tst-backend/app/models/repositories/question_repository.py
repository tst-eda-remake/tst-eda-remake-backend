from typing import Optional, final

from sqlalchemy import delete
from sqlalchemy.exc import IntegrityError

from app.models.config.database_config import session_local
from sqlalchemy.orm import Session
from app.models.question_model import Question

class QuestionRepository:

    def __init__(self, db: Optional[Session] = None):
        self.db = db if db is not None else session_local()

    def get_by_id(self, id: int) -> Optional[Question]:
        return self.db.query(
            Question
        ).filter(Question.id == id).first()

    def save(self, question: Question):
        try:
            self.db.add(question)

            self.db.commit()
            # self.db.refresh(question) --> garantir que o id seja preenchido
            return question
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
            lines = self.db.query(Question).filter(Question.id == id).delete(
                    synchronize_session="evaluate"
            )

            self.db.commit()

            return lines > 0
        except Exception:
            self.db.rollback()
            return False
