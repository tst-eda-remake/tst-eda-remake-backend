from pydantic import BaseModel, ConfigDict

from app.enums.question_difficulty import QuestionDifficulty

class QuestionCreate(BaseModel):
    title: str
    difficulty: QuestionDifficulty
    description: str
    restriction: str | None
    input_format: str
    output_format: str
    resolution_path: str

class QuestionUpdate(BaseModel):
    title: str | None = None
    difficulty: QuestionDifficulty | None = None
    description: str | None = None
    restriction: str | None = None
    input_format: str | None = None
    output_format: str | None = None
    resolution_path: str | None = None

class QuestionResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    difficulty: QuestionDifficulty
    title: str
    description: str
    restriction: str | None
    input_format: str
    output_format: str
    resolution_path: str
