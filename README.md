# vim8config

Storing my configure for vim 8

## How to configure on a new os
prerequisite: vim 8 (like Ubuntu 20 64bit)

* clone this repository 
```shell
git clone https://github.com/Ben-Bob/vim8config.git
mv vim8config/ .vim
mv .vim/.vimrc .
```
* install the requested software for some vim plugins(like fzf, nodejs)
```shell
sudo apt install fzf
sudo apt install ranger
sudo apt install nodejs
sudo apt install npm
npm config set registry https://mirrors.huaweicloud.com/repository/npm/
```
* update the vim plugins
```vim
# vim8
:PlugStatus
:PlugInstall
```


