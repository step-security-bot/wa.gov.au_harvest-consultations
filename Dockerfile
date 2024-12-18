FROM ghcr.io/astral-sh/uv:debian

LABEL org.opencontainers.image.source=https://github.com/wagov-dtt/wa.gov.au_harvest-consultations
LABEL org.opencontainers.image.description="Harvest consultations with sqlmesh"
LABEL org.opencontainers.image.licenses=Apache-2.0

# Copy the project into the image
ADD . /app

# Sync the project into a new environment, using the frozen lockfile
WORKDIR /app
RUN uv sync --frozen

CMD ["uv", "run", "sqlmesh", "ui"]