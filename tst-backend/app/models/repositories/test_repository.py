from typing import Optional
from httpx import delete
from psycopg import IntegrityError
from sqlalchemy.orm import Session
from app.exceptions.test_exception_handler import TestNotFoundException
from app.models.config.database_config import session_local
from app.models.test_model import Test

class TestRepository:

    def __init__(self, db: Optional[Session] = None):
        self.db = db if db is not None else session_local()

    def delete(self, test_id: int):
        try:
            lines = self.db.query(Test).filter(Test.id == test_id).delete(
                synchronize_session=False   
            )

            self.db.commit()
            return lines > 0
        except:
            return False

    def save(self, test: Test):
        try:
            self.db.add(test)

            self.db.commit()
            return test
        except IntegrityError:
            self.db.rollback()
            return None # tratar no service
        
    def save_changes(self):
        try:
            self.db.commit()
            return True
        except:
            self.db.rollback()
            return False
    
    def find_by_id(self, id: int):
        return self.db.query(
             Test
            ).filter(Test.id == id).first()
    
    def find_all_test_question(self, id_question: int):
        return self.db.query(
            Test
        ).filter(Test.question_id == id_question).all()
    
    def find_all_public_test_question(self, id_question: int):
        return self.db.query(
            Test
        ).filter(Test.question_id == id_question and Test.is_public).all()
    
    def find_all_private_test_question(self, id_question: int):
        return self.db.query(
            Test
        ).filter(Test.question_id == id_question and Test.is_public == False).all()
    