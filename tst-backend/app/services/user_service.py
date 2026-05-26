from schemas.auth_schemas import TokenProviderData, UserSignupRequest
from schemas.user_schema import UserResponse
from exceptions.user_exceptions import UserNotFoundException
from models.user_model import User
from models.repositories.user_repository import UserRepository

user_repository = UserRepository()

def get_user_information(token_data: TokenProviderData):
    user = user_repository.get_user_by_uid(token_data.uid)

    if not user:
        raise UserNotFoundException(identifier=token_data.uid)
    
    return UserResponse.model_validate(user)

def singup_user(token_data: TokenProviderData, user_info: UserSignupRequest):
    user = User(user_info, token_data=token_data)

    if not user_repository.insert_user(user):
        return False # chage for an exception
    
    return UserResponse.model_validate(user)