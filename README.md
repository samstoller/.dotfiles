# .dotfiles
This repo contains my public dotfiles for *NIX machines and an accompanying Wiki that details my dotfile setup.

The goals of this project are to be able to **backup, restore, deploy and sync** a global set of dotfiles to any machine, and to allow indvidual hosts to add new dotfiles or override existing ones as needed.

My custom install:
```bash
$ brew tap thoughtbot/formulae
$ brew install rcm
$ cd ~
$ git clone git@github.com:samstoller/.dotfiles.git
$ git clone git@github.com:samstoller/.dotfiles-secret.git
$ rcup -d .dotfiles-secret -d .dotfiles
```

TODO : Update Wiki, finish and simplify!!


If you are interested in cloning this repo, please see the [Cloning This Repo](https://github.com/samstoller/.dotfiles/wiki/Cloning-This-Repo) page for details on how to integrate my dotfiles with yours.

# Table of Contents
[1 Dotfiles!](https://github.com/samstoller/.dotfiles/wiki/1-Dotfiles!)

[2 Install & Setup](https://github.com/samstoller/.dotfiles//wiki/2-Install-&-Setup)

[3 rcm](https://github.com/samstoller/.dotfiles//wiki/3-rcm)

[4 Getting Started](https://github.com/samstoller/.dotfiles//wiki/4-Getting-Started)

[5 Managing Hosts](https://github.com/samstoller/.dotfiles//wiki/5-Managing-Hosts)

[6 Sourcing Shell Files](https://github.com/samstoller/.dotfiles//wiki/6-Sourcing-Shell-Files)

[7 Cloning This Repo](https://github.com/samstoller/.dotfiles//wiki/7-Cloning-This-Repo)
