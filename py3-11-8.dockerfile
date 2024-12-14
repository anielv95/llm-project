FROM python:3.11.8
WORKDIR /gh
COPY ["./py3-11-8.dockerfile","install-pyenv.sh", "./"]
RUN ./install-pyenv.sh
CMD ["python"]