# Projeto em Cloud Application Programing com uso do Integration suite

Fluxograma da aplicação:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/ff44fabb-2c5e-46fd-9c1b-d4b35efe47df" />

1 - Precisa ser provisionado 3 aplicações:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/87d23744-7cbf-4397-a0fa-1ffa7e7f33c6" />

Integration suite:

1º artefato para inserir veiculos:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/0eb31ca5-1e37-45c2-acab-87e879957720" />

Na conexão HTTPS, deixar o address como /inserirVeiculo:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/a7e46139-b9cb-41d6-8f0a-42a12c9052e9" />

Adicinoar um conversor de XML para Json:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/47fcaef3-a826-4d49-9991-d97833d3840f" />

Adicionar um content modifier para definir no header o Content-Type como application/json

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/3f804d9d-431e-45fa-97c9-098ef36156f6" />

E definir na exchange property para capturar o body:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/446ec264-a728-4252-9862-2c87e44c260a" />

No message body setar uma expression dessa maneira:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/320d5189-1312-41b5-85af-0fc0ea8da665" />

Adicionar um request reply:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/91821028-69a6-4b8f-9c82-6242ff16ff7c" />

Inserir uma conexão http:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/8fed9f36-650d-4c8e-aee7-c1bfd5d41647" />

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/7005ce2e-07d5-414d-8dd0-ab26a4af35fb" />

Externalizar essa URL: https://48c15575trial-dev-myapp-srv.cfapps.ap21.hana.ondemand.com/odata/v4/Consumo/Cnhs

2º artefato para realizar o calculo do consumo:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/de51d801-4e8d-4e30-94a5-7e74e68cc9f5" />

Na conexão https:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/1c6905a9-27c3-49c5-8dc5-cfac042d20d3" />

Adicionar um content modifier:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/fd2ae2c9-842a-4a42-9e43-407b3fb8b262" />

Setar o message body:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/d717e684-4e8b-420e-a4bd-707f810fcfa2" />

Adicionar um request reply:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/9c84d27a-e53f-47bc-bbc6-c569191f938d" />

Adicionar uma conexão http:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/bec51f36-0d2e-4036-bfce-934578c0cceb" />

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/872eeca1-0572-4cc2-aee1-309cf05c3f8a" />

Externalizar essa URL: https://48c15575trial-dev-myapp-srv.cfapps.ap21.hana.ondemand.com/odata/v4/calc/CalculoConsumo

Hana database:

Precisa ser configurado dessa maneira:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/c2fbc6f4-d827-4c3b-91aa-a8b6cb14c79b" />

Clicar em manage configuration:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/3b618269-c478-4d69-960c-345262ba6545" />

Tem que adicionar o id do cloud foundry no intance mapping:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/c9e92654-2592-409a-b7dc-e0241ca67d1d" />

Precisa dessas instancias também:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/22831706-bd62-4e5e-bf28-0585342b30a6" />

O usuário e senha para conseguir conectar no integration suite é no SAP Process Integration Runtime -> Key:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/a3a07e36-dfda-420f-8dc7-231dabde2d87" />

No BAS, após clonar o repositóriovai ter esses arquivos:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/6ca7409a-97c5-4554-8f9c-fc46cdfe4e78" />

Os arquivos principais são:

service.cds, onde são expostos os serviçoes CAP:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/6fbffb95-1b90-4081-8bcd-80fcd2a9b78c" />

service.js, onde contém a lógica dos serviços:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/2bb5308b-f621-4d61-966e-88c470fe191c" />

Importante esses dois arquivos estarem dentro da pasta srv e terem o mesmo nome

schema.cds:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/4a062609-dbf5-4320-a5b9-1a64bd8e8de6" />

package.json:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/b943e0f6-0336-4e88-8fc3-6e0fa41f0dad" />

Para conectar no cloud foundry precisa digitar o comando: cf login

Vai solicitar o e-mail e senha que você usou para acessar o BTP

Vai perguntar se quer colocar a org name, para pegar o id é aqui:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/ef05a4da-1382-43a6-902a-44b06ccc8b5f" />

Após isso, digitar cds deploy:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/13969936-4c15-4322-a187-fbfa8f222499" />

Depois cds up:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/1b574fbf-102a-4761-a3db-a24210be0c03" />

A URL que você vai adicionar no postman para conectar no serviço cap vai aparecer nesse retorno.

Para realizar o teste via postman do InserirVeiculo:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/04fa2820-23e5-42ec-8786-24e68bad35de" />

No Integration Suite:

<img width="512" height="277" alt="image" src="https://github.com/user-attachments/assets/394ab856-2f32-4f15-b9e1-4aa66e58584b" />

Para relizar o teste via postman do CalculoConsumo:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/7ccdf1b2-8457-429c-82a6-1ebd0e15ad56" />

No Integration Suite:

<img width="562" height="520" alt="image" src="https://github.com/user-attachments/assets/5c9ec46c-d4f7-4ec2-b3e1-e7038c3e544a" />
