FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .
COPY uv.lock .

RUN pip install uv
RUN uv sync --frozen

COPY . .

EXPOSE 8000

CMD ["uv", "run", "gunicorn", "run:app", "--bind", "0.0.0.0:8000"]