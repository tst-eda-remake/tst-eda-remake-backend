from app.schemas.auth_schemas import TokenProviderData, UserSignupRequest
from app.schemas.user_schema import UserResponse
from app.exceptions.user_exceptions import UserNotFoundException
from app.models.user_model import User
from app.models.repositories.user_repository import UserRepository

user_repository = UserRepository()

def get_user_information(uid: str):
    user = user_repository.get_user_by_uid(uid)

    if not user:
        raise UserNotFoundException(identifier=uid)
    
    return UserResponse.model_validate(user)

def singup_user(token_data: TokenProviderData, user_info: UserSignupRequest):
    user = User(user_info, token_data=token_data)

    if not user_repository.insert_user(user):
        return False # chage for an exception
    
    return UserResponse.model_validate(user)

def update_user(uid: str, user_info: UserSignupRequest):
    """
    Função que realiza a sobrescrição de informações que o User possa alterar.
    """

    user = user_repository.get_user_by_uid(uid)

    if not user: 
        raise UserNotFoundException(identifier=uid)
    
    user.set_personal_information(user_info)

    if not user_repository.save_changes(user):
        return None # Lançar uma excessão posteriormente

    return UserResponse.model_validate(user)

def delete_user_by_id(uid: str):
    if not user_repository.delete_user(uid):
        raise UserNotFoundException(identifier=uid)
        

    