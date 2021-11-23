FROM python:3.6
WORKDIR /code
ENV  FLASK_APP=app.py
ENV  FLASK_RUN_HOST=0.0.0.0
COPY * ./
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
EXPOSE 5000
CMD [ "flask", "run"]
