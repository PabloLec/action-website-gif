FROM selenium/standalone-firefox

RUN sudo apt-get update && \
    sudo apt-get install --no-install-recommends -y python3-pip apt-utils
WORKDIR /app

COPY entrypoint.sh .
COPY script.py .

CMD ["python3", "script.py"]
