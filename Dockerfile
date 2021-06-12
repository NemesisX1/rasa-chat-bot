FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip
ADD . /app/
RUN chmod +x /app/start_services.sh
RUN pip install -r /app/requirements.txt
CMD /app/start_services.sh