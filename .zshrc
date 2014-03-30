# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="simple"
ZSH_THEME="flazz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails svn git textmate ruby lighthouse)
plugins=(git svn vi-mode autojump colored-man archlinux mvn)

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey '^R' history-incremental-search-backward
# press jj for esc
#bindkey -M viins 'jj' vi-cmd-mode


# Customize to your needs...
eval `dircolors ~/.dircolors_solarized_dark`
# alias o=xdg-open
alias o=~/scripts/open.sh
alias e="emacsclient -c -n"
#alias j="autojump"
alias ai="sudo apt-get install"
alias l="ls -lah"
alias fucking="sudo"
alias mlab="matlab -nodesktop"
alias mlabdesktop="matlab -desktop"
export VISUAL=vim
export EDITOR=vim


# . /usr/share/zsh/site-contrib/powerline.zsh

function jo {
    if [ -z $(autojump $@) ]; then
        echo "autojump: directory '${@}' not found"
        echo "Try \`autojump --help\` for more information."
        false
    else
        case ${OSTYPE} in
            linux-gnu)
                xdg-open "$(autojump $@)"
                ;;
            darwin*)
                open "$(autojump $@)"
                ;;
            cygwin)
                cygstart "" $(cygpath -w -a $(pwd))
                ;;
            *)
                echo "Unknown operating system." 1>&2
                ;;
        esac
    fi
}

