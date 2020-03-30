# rails-ruby2_2-mysql-docker
Repositorio com arquivos para subir aplicação Rails no docker

## Testado
Estas configurações foram testadas e usadas com Ruby 2.2, Rails 3.2 e Mysql 5.7

## Instalação
* Clone este respositorio na raíz do projeto Rails
* Edite o arquivo `docker-compose.yml` conforme o nome da sua aplicação
* Crie o Genfile.lock vazio `$ touch Genfile.lock`

## Start
Rode o comando para compilar e subir os containers.
```
$ docker-compose up -d
```

## Acesse
O projeto deve rodar no endereço `http://localhost`. 

Não é necessário adicionar a porta :3000, pois o container está configurado para direrionar a porta 80 do navegador para a porta 3000 do container
