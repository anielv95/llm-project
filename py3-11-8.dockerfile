FROM python:3.11.8
WORKDIR /gh
RUN curl https://pyenv.run | bash &&\
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc &&\
        echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc &&\
        echo 'eval "$(pyenv init -)"' >> ~/.bashrc &&\
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile &&\
        echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile &&\
        echo 'eval "$(pyenv init -)"' >> ~/.profile &&\
        echo 'export PATH="$PATH:/root/.local/bin"' >> ~/.bashrc &&\
        apt update &&\
        apt install --yes pipx &&\
        pipx install poetry &&\
        /root/.local/pipx/venvs/poetry/bin/poetry self add 'poethepoet[poetry_plugin]'
CMD ["/bin/bash"]