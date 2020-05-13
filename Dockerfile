FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /app/app/static
COPY ./requirements.txt /tmp/requirements.txt
COPY ./MyApp/ /app/ 
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt
