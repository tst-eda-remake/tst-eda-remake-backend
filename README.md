# tst-eda-remake-backend

Esse é o Backend do remake do app tst-eda utilizado na cadeira: 
Estrutura de Dados e Algoritmos no terceiro período na UFCG.

## Subindo a Aplicação

1. **Instalar o Docker:** Caso não tenha instalado, siga o [guia oficial de instalação para Ubuntu](https://docs.docker.com/engine/install/ubuntu/).
2. **Configuração do Firebase:** Adicione o seu arquivo `.json` de autenticação no caminho:
   `tst-backend/app/config/firebase-auth.json`
3. **Variáveis de Ambiente:** Defina os valores corretos das credenciais do Banco de Dados no seu arquivo `.env`, utilizando o `.env.example` como referência.
4. **Inicialização:** Com tudo configurado, execute o comando na pasta `tst-backend`:

```bash
docker compose up
```