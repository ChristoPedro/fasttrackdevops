# OCI Fast Track DevOps

- [Resource Manager](#Resource-Manager)
- [Container Registry (OCIR)](#Container-Registry-(OCIR))
- Functions
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

Faça o download do aquivo .zip [aqui](https://github.com/ChristoPedro/fasttrackdevops/raw/main/terraform/terraformFastTrack.zip).

2. Navegue no menu do OCI Developer Services -> Resource Manager -> Stacks

3. Crie uma nova Stack, selecionando My Configuration e selecione o arquivo baixado anteriormente.

## Container Registry (OCIR)
