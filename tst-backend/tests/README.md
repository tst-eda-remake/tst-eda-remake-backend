# Tests (Quality Assurance) 🧪

Este diretório é dedicado à garantia de qualidade e estabilidade da aplicação. Ele contém a suíte de testes automatizados que valida se o comportamento do sistema permanece correto após alterações no código.

### Responsabilidades:
*   **Testes de Unidade**: Validação de funções, utilitários e lógica isolada nos serviços.
*   **Testes de Integração**: Verificação da comunicação entre diferentes componentes (ex: API acessando o Banco de Dados).
*   **Testes de Endpoint**: Simulação de requisições HTTP para validar o ciclo completo (Request -> Rota -> Serviço -> Response).
*   **Mocks e Fixtures**: Configuração de estados controlados e simuladores para dependências externas.

### Ferramentas Recomendadas:
*   **Pytest**: Framework principal para execução dos testes.
*   **HTTPX / TestClient**: Para simular chamadas assíncronas à API.
*   **Coverage**: Para medir a porcentagem de código coberta por testes.
