FROM python:3.9.7-slim-bullseye
LABEL maintainer="Daniel Molitor"

COPY ["requirements.txt", "dask-launch.sh", "./"]

RUN mkdir .venv
RUN python3 -m venv .venv/dask-cluster
RUN . .venv/dask-cluster/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8786 8787

ENTRYPOINT ["bash", "dask-launch.sh"]