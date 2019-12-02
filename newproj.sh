#!/bin/sh

# Usage: $ sh newproj.sh $pythonversion $projectname

mkdir $2 && cd $2 && pyenv local $1 && pyenv virtualenv venv-$2 && pyenv local venv-$2 && pyenv activate venv-$2
