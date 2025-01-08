FROM python:3.11.8
WORKDIR /gh
ARG GH_EMAIL \
        GH_USER
ENV GH_EMAIL=$GH_EMAIL \
        GH_USER=$GH_USER \
        PATH=/root/.local/bin:$PATH
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
        poetry self add 'poethepoet[poetry_plugin]' &&\
        git config --global user.email $GH_EMAIL &&\
        git config --global user.name $GH_USER
RUN apt update && apt install -y lsb-release &&\
        wget -O - https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg &&\
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list &&\
        apt update && apt install terraform
CMD ["/bin/bash"]