FROM python:3.9

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY pyproject.toml poetry.lock /app/

RUN pip install poetry && poetry config virtualenvs.create false && poetry install

COPY . /app/

# Copy the .env file
COPY .env /app/
