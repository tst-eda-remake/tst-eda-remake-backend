class UserNotFoundException(Exception):
    def __init__(self, identifier: str, search_field: str = "uid"):
        self.identifier = identifier
        self.search_field = search_field
        # Mensagem clara que será repassada para a classe base do Python
        self.message = f"Usuário não encontrado com o {search_field}: '{identifier}'."
        super().__init__(self.message)