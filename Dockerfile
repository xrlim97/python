FROM python:3.8-buster

RUN pip3 install flask flask_restful

WORKDIR /app

COPY main.py /app

EXPOSE 5000

CMD ["python3", "main.py"]