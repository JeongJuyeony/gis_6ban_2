FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/JeongJuyeony/gis_6ban_2.git

WORKDIR /home/gis_6ban_2/

RUN echo "SECRET_KEY=django-insecure-^v=avci$5z7ik_5u)6m4@-1u)%#5cf*g&_g)!7m^ix070^0-12" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]