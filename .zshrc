source ~/.zplug/init.zsh

# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"

# Use the package as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# Can manage everything e.g., other person's zshrc
zplug "tcnksm/docker-alias", use:zshrc

# Disable updates using the "frozen:" tag
zplug "k4rthik/git-cal", as:command, frozen:1

# Grab binaries from GitHub Releases
# and rename with the "rename-to:" tag
zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# Supports oh-my-zsh plugins and the like
# zplug "plugins/git",   from:oh-my-zsh, if:"(( $+commands[git] ))"
# zplug "themes/duellj", from:oh-my-zsh
zplug "themes/ys",  from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

zplug "peco/peco",          as:command, from:gh-r

# Run a command after a plugin is installed/updated
zplug "tj/n", hook-build:"make install"

# Supports checking out a specific branch/tag/commit
zplug "b4b4r07/enhancd", at:v1
zplug "mollifier/anyframe", at:4c23cb60

# Install if "if:" tag returns true
zplug "hchbaw/opp.zsh", if:"(( ${ZSH_VERSION%%.*} < 5 ))"

# Can manage gist file just like other packages
zplug "b4b4r07/79ee61f7c140c63d2786", \
    from:gist, \
    as:command, \
    use:get_last_pane_path.sh

# Support bitbucket
zplug "b4b4r07/hello_bitbucket", \
    from:bitbucket, \
    as:command, \
    hook-build:"chmod 755 *.sh", \
    use:"*.sh"

# Group dependencies. Load emoji-cli if jq is installed in this example
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"
# Note: To specify the order in which packages should be loaded, use the nice
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", nice:10

# Can manage local plugins
zplug "~/.zsh", from:local

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

## User Setting

# PATH

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home"

# Editor
export EDITOR=vim

# Color
export GREP_COLOR='01;33'
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# alias設定
setopt complete_aliases
alias ls='ls -FGh'
alias la='ls -a'
alias rm='rm -i'
alias grep='grep --color=auto'
alias less='less -M'
alias where='command -v'
alias du='du -h'
alias df='df -h'
alias su='su -l'
alias c='clear'
alias sudo='sudo -E '
alias vi='vim'

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias mux='tmuxinator'

# nodebrew
# curl -L git.io/nodebrew | perl - setup
PATH=$HOME/.nodebrew/current/bin:$PATH

# Docker alias
dstop() { docker stop $(docker ps -a -q);}
drm() { docker rm $(docker ps -a -q); }
dri() { docker rmi $(docker images -q); }

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# perl
export PERL_CPANM_OPT="--local-lib=~/perl5"
export PATH=$HOME/perl5/bin:$PATH;
export PERL5LIB=$HOME/perl5/lib/perl5:$PERL5LIB;

# tmux
if [ $SHLVL = 1 ]; then
    alias tmux="tmux attach || mux start default"
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

export LINE_NOTIFY_SHELL_TOKEN="0y9u0YFwp5E8qYMtqduHa6hqYdSfxcIdb6sdJyAe6sH"

function line {
  pipe=`cat -`
  message=`echo -e "$@\n$pipe"`
  echo -e "$message"
  curl -v -X POST -H "Authorization: Bearer $LINE_NOTIFY_SHELL_TOKEN" -F "message=$message" https://notify-api.line.me/api/notify
}

function pasta-line {
  (( time = $1 * 60 ))
  echo "$1 分待ってね。"
  sleep $time && echo "パスタだよー" | line 
}

