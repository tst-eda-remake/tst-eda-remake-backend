from pydantic import BaseModel, ConfigDict

class TestResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)
    
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