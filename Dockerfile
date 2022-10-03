FROM continuumio/miniconda3

RUN set -x

RUN apt update -y
RUN apt upgrade -y

RUN apt install -y wget
RUN apt install -y sudo
RUN apt install -y vim

RUN conda update -y conda

RUN conda install -c conda-forge geopandas

RUN conda config --append channels conda-forge && \
conda install -y \
    osmnx \
    geopy \
    streamlit \
    plotly \
    jupyter \
    openpyxl