# Estilo

Estes arquivos são utilizados para estilizar o X e o Fluxbox das máquinas de sala de aula.

## Instalação

A instalação do estilo é muito simples, basta copiar os seguintes arquivos para a home do usuário em questão:

```bash
cd user
cp -r .fluxbox .ideskrc .idesktop .Xresources /home/noturno
```

## Aplicações

O desktop é extremamente simplificado para evitar problemas de configurações, sem sacrificar a usabilidade. Apenas alguns poucos programas estão disponíveis através do menu:

- Geany - editor de texto com suporte a sintaxe
- Thunar - gerenciador de arquivos
- Sakura - terminal com suporte a abas
- Firefox - navegador
- Virtualbox - hypervisor

## Fluxbox

O Fluxbox foi escolhido como window manager pela sua leveza, simplicidade e facilidade de versionamento.
Utiliza um estilo conhecido como **equilux** levemente modificado. Todas as configurações ficam dentro de um diretório na home do usuário chamado *.fluxbox*.

- .fluxbox
  - styles
    - equilux
      - pixmaps - ícones dos cantos da janela
      - debian-wallpaper.png - papel de parede
      - theme.cfg - configurações do tema como cores e fontes
  - keys - arquivo com os atalhos do teclado
  - menu - arquivo do menu principal da área de trabalho
  - startup - programas iniciados juntos com o fluxbox, ex: idesk, wicd-client

### Menu

O menu do desktop é configurado no arquivo *~/.fluxbox/menu*. Sua sintaxe é muito simples e qualquer configuração modificada pelo usuário é gravada no arquivo *~/.fluxbox/startup* através de um `sed`.

### idesk

O **idesk** é utilizado para criar os ícones da área de trabalho, suas configurações consistem em um arquivo e uma pasta com as definições de ícones:

- .ideskrc
- .idesktop
  - firefox.lnk
  - geany.lnk
  - sakura.lnk
  - thunar.lnk
  - virtualbox.lnk

Sua inicialização é através do script *~/.fluxbox/startup* que executa o comando `idesk &`.

## XDM

O XDM foi escolhido como display manager também pela sua leveza, simplicidade e facilidade de versionamento.
