FROM python:3.6-alpine

RUN pip install flask

COPY ./app.py .

ENTRYPOINT ["python"]

CMD ["app.py"]