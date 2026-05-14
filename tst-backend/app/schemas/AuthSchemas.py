from pydantic import BaseModel

class userSingUpRequest(BaseModel):
    email: str
    password: str
    name: str
    initialPeriod: str
    is_currentChair: bool
