FROM ubuntu:latest

WORKDIR .

COPY . .
RUN apt-get update && apt-get install -y ffmpeg



RUN pip3 install -r requirements.txt

CMD ["start.sh"]

ENTRYPOINT ["bash"]
