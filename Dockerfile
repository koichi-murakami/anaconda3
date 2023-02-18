#
# Dockerfile for Anaconda3 instance
#
FROM continuumio/anaconda3:latest
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
ENV DEBCONF_NOWARNINGS yes

#
RUN apt-get update

RUN apt-get install -y zsh vim sudo

RUN pip install plotly==5.13.0 && \
    pip install "jupyterlab>=3" "ipywidgets>=7.6" && \
    pip install jupyter-dash && \
    pip install pydicom && \
    pip install gdcm

#
WORKDIR /
