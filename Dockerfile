FROM rayproject/ray:latest-gpu

# Copy your environment file into the image
COPY environment.yml /tmp/environment.yml

# Install the dependencies directly into the base ray environment
RUN conda env update -n base -f /tmp/environment.yml && \
    conda clean -afy
