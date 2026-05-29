from pydantic import BaseModel, ConfigDict

class UserResponse(BaseModel):
    first_name: str
    last_name: str
    initial_semester: str
    course_semester: None | str

    # Diz ao Pydantic para aceitar objetos ORM (como o do SQLAlchemy)
    model_config = ConfigDict(from_attributes=True)

