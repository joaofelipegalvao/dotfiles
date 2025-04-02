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
  --border=none
  --color=bg+:#002c38 \
  --color=bg:#001419 \
  --color=border:#063540 \
  --color=fg:#9eabac \
  --color=gutter:#001419 \
  --color=header:#c94c16 \
  --color=hl+:#c94c16 \
  --color=hl:#c94c16 \
  --color=info:#637981 \
  --color=marker:#c94c16 \
  --color=pointer:#c94c16 \
  --color=prompt:#c94c16 \
  --color=query:#9eabac:regular \
  --color=scrollbar:#063540 \
  --color=separator:#063540 \
  --color=spinner:#c94c16 \
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

