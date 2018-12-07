FROM python:3.7.1
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD ./src/your-django-project/requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
