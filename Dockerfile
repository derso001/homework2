
FROM python:3.10-slim

WORKDIR /app

RUN pip install --no-cache-dir pip-tools

COPY pyproject.toml ./

RUN pip install --no-cache-dir .

COPY . .

CMD ["python", "main.py"]
