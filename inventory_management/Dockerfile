FROM python:slim-buster

WORKDIR /app

COPY ./app/. ./

COPY requirements.txt ./


RUN pip install --no-cache-dir -r requirements.txt

# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "$PORT"]
CMD uvicorn main:app --host 0.0.0.0 --port $PORT