FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git ffmpeg -y

WORKDIR /app

COPY . /app/

RUN pip3 install --upgrade pip --break-system-packages
RUN pip3 install -r requirements.txt --break-system-packages

CMD ["python3", "main.py"]