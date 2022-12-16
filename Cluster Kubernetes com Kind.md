# Instalar o Kind

Para instalar o Kind, você precisará ter o Go e o Docker instalados em seu sistema.

## Go

Primeiro, verifique se você já tem o go instalado. Para isso, execute o comando:

```
go version
```

Se você já tiver o go instalado, o comando exibirá a versão instalada. Se você não tiver o go instalado, será exibida uma mensagem de erro.

Se você ainda não tiver o go instalado, siga as instruções para instalar o go em seu sistema operacional:

### Linux

Para instalar o go no Linux, você pode baixar o pacote de instalação do site oficial do Go e instalá-lo manualmente.

Alternativamente, você também pode usar o gerenciador de pacotes do seu sistema para instalar o go. Por exemplo, no Ubuntu, você pode usar o seguinte comando:

```
sudo apt-get install golang-go
```

### macOS

Para instalar o go no macOS, você pode baixar o pacote de instalação do site oficial do Go e instalá-lo manualmente.

Alternativamente, você também pode usar o Homebrew para instalar o go. Para isso, execute o seguinte comando:

```
brew install go
```

### Windows

Para instalar o Go no Windows, você pode baixar o instalador do site oficial e executá-lo.

Acesse o site do Go em https://golang.org/dl/ e clique no botão "Download Go" para baixar o instalador. Depois de baixar o instalador, execute-o e siga as instruções na tela para completar a instalação.

## Instalando o Docker:

https://github.com/Rapha-Borges/Cluster-Kubernetes/blob/ceb6dc18f9cb5f52519f7449b7b3c9857a096fd3/Instalar%20Docker.md

## Kind

Agora que você tem o go e o git instalados, você pode prosseguir com a instalação do kind.

Para instalar o kind, execute os seguintes comandos:

```
go install sigs.k8s.io/kind@v0.17.0 && kind create cluster
```

Para verificar se o Kind foi instalado corretamente execute o comando:

```
kind version
```

Se a instalação foi bem-sucedida, o comando exibirá a versão do kind instalada.
