FROM python:3.12-slim

COPY requirements.txt /app/

COPY . /app/

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python","app.py"]