FROM python:3.8-buster
RUN pip3 install flask flask_restful
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
COPY main.py /app

EXPOSE 80

CMD ["python3", "main.py"]