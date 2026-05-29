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

## Como testar os endpoints com um token com emulador do firebase

Defina esse valor como variável de ambiente:

```python
os.environ["FIREBASE_AUTH_EMULATOR_HOST"] = "localhost:9099" 
```

### Configurando Firebase Auth Emulator

#### 1. Instale o Firebase CLI

```bash
npm install -g firebase-tools
```

---

#### 2. Faça login no Firebase

```bash
firebase login
```

Isso abrirá o navegador para autenticação na sua conta Google.

---

#### 3. Inicialize o Firebase no projeto

Dentro da pasta do projeto:

```bash
firebase init
```

Selecione:

* `Emulators`
* `Authentication Emulator`

---

#### 4. Instale o SDK do Firebase no projeto

```bash
npm install firebase
```

Se estiver usando o Admin SDK:

```bash
npm install firebase-admin
```

Desenvolva um script em JavaScript (ou outra linguagem) que gere tokens JWT via emulador.
Agora é possível verificar que a authenticação é efetuada corretamente.

---

#### 5. Configure o arquivo `firebase.json`

```json
{
  "emulators": {
    "auth": {
      "port": 9099
    },
    "ui": {
      "enabled": true,
      "port": 4000
    },
    "singleProjectMode": true
  }
}
```

---

#### 6. Inicie o emulador de autenticação

```bash
firebase emulators:start --only auth
```

---

#### 7. Acesse a interface web do emulador

Após iniciar, a interface estará disponível em:

```txt
http://localhost:4000
```

E o Auth Emulator estará rodando em:

```txt
http://localhost:9099
```

