from pydantic import BaseModel

class UserResponse(BaseModel):
    first_name: str
    last_name: str
    initial_semester: str
    course_semester: None | str



