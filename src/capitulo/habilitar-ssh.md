# Habilitar SSH

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

## Conectar via SSH

Para se conectar à sua máquina usando o SSH, você usará o seguinte comando:

    ssh username@<IP da máquina>

Será solicitado a digitar a senha de sua conta de usuário na máquina. Depois de digitar a senha, você estará conectado e poderá executar comandos na máquina remota.
