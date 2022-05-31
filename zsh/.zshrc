# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Default editor
export EDITOR="micro"

# Theme
ZSH_THEME="amuse"

# Enable command autocorrection
# ENABLE_CORRECTION="true"

# Plugins
plugins=(
git
npm
history
emoji
kubectl
web-search
copyfile
dirhistory
jsontools
macos
zsh-autosuggestions
zsh-syntax-highlighting
kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
     export EDITOR='nano'
 else
   export EDITOR='micro'
 fi

# Aliases
alias klogs='k logs -n argo -c main'
alias dbuild='docker buildx build --platform linux/amd64 --push -t'
alias dev-vm='ssh ml@mlo-ubuntu-vm.germanywestcentral.cloudapp.azure.com'
alias argocd-server='kubectl port-forward svc/argocd-server -n argocd 8080:443'
alias argocd-password='kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d'
alias tf='terraform'
alias gol='open -na "GoLand.app"'
# Syntax highlighting and autocomplete
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
source /Users/ml/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

