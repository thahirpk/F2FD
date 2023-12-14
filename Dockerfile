FROM python:3.8.13-slim-buster
WORKDIR /F2F
COPY ./F2F ./

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /F2F/requirements.txt --no-cache-dir

# CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
CMD ["gunicorn","main_app.wsgi:application","--bind", "0.0.0.0:8000"]