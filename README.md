# damned's dotfiles

My personal dotfiles collection

I use X and Arch, btw, and haven't tested these configurations on other systems

## Installation

Backup your configs

Clone this repo and copy its content inside your home path (`~`)

```sh
git clone https://github.com/damned-me/dotfiles /tmp/dotfiles
cp -r /tmp/dotfiles/.* ~
```

## List of Packages

- X
    - xorg-xinit
- xterm
- kitty
- alacritty (current)
- zsh
    - git
    - gnupg
    - pfetch
    - htop
    - unimatrix
    - ncpamixer
    - cava
    - ranger
    - spotify-tui
- vim
- i3-gaps
  - i3status
  - nitrogen
  - feh (current)
  - picom
- zathura
- dunst
- qutebrowser

### [zsh](https://www.zsh.org/)

Config

- `.zshrc`
- `.zprofile`

Configuration manager: [ohmyzsh](https://ohmyz.sh/)

Plugins

- zsh-autosuggestions](<https://github.com/zsh-users/zsh-autosuggestions>)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

#### Alias

Inside `.zshrc`

```sh
# User defined alias
#default ls alias (uncomment if exa is not used)
#alias ls='ls --color=auto'
#alias ll='ls -la'

# exa alias
alias ls='exa'
alias ll='exa --tree --level=2 -l'
alias la='exa --tree --level=2 -la'

alias pls="sudo"

alias vi='vim'

alias v='vi'
alias q='exit'

alias p='python3'

alias pdf=zathura

alias zshconfig='vi ~/.zshrc'
alias vimconfig='vi ~/.vimrc'
alias xconfig='vi ~/.xinitrc'
alias tconfig='vi ~/.Xresources'
alias i3config='vi ~/.config/i3/config'
alias i3sconfig='vi ~/.config/i3status/config'
alias rconfig='vi ~/.config/ranger/rc.conf'
alias qlo='i3-msg exit'
# End of user defined alias
```

#### Functions

Some utility function I had written for myself, they require `curl` as they query the [cht.sh](https://cht.sh/) and [wttr.in](https://wttr.in/) api.

```sh
# User defined functions

# Get cheatsheet
#  ex.  cheat c/move_cursor
#       cheat python/print
cheat <topic>/<details>

# Get weather
#  ex.  weather New_York
#       weather "40.7305991,-73.9865811"
#       weather NYC
weather <location>

# End of user defined functions
```

### [vim](https://github.com/vim/vim)

Install vimplug:

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Config `.vimrc`

Plugin manager: [plug](https://github.com/junegunn/vim-plug)

Activated plugins

- [nerdtree](https://github.com/preservim/nerdtree)
- [ale](https://github.com/dense-analysis/ale)
- [vim-markdown](https://github.com/preservim/vim-markdown)
- [mathjax-support-for-mkdp](https://github.com/iamcco/mathjax-support-for-mkdp)
- [markdown-preview](https://github.com/iamcco/markdown-preview.vim)

### [emacs](https://www.gnu.org/software/emacs/)

See my [.emacs.d](https://github.com/damned-me/.emacs.d) repository

### [i3-gaps](https://github.com/Airblader/i3)

Official [i3-wm wiki](https://i3wm.org/)

Additions:

- [i3status](https://i3wm.org/i3status/) (`.config/i3status/config`)
- [nitrogen](https://github.com/l3ib/nitrogen/)
- [picom](https://github.com/yshui/picom) (`.config/picom.conf`)

#### Keybindings

```
mod+Shift+minus move window to scratchpad
mod+Shift       show scratchpad
mod+Shift+s     show sup-mail scratchpad window
mod+Shift+f     (file manager) ranger
mod+Ctrl+t      connect to emacs server (terminal)
mod+Shift+t     connect to emacs server (GUI)
mod+Shift+b     open browser (firefox)
```

#### i3status

Change disk space stats and cpu temp path inside `.config/i3status/config`
