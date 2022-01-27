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

RUN conda install -y -c plotly plotly=5.5.0 && \
    conda install -y "jupyterlab>=3" "ipywidgets>=7.6" && \
    conda install -y -c conda-forge -c plotly jupyter-dash && \
    conda install -y -c conda-forge pydicom && \
    conda install -y -c conda-forge gdcm

#
WORKDIR /
