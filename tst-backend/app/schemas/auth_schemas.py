from pydantic import BaseModel, EmailStr, Field
from typing import List

class UserSignupRequest(BaseModel):
    first_name: str
    last_name: str 
    initial_semester: str
    course_semester: None | str

class TokenProviderData(BaseModel):
    """
    Classe para tipar as informações que deseja-se
    utilizar ao decodificar o token do firebase.
    """
    uid: str = Field(alias="sub")
    email: EmailStr
    role: str = Field(default="")