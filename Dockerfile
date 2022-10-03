FROM python:3.8.10
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
ENTRYPOINT ["uvicorn", "main:app",  "--host", "0.0.0.0", "--port", "8500", "--reload"]