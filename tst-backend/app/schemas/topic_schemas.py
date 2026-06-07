from pydantic import BaseModel, ConfigDict

class TopicCreate(BaseModel):
    name: str

class TopicUpdate(BaseModel):
    name: str | None = None

class TopicResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    name: str
