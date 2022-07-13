# Config file for fish
# Inspired from dwt1/dotfiles (https://gitlab.com/dwt1/dotfiles/-/blob/master/.config/fish/config.fish)

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths


set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes

set fish_greeting ""
set -gx TERM xterm-256color

# theme
set -g theme_color_scheme solarized-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Changing "ls" to "exa"
alias ls='exa -al  --icons  --color=always --group-directories-first' # my preferred listing
alias la='exa -a  --icons  --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l  --icons  --color=always --group-directories-first'  # long format
alias lt='exa -aT  --icons  --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git checkout -b'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

alias vim="nvim"
alias grep="grep --color=auto"
alias df="df -h"


command -qv nvim && alias vim nvim

set -gx EDITOR nvim
set -gx VISUAL gedit
set -gx PAGER less
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end



if status is-interactive
    # Commands to run in interactive sessions can go here
end
