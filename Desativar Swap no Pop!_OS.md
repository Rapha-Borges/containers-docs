# Para desativar o swap no Pop!_OS de forma definitiva, você pode seguir os seguintes passos:


Abra o arquivo "/etc/fstab" em um editor de texto como o nano ou o vim usando o seguinte comando:

```
sudo nano /etc/fstab
```

Adicione o comentário "#" na linha que contém a partição de swap para desabilitá-la. O arquivo "/etc/fstab" deve ficar assim:

```
# /etc/fstab: static file system information.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
/dev/mapper/pop--vg-root /               ext4    errors=remount-ro 0       1
# /dev/mapper/pop--vg-swap_1 none            swap    sw              0       0
```

Salve o arquivo e feche o editor de texto.

Desmonte a partição de swap usando o seguinte comando:

```
sudo swapoff -a
```

Isso desativará o swap no Pop!_OS de forma definitiva e liberará memória adicional para o seu sistema.

## Se a partição de swap está sendo remontada automaticamente após a reinicialização do sistema:
Isso pode ser devido ao fato de que ela está sendo habilitada pelo systemd. Para desativar a partição de swap permanentemente, você pode seguir os seguintes passos:

Abra o arquivo "/etc/default/grub" em um editor de texto como o nano ou o vim usando o seguinte comando:

```
sudo nano /etc/default/grub
```

Adicione o parâmetro "resume=none" ao final da linha "GRUB_CMDLINE_LINUX_DEFAULT" no arquivo "/etc/default/grub". Por exemplo, se a linha "GRUB_CMDLINE_LINUX_DEFAULT" contiver:

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=none"
```

Isso fará com que o sistema não monte a partição de swap automaticamente ao inicializar.

Salve o arquivo e feche o editor de texto.

Atualize o arquivo de configuração do GRUB usando o seguinte comando:

```
sudo update-grub
```

Se você estiver recebendo a mensagem de erro "sudo: update-grub: command not found" ao tentar executar o comando "sudo update-grub", isso pode indicar que o pacote "grub-pc" não está instalado no seu sistema. O comando "update-grub" é parte do pacote "grub-pc" e precisa ser instalado para ser executado.

Para instalar o pacote "grub-pc" e corrigir o erro "sudo: update-grub: command not found", você pode usar o seguinte comando:

```
sudo apt-get update
sudo apt-get install grub-pc
```
