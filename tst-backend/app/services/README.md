# Services (Business Logic) 🧠

O diretório `services` isola a lógica de negócio da aplicação. É aqui que os dados são processados, transformados e as regras do sistema são aplicadas.

### Responsabilidades:
*   **Lógica de Negócio**: Execução de cálculos, validações complexas e regras específicas.
*   **Abstração**: Impedir que as rotas (API) conheçam detalhes internos da implementação.
*   **Integrações**: Chamadas a APIs externas, sistemas de arquivos ou processamentos assíncronos.
*   **Modularidade**: Permite que a mesma lógica seja reutilizada por diferentes endpoints ou tarefas agendadas.