## Criando um cluster com Ingress Ngnix

Crie um arquivo YAML com o seguinte comando:

```
nano kind-ingress.yaml
```

Cole o texto:

```
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  kubeadmConfigPatches:
  - |
    kind: InitConfiguration
    nodeRegistration:
      kubeletExtraArgs:
        node-labels: "ingress-ready=true"
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
    hostPort: 443
    protocol: TCP
- role: worker
```

Pressione ```Ctrl + X``` então ```y``` para salvar e ```Enter``` para fechar

Crei o cluster com o comando:

```
kind create cluster --name <nome do cluster> --config kind-ingress.yaml
```

Implemente o controlador do Ingress Nginx no cluster Kubernetes.

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
```

Crie um arquivo YAML com o seguinte comando:

```
nano testing-ingress.yaml
```

Cole o seguinte texto substituindo ```<nome>``` pelo nome da primeira aplicação e ```<nome2>``` pelo nome da segunda aplicação:

```
kind: Pod
apiVersion: v1
metadata:
  name: <nome>
  labels:
    app: <nome>
spec:
  containers:
  - name: <nome>-app
    image: hashicorp/http-echo:0.2.3
    args:
    - "-text=FUNCIONOU_<nome>"
---
kind: Service
apiVersion: v1
metadata:
  name: <nome>-service
spec:
  selector:
    app: <nome>
  ports:
  # Default port used by the image
  - port: 5678
---
kind: Pod
apiVersion: v1
metadata:
  name: <nome2>-app
  labels:
    app: <nome2>
spec:
  containers:
  - name: <nome2>-app
    image: hashicorp/http-echo:0.2.3
    args:
    - "-text=FUNCIONOU_<nome2>"
---
kind: Service
apiVersion: v1
metadata:
  name: <nome2>-service
spec:
  selector:
    app: <nome2>
  ports:
  # Default port used by the image
  - port: 5678
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: example-ingress
spec:
  rules:
  - http:
      paths:
      - pathType: Prefix
        path: "/<nome>"
        backend:
          service:
            name: <nome>-service
            port:
              number: 5678
      - pathType: Prefix
        path: "/<nome2>"
        backend:
          service:
            name: <nome2>-service
            port:
              number: 5678
      
---
```

Pressione ```Ctrl + X``` então ```y``` para salvar e ```Enter``` para fechar

Execute com o comando:

```
kubectl create -f testing-ingress.yaml
```

Confirme que os Pods estão com status ```Running```:

```
kubectl get pods
```

Os serviços estão rodando:

```
kubectl get svc
```

E o Ingress está correto:

```
kubectl get ingress
```

```
kubectl describe ingress <nome do ingress>
```

Agora você pode acessar: http://localhost/ ```Path``` para ver a aplicação funcionando