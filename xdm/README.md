# XDM

O XDM (X Display Manager) é um gestor de login gráfico para X. Por ser minimalista, é uma excelente opção para desempenho em máquinas mais antigas, além de possibilitar uma customização através de comandos do Shell. 

## Como utilizar

Após instalar o XDM, copiar e sobrescrever os arquivos do repositório para o diretório /etc/X11/xdm . 


## Arquivos de Configuração

O XDM possui diversas diretivas e arquivos de configurações. Para o setup atual, foram realizadas as seguintes modificações:

- alteração do arquivo xdm-config 
- criação de um diretório para armazenar os arquivos de configuração customizados
- criação de 3 arquivos para diretivas de inicialização, estilo e retorno;
- criação de um diretório para guardar imagens/wallpapers

### xdm-config

Foram alteradas as 3 linhas abaixo para possibilitar o redirecionamento de configurações para um diretório:

- DisplayManager*resources: /etc/X11/xdm/xdm.conf.d/Xresources_4linux
- DisplayManager*startup: /etc/X11/xdm/xdm.conf.d/GiveConsole_4linux
- DisplayManager*setup: /etc/X11/xdm/xdm.conf.d/Xsetup_4linux


### Xresources_4Linux

Arquivo de configuração responsável por definir posicionamento, rótulos, cores, etc. Para verificar todas as propriedades, ver a página do man do xdm.

### GiveConsole_4linux

Arquivo responsável por eliminar os recursos utilizados na seção do XDM. Sua principal função é, após efetuar um login bem sucedido, devolver ao usuário o controle e remover os processos utilizados durante a seção de login.

### Xsetup_4linux

Arquivo responsável por definir o conteúdo da tela de login do XDM. Neste arquivo foram definidos a resolução, cor de fundo e papel de parede, diretivas de login e funcionalidades de desligamento e reboot.





