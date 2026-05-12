# tst-eda-remake-backend

Esse é o Backend do remake do app tst-eda utilizado na cadeira: 
Estrutura de Dados e Algoritmos no terceiro período na UFCG.

## Instalação e Gerenciamento com uv (Ubunto ou MacOS)

```bash
curl -LsSf [https://astral.sh/uv/install.sh](https://astral.sh/uv/install.sh) | sh # instalação do gerenciador uv
uv --version # verifique a instalação
uv sync # sincronização com as dependencias necessárias
```

## Executando o Projeto

Dento da pasta 'tst-backend-app' basta rodar o seguinte comando

```bash
uv run fastapi dev
```

O serviço será inicializado na porta 8000 -> http://localhost:8000
Para utilizar o Swegger, que é uma UI intuitiva que mostra as apis da aplicação -> http://localhost:8000/docs
