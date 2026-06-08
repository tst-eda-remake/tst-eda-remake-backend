class TopicNotFoundException(Exception):
    def __init__(self, identifier: int, search_field: str = "id"):
        self.identifier = identifier
        self.search_field = search_field
        self.message = f"Tópico não encontrado com o {search_field}: '{identifier}'"

        super().__init__(self.message)

    def __init__(self, identifier: list[int], search_field: str = "id"):
        self.identifier = identifier
        self.search_field = search_field
        self.message = f"Tópico(s) de {search_field} {identifier} não encontrado(s)"

        super().__init__(self.message)
