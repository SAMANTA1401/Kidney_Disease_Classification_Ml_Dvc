FROM python:3.11-slim as build

RUN apt update -y && apt instll awscli -y
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
