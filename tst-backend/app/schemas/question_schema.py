from pydantic import BaseModel

class QuestionCreate(BaseModel):
    title: str
    description: str
    restriction: str
    input_format: None | str
    output_format: str
    resolution_path: str

class QuestionResponse(BaseModel):
    id: int
    title: str
    description: str
    restriction: str
    input_format: None | str
    output_format: str
    resolution_path: str
