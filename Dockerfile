FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /app \
    && mkdir /app/tahweela

# Set project specific environment variables
ENV HOME=/app
ENV TAHWEELA_HOME=/app/tahweela/tahweela
WORKDIR $TAHWEELA_HOME


COPY requirements.txt .
RUN pip install -r requirements.txt
