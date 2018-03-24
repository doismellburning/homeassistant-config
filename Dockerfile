FROM python:3.6

RUN mkdir /app
COPY . /app

RUN pip install -r /app/requirements.txt

EXPOSE 8123

CMD hass
