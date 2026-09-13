# --- Locale & Encoding ---
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

eval "$(zoxide init zsh)"
fastfetch 
# PROMPT architecture
# %F{6} calls color6/14. %f terminates the color block. %F{2} is green for the arrow.
PROMPT='%F{6}%~%f %F{2}➔%f ' 
eval "$(/opt/homebrew/bin/brew shellenv)"

# --- Terminal Enhancements ---
# Colorful syntax highlighting for reading files
alias cat="bat"

# Colorful directory listings with icons
alias ls="eza --icons --color=always"

# Zsh syntax highlighting (commands turn green/red while typing)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# --- Aliases ---
alias ..="cd .."
alias ...="cd ../.."
alias c="clear"
alias ls="eza --icons"
alias ll="eza -la --icons"
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias update="brew update && brew upgrade"

eval "$(starship init zsh)"

# --- Advanced & Tree Aliases ---
mkcd() { mkdir -p "$1" && cd "$1"; }
alias myip="curl -s http://ipecho.net/plain; echo"
alias ports="lsof -iTCP -sTCP:LISTEN -n -P"
alias ff="fd --type f --hidden --exclude .git | fzf"
alias lt="eza --tree --icons=always --color=always -la"
alias ltt="eza --tree --icons=always --color=always -la | LESSCHARSET=utf-8 less -R"
alias lttxt="eza --tree -la --color=never > tree.txt"
lttxtf() { eza --tree -la --color=never > "$1"; }

# --- GitHub Advanced Aliases ---
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip-- [skip ci]"'
alias gcleanbranches='git branch -vv | grep ": gone\]" | awk '\''{print $1}'\'' | xargs git branch -D'
alias glg='git log --graph --color --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'

extract() {
  if [ -z "$1" ]; then
    echo "Usage: extract <archive-file>"
  elif [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2) tar xjf "$1"    ;;
      *.tar.gz)  tar xzf "$1"    ;;
      *.bz2)     bunzip2 "$1"    ;;
      *.rar)     unrar x "$1"    ;;
      *.gz)      gunzip "$1"     ;;
      *.tar)     tar xf "$1"     ;;
      *.tbz2)    tar xjf "$1"    ;;
      *.tgz)     tar xzf "$1"    ;;
      *.zip)     unzip "$1"      ;;
      *.Z)       uncompress "$1" ;;
      *.7z)      7z x "$1"       ;;
      *)         echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias dsh='docker exec -it $(docker ps -q -l) /bin/sh'

fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
  if [ -n "$pid" ]; then
    echo "$pid" | xargs kill -${1:-9}
  fi
}

alias path='echo -e ${PATH//:/\\n}'

# --- Advanced Git Functions ---
ginit() { git init && git add . && git commit -m "Initial commit"; }
gpush() { git add . && git commit -m "$1" && git push; }

# --- Deep Search & Network ---
findtext() { rg "$1"; }
alias findbig="find . -type f -size +100M"
alias recent="find . -mtime -1"
alias localip="ipconfig getifaddr en0"
alias pingg="ping -c 4 8.8.8.8"

alias lg="lazygit"
alias b="btop"

# Yazi smart cd wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# --- Elite Power Tools ---
alias ld="lazydocker"
alias lnpm="lazynpm"
alias vim="nvim"
alias v="nvim"
eval "$(direnv hook zsh)"

# --- Docker ---
alias d="docker"
alias dc="docker compose"
alias dup="docker compose up -d"
alias ddown="docker compose down"
alias dps="docker ps"
alias dex="docker exec -it"
alias dclean="docker system prune -a -f"

# --- Database ---
alias lsql="lazysql"

# --- Lifestyle & Eye-Candy ---
alias discord="~/go/bin/discordo"
alias reddit="reddix"
alias podcast="linecast"
alias pomodoro="~/.cargo/bin/zeitx"
alias clock="tty-clock -c -C 4 -r"
alias visualizer="cava"

# --- Log Management ---
logtail() { tail -f "$1"; }
logview() { less +G "$1"; }
logerr() { grep -iE "error|fail|warn|fatal|exception" "$1"; }
logclear() { > "$1"; echo "Cleared $1"; }

# --- Cron Jobs Management ---
alias cronlist="crontab -l"
alias cronedit="EDITOR=nvim crontab -e"
alias cronlog="/usr/bin/log show --process cron --last 24h"

# --- Auto Zsh Plugins ---
ZPLUGINDIR="${ZDOTDIR:-$HOME/.config/zsh}/plugins"
_zplugin_load() {
  local plugin_path="${ZPLUGINDIR}/${2}"
  if [[ ! -d "$plugin_path" ]]; then
    mkdir -p "$ZPLUGINDIR"
    echo "Installing ${2}..."
    git clone --depth=1 "https://github.com/${1}/${2}" "$plugin_path"
  fi
  source "${plugin_path}/${2}.plugin.zsh"
}
_zplugin_load zsh-users zsh-autosuggestions
_zplugin_load zsh-users zsh-history-substring-search

# --- Smart Auto-Completion & AUTOCD ---
setopt AUTOCD
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# --- Advanced FZF + Bat Integration ---
export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--height=60% --layout=reverse --border=rounded --preview-window=right:65%:wrap:border-left'
export _FZF_PREVIEW_CMD='bat --color=always --style=plain,numbers --line-range=:500 {}'
export FZF_CTRL_T_OPTS="--preview '$_FZF_PREVIEW_CMD'"
_fzf_file_no_hidden() {
  local cmd="${FZF_DEFAULT_COMMAND/--hidden /}"
  local result=$(eval "${cmd:-find . -type f}" | fzf --preview "$_FZF_PREVIEW_CMD")
  [[ -n "$result" ]] && LBUFFER+="$result"
  zle reset-prompt
}
zle -N _fzf_file_no_hidden
bindkey '^F' _fzf_file_no_hidden

# --- Quick Dot Aliases ---
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# --- Password Generator ---
alias genpass="tr -dc 'A-Za-z0-9!@#$%^&*()_+=' < /dev/urandom | head -c 24; echo"

# --- Exegol & Docker ---
exe() {
    if ! pgrep -q "Docker"; then
        echo "🐳 Docker Desktop is not running. Starting it now..."
        open -a Docker
    fi
    
    echo "⏳ Waiting for Docker daemon to become ready..."
    while ! docker info >/dev/null 2>&1; do
        sleep 1
    done
    
    echo "✅ Docker is ready! Launching Exegol..."
    exegol start pentest free
}
