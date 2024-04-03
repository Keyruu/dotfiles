export ZSH="/Users/lro/.oh-my-zsh"

plugins=(
  helm
  git
  forgit
  npm
  brew
  macos
  zsh-autosuggestions
  docker
  docker-compose
  kubectl
  fast-syntax-highlighting
  zsh-vi-mode
  nvm
  zsh-nvm
  jenv
  1password
  kubectx
  zsh-history-substring-search
  you-should-use
)

source $ZSH/oh-my-zsh.sh

setopt inc_append_history
setopt share_history
setopt HIST_EXPIRE_DUPS_FIRST
setopt hist_ignore_all_dups
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

alias reprofile="source ~/.zshrc"
alias profile="vi ~/.zshrc"
alias please='sudo $(fc -ln -1)'
alias starship-config="vi ~/.config/starship.toml"

alias cheat="cht.sh"
alias ls="lsd"
alias ll="lsd -la"
alias vi="nvim"

alias changeOrigin="git remote set-url origin"

alias gc="git clone"

alias createkh='tmp_script=$(mktemp) && curl -sSL -o "${tmp_script}" https://raw.githubusercontent.com/kube-hetzner/terraform-hcloud-kube-hetzner/master/scripts/create.sh && chmod +x "${tmp_script}" && "${tmp_script}" && rm "${tmp_script}"'

alias brewx86='eval "$(/usr/local/bin/brew shellenv)"'

alias brewup='brew update && brew upgrade && brew cleanup && sketchybar --trigger brew_update'

export KUBECONFIG=$KUBECONFIG:$HOME/.kube/michael.kubeconfig:$HOME/.kube/surfuniverse.kubeconfig:$HOME/.kube/galaxy.kubeconfig:$HOME/.kube/config:$HOME/.kube/niflheim.kubeconfig:$HOME/.kube/bad.kubeconfig:$HOME/.kube/bmw.kubeconfig:$HOME/.kube/yggdrasil.yaml:$HOME/.kube/aws.kubeconfig:$HOME/.kube/hive.kubeconfig:$HOME/.kube/pdarobe.kubeconfig:$HOME/.kube/meadow.kubeconfig
export KUBECONFIG=$HOME/.kube/traversetown.kubeconfig:$KUBECONFIG
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/3datp.kubeconfig
alias k=kubectl

export XDG_CONFIG_HOME=$HOME/.config

export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/Users/lro/.jenv/shims:${PATH}"

export HELM_EXPERIMENTAL_OCI=1

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/go/bin:$PATH"

export PATH="$HOME/.jenv/bin:$PATH"

export SAVEHIST=10000


#eval "$(jenv init -)"

#eval "$(starship init zsh)"

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/lro/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# bun completions
[ -s "/Users/lro/.bun/_bun" ] && source "/Users/lro/.bun/_bun"

# bun
export BUN_INSTALL="/Users/lro/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/Users/lro/caas/bin:$PATH"
export PATH="/Users/lro/.krew/bin:$PATH"

export CC_x86_64_unknown_linux_gnu=x86_64-unknown-linux-gnu-gcc
export CXX_x86_64_unknown_linux_gnu=x86_64-unknown-linux-gnu-g++
export AR_x86_64_unknown_linux_gnu=x86_64-unknown-linux-gnu-ar
export CARGO_TARGET_X86_64_UNKNOWN_LINUX_MUSL_LINKER=x86_64-unknown-linux-musl-gcc
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/lro/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Kubectl edit command will use this env var.
export EDITOR=nvim
# Should your editor deal with streamed vs on disk files differently, also set...
export K9S_EDITOR=nvim

eval "$(zoxide init zsh)"

export PATH="/usr/local/opt/game-porting-toolkit/bin:$PATH"
export PATH="/Users/lro/.local/bin:$PATH"

eval "$(starship init zsh)"

eval "$(fzf --zsh)"

eval "$(gh copilot alias -- zsh)"

# Bind keys
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M viins "$terminfo[kcuu1]" history-substring-search-up
bindkey -M viins "$terminfo[kcud1]" history-substring-search-down
