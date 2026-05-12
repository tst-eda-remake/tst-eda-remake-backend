# Schemas (Data Validation & Contracts) ✅

Os schemas definem o contrato de comunicação da API. Eles determinam exatamente como os dados devem entrar e sair do sistema.

### Responsabilidades:
*   **Validação**: Garantir a integridade e o tipo dos dados recebidos no corpo da requisição.
*   **Serialização**: Formatar objetos complexos para o formato JSON de saída.
*   **Contratos**: Documentação dos modelos de dados para o Swagger UI.
*   **Isolamento**: Proteção da camada de banco de dados, expondo apenas os campos permitidos ao cliente final.