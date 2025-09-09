FROM python:3.9-slim

ARG PORT=8000

WORKDIR /app

COPY babyshop_app/ $WORKDIR

EXPOSE ${PORT}

VOLUME /app

RUN groupadd developer && useradd -m -g developer pythonuser && chown -R pythonuser /app

USER pythonuser

ENTRYPOINT ["/bin/bash", "script.sh"]