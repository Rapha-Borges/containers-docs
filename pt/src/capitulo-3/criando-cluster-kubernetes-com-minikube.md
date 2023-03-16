# Criando cluster Kubernetes local com 4 nodes utilizando o Minikube

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

## Inicialize o minikube usando o driver VirtualBox:

```
minikube start --vm-driver=virtualbox --cpus=2 --memory=4096 --nodes=4
```

Isso iniciará um cluster Kubernetes com quatro nodes, cada um com dois núcleos de CPU e 4 GB de memória. O primeiro node será o node master, e os outros três nodes serão nodes de trabalho. Você pode verificar se o cluster foi criado com sucesso usando o seguinte comando:

```
kubectl get nodes
```

Para deletar um cluster minikube, basta executar o seguinte comando:

```
minikube delete
```

Verificar o status do cluster:

```
minikube status
```

Criar o deployment do nginx:

```
kubectl create deployment nginx --image=nginx
```

Verificar os pods do deployment:

```
kubectl get pods
```

Criar o serviço do nginx:

```
kubectl expose deployment nginx --port=80 --type=LoadBalancer
```

Verificar os serviços:

```
kubectl get services
```

O comando ```minikube tunnel``` é útil quando se deseja acessar os pods do cluster localmente através de um endereço IP externo. Sem o túnel, é necessário acessar os pods através de um endereço IP interno gerado pelo Minikube, o que pode ser inconveniente em alguns casos. O túnel permite acessar os pods através de um endereço IP externo, o que pode ser mais fácil de usar em alguns casos.

```
minikube tunnel
```
