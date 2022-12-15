# Criando cluster Kubernetes local com 4 nodes utilizando o Minikube

## Instalando o Docker:

Utilize o seguinte comando para remover as versões antigas:

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
```

Instale o Docker usando o seguinte comando:

```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

## Instalando o Containerd

Instale o containerd em sua máquina Linux usando o seguinte comando:

```
sudo apt-get update
sudo apt-get install containerd
```

Inicie o containerd usando o seguinte comando:

```
sudo systemctl start containerd
```

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

## Inicialize o minikube usando o driver VirtualBox e o IP 192.168.0.10 com o seguinte comando:

```
minikube start --vm-driver=virtualbox --kubernetes-version=1.19.4 --apiserver-ips=192.168.0.10 --apiserver-name=192.168.0.10 --cpus=4 --memory=4096 --nodes=4
```

Isso iniciará um cluster Kubernetes com quatro nodes, cada um com quatro núcleos de CPU e 4 GB de memória. O primeiro node será o node master, e os outros três nodes serão nodes de trabalho. Você pode verificar se o cluster foi criado com sucesso usando o seguinte comando:

```
kubectl get nodes
```
