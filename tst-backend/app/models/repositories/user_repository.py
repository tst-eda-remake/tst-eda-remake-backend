from typing import Optional

from sqlalchemy.exc import IntegrityError

from ..config.database_config import session_local
from sqlalchemy.orm import Session
from models.user_model import User

class UserRepository:
    
    def __init__(self):
        self.db: Session = session_local()

    def get_user_by_uid(self, uid: str) -> Optional[User]:
        return self.db.query(
            User
        ).filter(User.id == uid).first()
    
    def insert_user(self, user: User):
        try:
            self.db.add(user)

            self.db.commit()
            return True
        except IntegrityError:
            self.db.rollback()
            return False
         
        