class QuestionNotFoundException(Exception):
    def __init__(self, identifier: int, search_field: str = "id"):
        self.identifier = identifier
        self.search_field = search_field
        self.message = f"Questão não encontrada com o {search_field}: '{identifier}'"

        super().__init__(self.message)
