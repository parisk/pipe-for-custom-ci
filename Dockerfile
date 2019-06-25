FROM python:3.6-alpine

RUN pip install --upgrade pipenv==2018.11.26

WORKDIR /usr/src/app
COPY Pipfile Pipfile.lock ./

RUN pipenv install --system

COPY pipe.sh /pipe.sh
ENTRYPOINT ["/pipe.sh"]
