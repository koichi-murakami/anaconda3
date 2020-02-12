#
# Dockerfile for Anaconda3 instance
#
FROM continuumio/anaconda3:latest
LABEL maintener="Koichi Murakami <koichi.murakami@kek.jp>"

#
ENV DEBCONF_NOWARNINGS yes

#
RUN apt-get update

RUN apt-get install -y zsh vim

RUN conda install -y -c plotly plotly=4.5.0 && \
    conda install -y "notebook>=5.3" "ipywidgets>=7.2"

#
WORKDIR /
