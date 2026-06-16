# Usa uma imagem oficial do Python leve
FROM python:3.11-slim

# Instala o 'uv' de dentro do container usando o instalador oficial da Astral
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Define a pasta de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de configuração primeiro (otimiza o cache do Docker)
COPY pyproject.toml ./

# O uv sincroniza e instala as dependências listadas no pyproject.toml
RUN uv pip install --system -r pyproject.toml

# Copia o restante do código do projeto para dentro do container
COPY . .

# Expõe a porta que o FastAPI vai rodar
EXPOSE 8000

# Comando para iniciar o servidor usando o uv run
CMD ["uv", "run", "fastapi", "dev", "--host", "0.0.0.0", "--port", "8000"]