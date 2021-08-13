FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN mkdir /MusicPlayer
WORKDIR /MusicPlayer
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
