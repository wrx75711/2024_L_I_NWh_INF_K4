FROM python:3.10

ARG APP_DIR=/usr/src/hello_world_printer

WORKDIR /tmp
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p ${APP_DIR}
COPY hello_world/ ${APP_DIR}/hello_world/
COPY main.py ${APP_DIR}/

CMD PYTHONPATH=$PYTHONPATH:${APP_DIR} FLASK_APP=${APP_DIR}/hello_world flask run --host=0.0.0.0
