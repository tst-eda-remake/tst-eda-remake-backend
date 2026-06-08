from enum import Enum

class QuestionDifficulty(str, Enum):
    FACIL = "Fácil"
    MEDIA = "Média"
    DIFICIL = "Difícil"
    INDETERMINADA = "Indeterminada"
