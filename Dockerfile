# Pull from base image
FROM python:3.7-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory inside docker container
# if we need to run any command inside container,
# docker will run from this directory
WORKDIR /code

# Install dependencies
RUN pip install django==2.2.3 chardet==3.0.4 defusedxml==0.6.0 django-appconf==1.0.3 django-braces==1.13.0
RUN pip install psycopg2-binary==2.8.3 django-imagekit==4.0.2 idna==2.8 oauthlib==3.1.0 pilkit==2.0 python3-openid==3.1.0 pytz==2019.2
RUN pip install django-crispy-forms==1.7.1 redis==2.10.6 requests==2.22.0 requests-oauthlib==1.3.0 six==1.13.0 sorl-thumbnail==12.5.0 sqlparse==0.3.0
RUN pip install django-allauth==0.38.0 urllib3==1.25.7 wincertstore==0.2 pillow==5.4.1 django-debug-toolbar==1.11 whitenoise==4.1.2 gunicorn==19.9.0 dj-database-url==0.5.0 django-taggit


# Copy project from local folder where Dockerfile is (.) to
# /code/ directory inside container
COPY . /code/