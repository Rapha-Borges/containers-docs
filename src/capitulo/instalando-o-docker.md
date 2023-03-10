# Instalando o Docker

Abra o terminal e atualize o gerenciador de pacotes:

```
sudo apt update
```

Adicione a chave GPG do repositório do Docker:

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Adicione o repositório do Docker às fontes do APT:

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

Atualize o gerenciador de pacotes novamente:

```
sudo apt update
```

Instale o Docker CE:

```
sudo apt install docker-ce
```

Verifique se o Docker foi instalado corretamente executando o comando:

```
docker --version
```

Com isso, o Docker estará instalado e pronto para ser utilizado. É importante lembrar de adicionar o usuário atual ao grupo docker para poder executar comandos do Docker sem utilizar o sudo. Isso pode ser feito com o comando:

```
sudo usermod -aG docker $USER
```

# Instalando Docker Compose

## Ubuntu:

Para instalar o Docker Compose atualize o gerenciador de pacotes e rode o comando de instalação:

```
sudo apt-get update
sudo apt-get install docker-compose-plugin
```

Verifique a instalação:

```
docker compose version
```
