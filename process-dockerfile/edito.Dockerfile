FROM mambaorg/micromamba:2.0.5-ubuntu22.04

USER root

WORKDIR /code
RUN chown $MAMBA_USER:$MAMBA_USER /code

USER $MAMBA_USER

COPY conda_environment.yaml /code/
COPY main.py /code/

RUN micromamba install -y -n base -f /code/conda_environment.yaml && \
    micromamba clean --all --yes

CMD ["sh", "-c", "python /code/main.py"]