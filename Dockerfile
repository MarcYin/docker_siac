FROM continuumio/miniconda3
RUN conda config --add channels conda-forge --add channels f0xy --add channels jgomezdans
RUN conda create -n env gdal==2.3.3 pip scipy numpy requests s2-toa-to-lai
RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH

# This will install latest version of GDAL
#RUN conda install -c conda-forge -c f0xy gdal==2.3.3 pip scipy numpy requests s2-toa-to-lai
#RUN pip install S2-TOA-TO-LAI --user
