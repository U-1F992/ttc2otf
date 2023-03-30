FROM debian:11
WORKDIR /home
COPY main.py /home/
COPY entrypoint.sh /home/
RUN apt update &&\
    apt -y install --no-install-recommends python3-fontforge=1:20201107~dfsg-4 &&\
    chmod +x entrypoint.sh
CMD [ "./entrypoint.sh" ]
