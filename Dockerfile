FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/Grayson-choi/pinterest.git

WORKDIR /home/pinterest/pinterest

RUN pip install -r requirements.txt

RUN echo 'SECRET_KEY=kgd$(p-zyrx^g1y=!k5ef4m-t*oswy!v(c2x51i!kp0#1*z^86' > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]