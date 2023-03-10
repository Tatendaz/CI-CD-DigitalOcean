# syntax=docker/dockerfile:1.4
FROM python:3.10-alpine

WORKDIR /code

COPY requirements.txt /code
RUN pip install -r requirements.txt

COPY . /code

ENTRYPOINT ["python3"]
CMD ["flaskapp.py"]

