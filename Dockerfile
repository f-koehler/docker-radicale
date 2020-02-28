FROM python:buster

RUN python3 -m pip install --upgrade radicale==2.1.11
EXPOSE 5232
VOLUME /app/data
VOLUME /app/config

CMD ["python3", "-m", "radicale", "--config", "/app/config/config", "--storage-filesystem-folder=/app/data/"]
