# Desativar partição SWAP

Abra o terminal e verifique o nome do arquivo de swap com o comando:

```
sudo swapon --show
```

Desative o swap com o comando:

```
sudo swapoff <nome do arquivo de swap>
```

Remova o arquivo de swap do sistema com o comando:

```
sudo rm <nome do arquivo de swap>
```

Verifique se o swap foi desativado corretamente executando o comando:

```
sudo swapon --show
```

Se o comando acima não retornar nenhuma informação, isso significa que o swap foi desativado corretamente. Caso contrário, é possível tentar desativá-lo manualmente editando o arquivo /etc/fstab e removendo a entrada correspondente ao arquivo de swap.

## Editando o arquivo /etc/fstab

Para editar o arquivo /etc/fstab e remover a entrada correspondente ao arquivo de swap, basta seguir os seguintes passos:

Abra o terminal e edite o arquivo /etc/fstab com o comando:

```
sudo nano /etc/fstab
```

Localize a linha que contém a entrada correspondente ao arquivo de swap. Essa linha começará com "UUID=" seguido do UUID do arquivo de swap, seguido pelos demais parâmetros de configuração do swap.

Remova a linha correspondente ao arquivo de swap, pressionando a tecla "Delete" ou "Backspace" e salvando o arquivo com "Ctrl+X" e confirmando a operação com "Enter".

Verifique se a entrada foi removida corretamente executando o comando:

```
cat /etc/fstab
```

Se a linha correspondente ao arquivo de swap não estiver mais presente no arquivo, isso significa que a entrada foi removida corretamente. Caso contrário, é possível tentar removê-la manualmente editando o arquivo novamente e removendo a linha correspondente.

Com isso, a entrada correspondente ao arquivo de swap será removida do arquivo /etc/fstab, e o swap não será mais utilizado pelo sistema. É importante lembrar que essa operação é irreversível, portanto, é recomendado fazer backup de qualquer informação importante antes de editar o arquivo /etc/fstab.