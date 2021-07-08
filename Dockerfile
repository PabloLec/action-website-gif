FROM ubuntu:latest

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install python3 python3-pip firefox-geckodriver
RUN DEBIAN_FRONTEND="noninteractive" pip install --upgrade --no-cache-dir pip-with-requires-python && \
    pip install --upgrade --no-cache-dir --prefer-binary selenium Pillow
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install iputils-ping dnsutils
WORKDIR /app

COPY entrypoint.sh .
COPY script.py .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]

#https://nelkinda.com/blog/xeyes-in-docker/
#https://blog.jessfraz.com/post/docker-containers-on-the-desktop/
#https://www.cloudsavvyit.com/10520/how-to-run-gui-applications-in-a-docker-container/
