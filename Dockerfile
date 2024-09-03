
FROM python:3.10-slim
FROM python:3.12-slim
WORKDIR /app
RUN pip install --no-cache-dir poetry
COPY pyproject.toml poetry.lock* ./
RUN poetry install --no-dev
COPY . .
CMD ["poetry", "run", "python", "homework2/main.py"]