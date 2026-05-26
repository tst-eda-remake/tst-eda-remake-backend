from pydantic import BaseModel, EmailStr, Field
from typing import List

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


class TokenProviderData(BaseModel):
    """
    Classe para tipar as informações que deseja-se
    utilizar ao decodificar o token do firebase.
    """
    uid: str = Field(alias="sub")
    email: EmailStr
    roles: List[str] = Field(default=[])