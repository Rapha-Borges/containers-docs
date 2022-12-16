# Criando cluster Kubernetes local com 4 nodes utilizando o Minikube

## Instalando o Docker:

https://github.com/Rapha-Borges/Cluster-Kubernetes/blob/main/Instalar%20Docker.md

## Instalando o Kubectl

https://github.com/Rapha-Borges/Cluster-Kubernetes/blob/main/Instalar%20o%20Kubectl.md

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

## Instalando o VirtualBox

```
sudo apt install virtualbox
```

## Inicialize o minikube usando o driver VirtualBox e o IP 192.168.0.10 com o seguinte comando:

```
minikube start --vm-driver=virtualbox --cpus=2 --memory=4096 --nodes=4
```

Isso iniciará um cluster Kubernetes com quatro nodes, cada um com quatro núcleos de CPU e 4 GB de memória. O primeiro node será o node master, e os outros três nodes serão nodes de trabalho. Você pode verificar se o cluster foi criado com sucesso usando o seguinte comando:

```
kubectl get nodes
```

Para deletar um cluster minikube, basta executar o seguinte comando:

```
minikube delete
```
