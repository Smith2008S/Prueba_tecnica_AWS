# Prueba_tecnica_AWS


# GUIA DE DESPLIEGUE ARQUITECTURA DOS INSTANCIAS EC2 Y UNA VPC CON TERRAFORM

_Para el desarrollo de este proyecto se tiene como base el desarrollo de una plantilla de **Terraform**, cuyo objetivo va a ser el despliegue de una arquitectura basica compuesta por **dos instancias EC2** cada una con una aplicación diferente, y estas dos instancias deben estar destro de la misma **VPC**._

## Pre-requisitos 📋

_1. Tener descargada e instalada la **CLI** de AWS._

_2. Tener descargado e instalado **Terraform** en la maquina local._

_3. Tener creada una **Key Pairs** en la misma region de despliegue._


## Despliegue Plantilla Terrafom en AWS: 🚀

_1. Es neceario hacer login en la CLI de AWS, para esto necesita de un **Aceess Key** y por su puesto del **Secret Access Key**, para su usuario de AWS._

_2. Clone el repositorio en el que esta almacenada la plantilla:_

```
git clone https://github.com/Smith2008S/Prueba_tecnica_AWS.git
```

_3. Acceda al directorio de la plantila:_
```
cd Prueba_tecnica_AWS
```
_4. inicialice la plantilla de terraform:_
```
terraform init
```

_5. Genere el plan de despliegue de la plantila:_
```
terraform plan
```

_6. Aplique el plan de despliegue de la plantila:_
```
terraform apply
```

**NOTA:** Este proceso le va a pedir una confirmación para desplegar los recursos, usted debe responder con un **yes**

## Referencias

La documentación en linea del provaider de AWS para terraform se encuentra en el siguiente link:

https://registry.terraform.io/providers/hashicorp/aws/latest


## Autor ✒️

_Jhoiner Smith Rojas._
_jhoinerrojas23@gmail.com_
