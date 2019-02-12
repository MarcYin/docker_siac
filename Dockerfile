FROM continuumio/miniconda3

RUN conda create -n env python=3.6
RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH

# This will install latest version of GDAL
RUN conda activate env
RUN conda install -c conda-forge gdal==2.3.3 pip scipy numpy requests
RUN conda install -c f0xy S2-TOA-TO-LAI

