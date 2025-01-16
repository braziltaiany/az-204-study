Acesse o diretório do Lab
Navegue até a pasta onde os arquivos do projeto estão localizados:

```bash
mkdir Labs
cd Labs
mkdir webapp01
cd webapp01
```

Faça login no Azure CLI
Autentique-se na CLI do Azure:

```bash
az login
```

Clone o repositório de exemplo
Faça o clone do repositório HTML de exemplo:

```bash
git clone https://github.com/Azure-Samples/html-docs-hello-world.git
```

Acesse o diretório clonado
Navegue para dentro do diretório que contém os arquivos:

```bash
cd html-docs-hello-world
```

Confirme se o App Existe na Assinatura Atual Verifique os aplicativos disponíveis na assinatura em uso:

```bash
az webapp list --query "[].{name:name, resourceGroup:resourceGroup}" --output table
```

Isso retornará a lista de todos os aplicativos e seus respectivos grupos de recursos. Certifique-se de que o apphtml01 está no grupo de recursos WEB-APP-AZ-204.

Confirme a Assinatura Atual Liste as assinaturas disponíveis:

```bash
az account list --output table
```

Altere para a assinatura correta (se necessário):

```bash
az account set --subscription "Nome_da_Assinatura"
```

Deixe o Nome do App em Branco Se o nome não for essencial, permita que o Azure CLI gere automaticamente um nome exclusivo:

```bash
az webapp up --resource-group WEB-APP-AZ-204 --html
```

Para verificar o nome do plano, você pode usar:

```bash
az appservice plan list --resource-group WEB-APP-AZ-204 --output table
```

Publique a aplicação no Azure
Utilize o comando para fazer o deploy do app no Azure:

```bash
az webapp up --resource-group WEB-APP-AZ-204 --name apphtmlteste --html
```

Próximos Passos
Acesse a URL do aplicativo para verificar se ele foi publicado corretamente:
👉 http://apphtmlteste.azurewebsites.net

Se houver algum erro ou comportamento inesperado, revise a estrutura dos arquivos (certifique-se de que há um index.html na raiz do projeto) e refaça o deploy conforme as instruções acima.
