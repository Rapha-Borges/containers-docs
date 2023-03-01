# Criando cluster Kubernetes com Kind

## Instalar o Kind

#### Para o correto funcionamento do Kind você precisa ter o Docker e o Kubectl instalado.

#### [Instalando o Docker](https://github.com/Rapha-Borges/containers-docs/blob/main/src/capitulo/instalando-o-docker.md)

#### [Instalando o Kubectl](https://github.com/Rapha-Borges/containers-docs/blob/main/src/capitulo/instalando-o-kubectl.md)

#### Linux

Para instalar o Kind no Linux execute os seguintes comandos:

```
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.17.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```

#### macOS

Para instalar o Kind no macOS execute o seguinte comando:

```
brew install kind
```

#### Windows

Para instalar o Kind no Windows execute os seguintes comandos no PowerShell:

```
curl.exe -Lo kind-windows-amd64.exe https://kind.sigs.k8s.io/dl/v0.17.0/kind-windows-amd64
Move-Item .\kind-windows-amd64.exe c:\some-dir-in-your-PATH\kind.exe
```

Para verificar se o Kind foi instalado corretamente execute o comando:

```
kind version
```

Se a instalação foi bem-sucedida, o comando exibirá a versão do Kind instalada.

### Auto completion

#### Bash

```
sudo echo "source <(kind completion bash)" >> ~/.bashrc
source ~/.bashrc
```

#### Zsh

```
sudo echo "source <(kind completion zsh)" >> ~/.zshrc
source ~/.zshrc
```

## Criar o cluster

Para criar o cluster simples com 1 node execute o comando:

```
kind create cluster --name <nome do cluster>
```

Para criar um Cluster com 6 nodes crie um arquivo YAML com o seguinte comando:

```
nano kind-cluster.yaml
```

Cole o texto:

```
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
- role: control-plane
- role: control-plane
- role: worker
- role: worker
- role: worker
```

Pressione ```Ctrl + X``` então ```y``` para salvar e ```Enter``` para fechar

Crei o cluster com o comando:

```
kind create cluster --name <nome do cluster> --config kind-cluster.yaml
```

#### Alternar entre os clusters

Para listar os clusters execute esse comando:

```
kubectl config get-contexts
```

Para mudar o cluster:

```
kubectl config use-contexts <nome do cluster>
```

Para deletar o cluster:

```
kind delete cluster --name <nome do cluster>
```

Para deletar todos os clusters:

```
kind delete clusters --all
```

## Para seguir com configurações avançadas utilizando o Kind você pode acessar esse arquivo:

https://github.com/Rapha-Borges/containers-docs/blob/main/src/capitulo/avancando-com-kind.md
