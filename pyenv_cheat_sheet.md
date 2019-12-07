# pyenv-virtualenv cheat sheet

## instructions to nuke your previous anaconda installation

1. install and run the Anaconda uninstaller

```sh
conda install anaconda-clean && anaconda-clean --yes
```

2. find leftover directories and remove them (with rm -rf, or more conservatively)

```sh
grep -iR "Anaconda3" ~
```

3. check your .bash_profile, .zshrc, or equivalent login profile and delete the conda init lines added by "Anaconda.3 xxxx.xx installer" and anything anaconda-related in your path.

4. restart your shell.

```sh
source ~/.zshrc
```

## install pyenv and pyenv-virtualenv (Homebrew/macOS instructions)

for linux/non-Homebrew installations, install from source.
if you want _all_ your python inside of pyenv, skip step 1.

1. install Homebrew's python3. 

```sh
brew install python3
```

2. install pyenv and pyenv-virtualenv

```sh
brew install pyenv pyenv-virtualenv
```

3. configure pyenv and pyenv-virtualenv

```sh
echo ' export PYENV_ROOT= "$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH=$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
```

4. install python versions with pyenv

- get a list of options: `pyenv install --list`
- remove a version: `pyenv uninstall`
- install a version: `pyenv install`

5. set your global and local pythons

- set your global python: `pyenv global 3.x.x`
- set your local (project) python--**important** for venv switching! `pyenv local 3.x.x`
- set a version for the current shell: `pyenv shell 3.x.x`
- use a one-off python module or command: `pyenv exec python [-m, -c]`

6. create and activate virtual environments

- set local python: `pyenv local 3.x.x` or `pyenv local anaconda xxxx.xx`
- make a venv: `pyenv virtualenv 3.x.x name-of-your-new-venv`
- set and activate: `pyenv local name-of-your-new-venv && pyenv activate name-of-your-new-venv`
- if you used conda: `conda activate your-new-conda-env`

## Optional helpful pyenv management

- alias virtualenv to pyenv virtualenv

```sh
echo 'alias virtualenv="pyenv virtualenv"' >> ~/.zshrc
```

- delete virtual envs created with pyenv: `pyenv uninstall venv-name` or `rm -rf venv-directory`

## Set up Visual Studio Code for Python and Jupyter

1. Get VSCode: `brew cask install visual-studio-code`
2. install and enable the [Python extension](https://github.com/Microsoft/vscode-python)
3. In VSCode, open the command palette (command+shift+P) and configure the Terminal options to integrate with the system terminal (e.g., zsh and iTerm2)

- vscode will now inherit your venvs and automatically switch them with pyenv virtualenv

4. In VSCode, open the command palette (command+shift+P) and choose `Shell command: Install 'code' command in path`

- now you can open files and directories from the command line with `code .`, `code file.py`, `code. /path/to/stuff/`, etc.

5. launch a project directory with anaconda or jupyter enabled with `code /path/to/project`.
6. command+shift+P `Python: Create New Blank Jupyter Notebook` (or open an existing one, if you like)
7. convert notebooks to .py scripts with one click

## More VSCode fun

- use github integration (pull, diff, merge, push) directly from the editor
- install themes with syntax highlighting, code linters, testing, and more tools
- polyglot code support!