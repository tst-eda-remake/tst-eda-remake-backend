from pydantic import BaseModel, ConfigDict

from app.enums.question_difficulty import QuestionDifficulty
from app.schemas.topic_schemas import TopicResponse
from app.schemas.test_schemas import TestResponse

class QuestionCreate(BaseModel):
    title: str
    difficulty: QuestionDifficulty
    description: str
    restriction: str | None
    input_format: str
    output_format: str
    resolution_path: str
    topics: list[int]

class QuestionUpdate(BaseModel):
    title: str | None = None
    difficulty: QuestionDifficulty | None = None
    description: str | None = None
    restriction: str | None = None
    input_format: str | None = None
    output_format: str | None = None
    # topics: list[int] | None = None

class QuestionResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    difficulty: QuestionDifficulty
    title: str
    description: str
    restriction: str | None
    input_format: str
    output_format: str
    topics: list[TopicResponse]
    tests: list[TestResponse]

    def filter_test_public(self):
        self.tests = [test for test in self.tests if test.is_public]
        return self
