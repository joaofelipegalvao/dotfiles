# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


fpath=(~/zsh-completions/src $fpath)

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

# Configuração do Mise para Java
export JAVA_HOME=$(mise where java)
export PATH="$JAVA_HOME/bin:$PATH"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"

eval "$(starship init zsh)"

alias ls="eza --icons"
alias cat="bat --style=auto"

# Aliases
alias ls="eza --icons"
alias la="eza -A --icons"
alias ll="eza -l --icons"
alias lla="eza -lA --icons"
alias g="git"

# Se 'nvim' existir, usa como alias para 'vim'
if command -v nvim >/dev/null 2>&1; then
  alias vim="nvim"
fi

# Configurar editor padrão
export EDITOR="nvim"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"
# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

# ---- Yazi setup ----
export EDITOR="nvim"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# ---- Mise ----
eval "$(mise activate zsh)"


export EZA_THEME=tokyo-night

