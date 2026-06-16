FROM python:3.11-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Silencia o aviso de links do uv (já que em containers usamos cópia)
ENV UV_LINK_MODE=copy
# Garante que o Python encontre o pacote 'app' na raiz
ENV PYTHONPATH=/app

WORKDIR /app

# Copia as definições de dependências primeiro
COPY pyproject.toml uv.lock ./

# Instala as dependências de forma otimizada
RUN uv sync --frozen --no-install-project

# Copia o resto do código do projeto
COPY . .

EXPOSE 8000

# CORREÇÃO: Alinhado com o ponto de entrada correto (app/main.py)
CMD ["uv", "run", "fastapi", "dev", "app/main.py", "--host", "0.0.0.0", "--port", "8000"]