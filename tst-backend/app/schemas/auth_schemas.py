from pydantic import BaseModel

class UserSignupRequest(BaseModel):
    email: str
    first_name: str
    last_name: str 
    initial_semester: str
    course_semester: None | str
    role: str

class SigninResponse(BaseModel):
    first_name: str
    last_name: str
    email: str  
    uid: str
    role: str
