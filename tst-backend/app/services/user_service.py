from schemas.auth_schemas import TokenProviderData
from schemas.user_schema import UserResponse
from exceptions.user_exceptions import UserNotFoundException
from models.repositories.user_repository import UserRepository

user_repository = UserRepository()

def get_user_information(token_info: TokenProviderData):
    user = user_repository.get_user_by_uid(token_info.uid)

    if not user:
        raise UserNotFoundException(identifier=token_info.uid)
    
    return UserResponse.model_validate(user)