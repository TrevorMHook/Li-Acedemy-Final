FROM python:3.9.1 as development
ARG APP_DIR
WORKDIR ${APP_DIR}/

COPY requirements.txt ${APP_DIR}/
RUN pip install -r requirements.txt

FROM development AS productions
CMD scripts/start_app.sh