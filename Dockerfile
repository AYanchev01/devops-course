FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip

COPY src/requirements.txt .

RUN pip3 install -r requirements.txt

COPY src/ .

EXPOSE 5000

CMD ["python3", "app.py"]