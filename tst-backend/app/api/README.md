# API Layer (Interface & Routing) 🌐

Este diretório gerencia a camada de transporte e comunicação da aplicação. Ele funciona como o roteador principal, definindo os caminhos (endpoints) acessíveis externamente.

### Responsabilidades:
*   **Roteamento**: Definição de caminhos URL e métodos HTTP (GET, POST, etc.).
*   **Versionamento**: Organização de versões da API (ex: v1, v2) para garantir compatibilidade.
*   **Dependências**: Implementação de `dependencies` do FastAPI para controle de acesso e recursos.
*   **Orquestração**: Recebimento de requisições e delegação da execução para a camada de serviços.