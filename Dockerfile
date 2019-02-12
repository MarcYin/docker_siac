FROM continuumio/miniconda3
RUN conda update -q conda
RUN conda create -n env python=3.6
RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH

# This will install latest version of GDAL
RUN conda install -c conda-forge -c f0xy gdal==2.3.3 pip scipy numpy requests s2-toa-to-lai
#RUN pip install S2-TOA-TO-LAI --user
