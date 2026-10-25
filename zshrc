# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Disable automatic oh-my-zsh updates
zstyle ':omz:update' mode disabled  # disable automatic updates

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
	fast-syntax-highlighting
	zsh-autosuggestions
	fzf
)

# Load the oh-my-zsh configs
source $ZSH/oh-my-zsh.sh

# History
export HISTSIZE=200000        # in-memory history
export SAVEHIST=200000        # saved to ~/.zsh_history
export HISTFILE=~/.zsh_history
# Don’t store duplicate commands
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Share history across terminals
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY


# Use vim as default editor, useful for things like 'git commit'.
export EDITOR=nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

prompt_context() { 
	if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
		prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
	fi
}

export FZF_DEFAULT_OPTS='--height 40% --border'

alias vim="nvim"

export PATH="~/bin:$PATH"
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
