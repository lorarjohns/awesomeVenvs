# If you come from bash you might have to change your $PATH.

export NVM_DIR="$HOME/.nvm"

source $(brew --prefix nvm)/nvm.sh 
source $(brew --prefix nvm)/etc/bash_completion.d

PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:/$HOME/usr/local/bin:/bin:/$PATH"

eval "$(pyenv init -)"

if which pyenv-virtualenv-init > /dev/null; 
then eval "$(pyenv virtualenv-init -)"; fi
# eval "$(pyenv virtualenv-init -)"  


# Fix R

# export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/MacOS/pandoc

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/Cellar/zsh-syntax-highlighting/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="honukai"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
	osx 
	z 
#        zsh-syntax-highlighting
)


################################################## 
# User configuration

# alternative vscode launching 
# see https://stackoverflow.com/questions/29971053/

# code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

hack () { 
	name="$1"
	shift
	args="$*"
	IFS=","
	args="$*"
	echo "def $name($args):" > $name.py && code $name.py
	echo "import pytest\n\
from $name import $name\n\
tests=[]\n\n\
@pytest.mark.parametrize('$args, expected', tests)\n\
def test_$name('$args, expected', tests):\n\
    assert $name($args) == expected" > test_$name.py && code test_$name.py
}

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR="nano"
 else
   export EDITOR="nano"
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set text editor

eval $(thefuck --alias)

# Mac/Linux Docker daemon can communicate with Minikube VM Docker daemon

# eval $(minikube docker-env)

# useful or fun

alias just="sudo"
alias prune="docker rm $(docker ps -a -q -f status=exited)"
alias ml-run="docker run -d -p 8080:8080 --name "ml-workspace" -v "${PWD}:/workspace" --env AUTHENTICATE_VIA_JUPYTER="mytoken" --shm-size 512m --restart always mltooling/ml-workspace:latest"
alias inkscape="/Applications/Inkscape.app/Contents/Resources/bin/inkscape"
alias rstudio="open -na Rstudio"
alias unzip-all="find . -name '*.zip' | while read filename; do unzip -o -d '`dirname '$filename'`' '$filename'; done;'"

# aliases to help with setting up virtual environments and ipython kernels with pyenv
alias virtualenv="pyenv virtualenv"
alias vkernel="ipython kernel install --user --name="


# If you receive "highlighters directory not found" error message,
# you may need to add the following to your .zshenv:
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

source $ZSH/oh-my-zsh.sh

# To activate the syntax highlighting, add the following at the end of your .zshrc:
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
