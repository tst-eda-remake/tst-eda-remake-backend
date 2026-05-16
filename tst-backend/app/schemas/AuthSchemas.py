from pydantic import BaseModel

class UserSignupRequest(BaseModel):
    email: str
    password: str
    first_name: str
    last_name: str 
    initialPeriod: str
    is_currentChair: bool
    role: str

class SigninResponse(BaseModel):
    first_name: str
    last_name: str
    email: str  
    uid: str
    role: str
