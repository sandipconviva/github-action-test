FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
