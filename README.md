# damned's dotfiles

My personal dotfiles collection

## [zsh](https://www.zsh.org/)

Config
- `.zshrc`
- `.zprofile`

Configuration manager: [ohmyzsh](https://ohmyz.sh/)

Plugins
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## vim

Config `.vimrc`

Plugin manager: [plug](https://github.com/junegunn/vim-plug)

Activated plugins

- [nerdtree](https://github.com/preservim/nerdtree)
- [ale](https://github.com/dense-analysis/ale)
- [vim-markdown](https://github.com/preservim/vim-markdown)
- [mathjax-support-for-mkdp](https://github.com/iamcco/mathjax-support-for-mkdp)
- [markdown-preview](https://github.com/iamcco/markdown-preview.vim)

## X

- xorg-server
- xorg-xinit

Config `.xinitrc`

## xterm

Config `.Xresources`

## [i3-gaps](https://github.com/Airblader/i3)

Config `.config/i3/config`

Official [i3-wm wiki](https://i3wm.org/)

Additions:
- [i3status](https://i3wm.org/i3status/) (`.config/i3status/config`)
- [nitrogen](https://github.com/l3ib/nitrogen/)
- [picom](https://github.com/yshui/picom) (`.config/picom.conf`)

##pwndbg

Config `.gdbinit`

After install if `setup.sh` is not compatible with your distro run

``` 
echo 'source /usr/share/pwndbg/gdbinit.py' >> ~/.gdbinit
```

## Alias

```
# default ls alias (uncomment if exa is not used)
# alias ls='ls --color=auto'
# alias ll='ls -la'

# exa alias
alias ls='exa'
alias ll='exa --tree --level=2 -l'
alias la='exa --tree --level=2 -la'

alias vi='vim'

alias v='vi'
alias q='exit'

alias zshconfig='vi ~/.zshrc' 
alias vimconfig='vi ~/.vimrc'
alias xconfig='vi ~/.xinitrc'
alias tconfig='vi ~/.Xdefaults'
alias i3config='vi ~/.config/i3/config'
alias i3sconfig='vi ~/.config/i3status/config'
```
