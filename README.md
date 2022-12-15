# Criando cluster Kubernetes local com 4 nodes utilizando o Minikube

## Instalando o Docker:

https://github.com/Rapha-Borges/Cluster-Kubernetes/blob/ceb6dc18f9cb5f52519f7449b7b3c9857a096fd3/Instalar%20Docker.md

## Instalando o Minikube

Instale o minikube na sua máquina Linux usando o seguinte comando:

```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
```

Adicione o minikube ao seu PATH para que você possa executar o minikube a partir de qualquer local em sua máquina Linux usando o seguinte comando:

```
sudo install minikube /usr/local/bin
```

## Instalando o Kubectl

Instale o kubectl na sua máquina Linux usando o seguinte comando:

```
sudo apt update
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
```

Dê permissões de execução para o arquivo:

```
chmod +x ./kubectl
```

Mova o arquivo para o diretório de binários do sistema:

```
sudo mv ./kubectl /usr/local/bin/kubectl
```

Verifique se o kubectl foi instalado corretamente executando o comando:

```
kubectl version
```

## Instalando o VirtualBox

```
sudo apt install virtualbox
```

## Inicialize o minikube usando o driver VirtualBox e o IP 192.168.0.10 com o seguinte comando:

```
minikube start --vm-driver=virtualbox --kubernetes-version=1.19.4 --apiserver-ips=192.168.0.10 --apiserver-name=192.168.0.10 --cpus=4 --memory=4096 --nodes=4
```

Isso iniciará um cluster Kubernetes com quatro nodes, cada um com quatro núcleos de CPU e 4 GB de memória. O primeiro node será o node master, e os outros três nodes serão nodes de trabalho. Você pode verificar se o cluster foi criado com sucesso usando o seguinte comando:

```
kubectl get nodes
```

Para deletar um cluster minikube, basta executar o seguinte comando:

```
minikube delete
```
