# Path to your oh-my-zsh configuration.
if test -d $HOME/.oh-my-zsh ; then
	ZSH=$HOME/.oh-my-zsh
elif  test -d /etc/zsh/oh-my-zsh ; then
	ZSH=/etc/zsh/oh-my-zsh
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="digilist"

zstyle ':completion:*' special-dirs true

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux colored-man cp extract hsi symfony2 apache2-macports git-extras coffee jira lol macports grails osx ruby)

# Extended profile
[[ -f ~/.profile ]] && source ~/.profile
[[ -f ~/.alias ]] && source ~/.alias

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/$HOME/.composer/vendor/bin:bin:opt/java/bin:/opt/java/db/bin:/opt/java/jre/bin:/usr/bin/vendor_perl:/usr/bin/core_perl

export EDITOR=$(which vim)

if command -v rbenv > /dev/null; then
	# ruby
	export PATH=$PATH:~/.gem/ruby/2.2.0/bin
	eval "$(rbenv init -)"
fi

# :P
xset -dpms
setxkbmap de
