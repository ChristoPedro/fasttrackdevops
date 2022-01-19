# OCI Fast Track DevOps

- [Resource Manager](#Resource-Manager)
- [Container Registry (OCIR)](#container-registry-ocir)
- [Functions](#functions)
- API Gateway
- Kubernetes 

## Resource Manager

Serviço que permite a automatização do provisionamento de infraestrutura no OCI através de Terraform.

Pode ser utilizando tanto para importar e criar uma infraestrutura nova de arquivos Terraform, quanto para exportar, como arquivos Terraform, uma estrutura já configurada em um determinado compartimento.

Através dele é possível realizar os jobs do Terraform: **Plan**, **Apply**, **Destroy** e **Import State**.

Documentação: https://docs.oracle.com/en-us/iaas/Content/ResourceManager/home.htm

### Demonstração

Importar as configurações de Terraform para o resource manager e executar os jobs de Plan e Apply.

1. Download

Faça o download do aquivo .zip [aqui](https://github.com/ChristoPedro/fasttrackdevops/raw/main/terraform/terraform.zip).

2. Navegue no menu do OCI Developer Services -> Resource Manager -> Stacks

3. Crie uma nova Stack, selecionando My Configuration e selecione o arquivo baixado anteriormente.

## Container Registry (OCIR)

Baseado no Open Container Iniciative é o repositório que pode ser utilizado para armazenar imagens de container (como Docker images) e criar repositórios tanto **públicos** quando **privados**.

Ele é integrado com o IAM do OCI, e os usuário se autenticam através do nome de usuário da conta do OCI e o token de autenticação.

No repositório também pode ser ativada a função de escanear vulnerabilidades das imagens armazenadas. Essa função retornas os uma lista com os códigos CVE, junto com sua descrição e nível de risco.

Documentação: https://docs.oracle.com/en-us/iaas/Content/Registry/home.htm

## Functions

Serviço gerenciado de função como serviço no modelo serveless. Baseado no [Fn Project](https://fnproject.io/), que cria funções baseadas em containers.

As linguagens suportadas no OCI são:

- Java
- Go
- NodeJs
- Python
- Ruby

Na comunidade encontramos também suporte para dotNET.

As funções pode ser invocadas através de:

- fn-cli (Linha de comando do Fn Project)
- Rest API
- oci-cli
- SDK do OCI

Documentação: https://docs.oracle.com/en-us/iaas/Content/Functions/home.htm

### Demonstração

1. Navegar até a aplicação que foi criada através do Resource Manager: Developer Services -> Functions -> Application

2. Entre na aplicação criada pelo Resource Manager e siga o **Getting Started**, para criar uma função na aplicação, utilizando o cloud shell.

