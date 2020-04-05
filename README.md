# Ubuntu setup

This repo aims to gather most setups required for development on a fresh Ubuntu instance.
Among other things, it installs and/or configures:
* the i3-gaps tiled window manager
* a bunch of development libraries (for Javascript, Java, Kotlin etc),
* SSH
* VSCodium
* VIM
* TMUX
* the UFW firewall
* lots of other tools

## How to use

1. Clone this repo: `git clone https://github.com/cyrillg/ansible.git`
2. Fill in all fields in `config.yml.tmpl` and rename it `config.yml`
3. Execute the command: `sudo ansible-playbook full.yml`
