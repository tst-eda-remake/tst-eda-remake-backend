from typing import Optional, final

from sqlalchemy import delete
from sqlalchemy.exc import IntegrityError

from app.models.config.database_config import session_local
from sqlalchemy.orm import Session
from app.models.user_model import User

class UserRepository:
    
    def __init__(self, db: Optional[Session] = None):
        self.db: Session = db if db is not None else session_local()

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
        finally:
            self.db.close()
            
    def save_changes(self):
        try:
            self.db.commit()
            return True
        except Exception:
            self.db.rollback()
            return False
        finally:
            self.db.close()
        
    def delete_user(self, uid: str):
        try:
            lines = self.db.query(User).filter(User.id == uid).delete(
                synchronize_session="evaluate"
            )

            self.db.commit()

            return lines > 0
        except Exception:
            self.db.rollback()
            return False
        finally:
            self.db.close()



         
        