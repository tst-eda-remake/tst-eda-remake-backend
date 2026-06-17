from app.exceptions.test_exception import TestNotFoundException
from app.schemas.test_schemas import TestCreate, TestResponse, TestUpdate
from app.models.repositories.test_repository import TestRepository
from app.models.test_model import Test

repository = TestRepository()

def save_test(test_request: TestCreate):
    test_to_save = Test(test_request)
    
    return repository.save(test_to_save)

def get_test_by_id(id_test: int):
    test = repository.find_by_id(id_test)

    if not test:
        raise TestNotFoundException(id_test)
    
    return TestResponse.model_validate(test)

def update_test(test_update: TestUpdate, test_id: int):
    test_to_update = repository.find_by_id(test_id)

    if not test_to_update:
        raise TestNotFoundException(test_id)
    
    test_to_update.update_test(test_update)
    repository.save_changes()

    return TestResponse.model_validate(test_to_update)

def deletes_test(test_id: int):
    if not repository.delete(test_id):
        raise TestNotFoundException(test_id)
    
    