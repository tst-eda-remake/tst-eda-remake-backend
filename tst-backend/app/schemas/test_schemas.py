from pydantic import BaseModel

class TestResponse(BaseModel):
    id: int
    input: str
    output: str
    is_public: bool

class TestCreate(BaseModel):
    input: str
    output: str
    is_public: bool
    question_id: int

class TestUpdate(BaseModel):
    input: str
    output: str
    is_public: bool