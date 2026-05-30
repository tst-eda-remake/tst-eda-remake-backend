from pydantic import BaseModel

class QuestionCreate(BaseModel):
    title: str
    description: str
    restriction: str
    input_format: None | str
    output_format: str
    resolution_path: str

class QuestionUpdate(BaseModel):
    title: str | None = None
    description: str | None = None
    restriction: str | None = None
    input_format: str | None = None
    output_format: str | None = None
    resolution_path: str | None = None

class QuestionResponse(BaseModel):
    id: int
    title: str
    description: str
    restriction: str
    input_format: None | str
    output_format: str
    resolution_path: str
