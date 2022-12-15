# Habilitar SSH e fazer com que o serviço inicie junto com a máquina

Instale o OpenSSH Server na sua máquina usando o seguinte comando:

```
sudo apt-get update
sudo apt-get install openssh-server
```
Em seguida, inicie o serviço SSH usando o seguinte comando:

```
sudo service ssh start
```

Para fazer com que o serviço SSH inicie junto com a máquina, você precisará ativá-lo usando o seguinte comando:

    sudo systemctl enable ssh

Isso habilitará o SSH na sua máquina e fará com que o serviço SSH inicie automaticamente quando a máquina for iniciada.

## Conectar via SSH no IP 192.168.0.10

Para se conectar à sua máquina usando o SSH e o IP 192.168.0.10, você precisará usar o seguinte comando:

    ssh username@192.168.0.10

Isso fará com que o seu terminal se conecte à sua máquina usando o SSH. Você será solicitado a digitar a senha de sua conta de usuário na máquina. Depois de digitar a senha, você estará conectado e poderá executar comandos na máquina remota.
