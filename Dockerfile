FROM nginx:latest

LABEL author="José Francisco"

RUN apt update \
    && apt install git -y \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/josejuansanchez/2048.git /app \
    && mv /app/* /usr/share/nginx/html \
    && rm -rf /app

