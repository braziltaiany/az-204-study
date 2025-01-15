# Guia: Criar um Serviço de Aplicativo no Azure Portal

Este guia descreve as etapas para criar e configurar um Serviço de Aplicativo no Azure Portal, útil para estudos e prática do módulo **Desenvolver Aplicativos do Azure** do exame AZ-204.

---

## Passo a Passo

### 1. Acessar o Portal do Azure

- Entre no [Portal do Azure](https://portal.azure.com) com sua conta.

### 2. Criar o Serviço de Aplicativo

1. Clique em **"Criar um recurso"** no menu lateral.
2. Pesquise por **"App Service"** e clique em **"Criar"**.

### 3. Configurações Básicas

- **Assinatura**: Selecione sua assinatura.
- **Grupo de Recursos**: Escolha um existente ou crie um novo.
- **Nome do Serviço de Aplicativo**: Defina um nome exclusivo (ex.: `meu-app.azurewebsites.net`).
- **Publicação**: Escolha:
  - **Código**: Enviar diretamente o código do aplicativo.
  - **Docker Container**: Para contêineres personalizados.
- **Pilha de Tempo de Execução**: Escolha linguagem e versão (ex.: Node.js, Python).
- **Sistema Operacional**: Windows ou Linux.
- **Plano de Serviço do App**:
  - Crie um novo plano ou escolha um existente.
  - Selecione a camada de preço (ex.: Free, Basic, Standard).

### 4. Configurar Monitoramento

- Habilite **Application Insights** para monitoramento.

### 5. Revisar e Criar

1. Clique em **"Revisar e Criar"**.
2. Confirme as configurações e clique em **"Criar"**.

### 6. Publicar o Aplicativo

- Após a criação, clique em **"Ir para o recurso"**.
- Configure a implantação:
  - **Via Git ou GitHub**: Configure integração contínua (CI/CD).
  - **Upload Manual**: Envie os arquivos via FTP ou ZIP.

### 7. Configurar Escalabilidade

1. Acesse **"Escalação automática"**.
2. Defina regras para escalar horizontalmente (mais instâncias) ou verticalmente (camada superior).

---

## Dicas e Recursos Adicionais

- [Documentação Oficial do Azure App Service](https://learn.microsoft.com/azure/app-service/)
- [Tutorial no Learn Microsoft](https://learn.microsoft.com/training/)
