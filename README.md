# llm-project
llm-project

Steps to install pyenv in linux

```
curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
exec "$SHELL"
```

Steps to install pipx in linux

```
apt update
apt install pipx
pipx ensurepath
```

Install poetry:

```
pipx install poetry
pipx upgrade poetry
```

Add a directory to PATH variable:
```
echo 'export PATH="$PATH:/root/.local/bin"' >> ~/.bashrc
source ~/.bashrc
```