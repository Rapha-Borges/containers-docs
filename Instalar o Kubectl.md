# Instalando o Kubectl

## Linux
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

## macOS

Faça o download da última versão:

```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"
```

Valide o arquivo de instalaçao:

```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl.sha256"
```
```
echo "$(cat kubectl.sha256)  kubectl" | shasum -a 256 --check
```
```
kubectl: OK
```

Dê permisão de execução para o arquivo

```
chmod +x ./kubectl
```

Movo o arquivo binário para o PATH do sistema:

```
sudo mv ./kubectl /usr/local/bin/kubectl
sudo chown root: /usr/local/bin/kubectl
```

Verifique a isntalação:

```
kubectl version --client
```

Você também pode instalar utilizando o brew:

```
brew install kubectl
```
```
kubectl version --client
```

# Adicionando o alias ```k``` para o comando ```kubectl```:

### Bash

```
echo "alias k=kubectl" >> ~/.bashrc
echo 'complete -o default -F __start_kubectl k' >>~/.bashrc
```

### Zsh

```
echo "alias k=kubectl" >> ~/.zshrc
```

### Caso ao reiniciar ou abrir uma nova aba o alias ```k``` não seja reconhecido, provavelmente é porque você não adicionou o ```kubectl``` ao PATH. Você pode fazer isso da seguinte forma:

### Bash

```
echo 'export PATH=$PATH:/usr/local/bin/kubectl' >> ~/.bashrc
```

### Zsh

```
echo 'export PATH=$PATH:/usr/local/bin/kubectl' >> ~/.zshrc
```

# Habilitando o autocompletar do kubectl:

## Linux

### Bash

Instale o módulo do bash-completion usando o seguinte comando:

```
sudo apt-get install bash-completion
```

Execute os seguintes comandos para habilitar o autocompletar:

```
source <(kubectl completion bash) # configuração de autocomplete no bash do shell atual
echo 'source <(kubectl completion bash)' >> ~/.bashrc # para adicionar o autocomplete permanentemente no seu shell bash
```

Recarregue o arquivo de configuração:

```
source ~/.bashrc
```

### Zsh

```
source <(kubectl completion zsh) # configuração para usar autocomplete no terminal zsh no shell atual
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc # adicionar auto completar permanentemente para o seu shell zsh
```

Recarregue o arquivo de configuração:

```
source ~/.zshrc
```
