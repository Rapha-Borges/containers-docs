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
