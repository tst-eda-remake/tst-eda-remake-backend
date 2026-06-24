class UserNotFoundException(Exception):
    def __init__(self, identifier: str, search_field: str = "uid"):
        self.identifier = identifier
        self.search_field = search_field
        # Mensagem clara que será repassada para a classe base do Python
        self.message = f"Usuário não encontrado com o uid."
        super().__init__(self.message)

class UserAlredyExistsException(Exception):
    def __init__(self, identifier: str):
        self.identifier = identifier
        
        self.message = f"Usuário ja existe com email: {identifier}"
        super().__init__(self.message)