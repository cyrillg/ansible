# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias l='ls -lF --color=auto --group-directories-first'
alias ka="killall"
alias mpv="mpv --input-unix-socket=/tmp/mpvsoc$(date +%s)"
alias SS="sudo systemctl"
alias sdn="sudo shutdown -h now"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ref="shortcuts >/dev/null; source ~/.shortcuts"
alias x="sxiv -ft"

# git
alias gcz="git-cz"
alias ga="git add"
alias gac="git add ."
alias gaa="git add --all"
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit --message"
alias gca="git commit --amend"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gf="git fetch"
alias glg="git log --graph --oneline --decorate --all"
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm="git merge"
alias gmm="git merge master"
alias gp="git push"
alias gpf="git push -f"
alias gpl="git pull"
alias gst="git status"

function glf() { git log --all --grep="$1"; }

# Necessary to avoid lag in the tmux bar updates when changing directory
if [ "$TMUX_SHELL" = "yes" ]; then
  function cd() {
    new_directory="$*"
    if [ $# -eq 0 ]; then
      new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && tmux refresh-client -S
  }
fi
