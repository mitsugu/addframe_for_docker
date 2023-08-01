FROM ubuntu:rolling
WORKDIR /root
RUN apt update
RUN apt upgrade -y
RUN apt install -y bash
RUN apt install -y bsdextrautils
RUN apt install -y imagemagick
RUN apt install -y exiftool
RUN apt install -y wget
RUN apt install -y curl
RUN wget -P /usr/local/sbin https://raw.githubusercontent.com/mitsugu/addframe/main/addframe
RUN chmod +x /usr/local/sbin/addframe
RUN mkdir -p /tmp/work
ENTRYPOINT ["/usr/local/sbin/addframe"]
#CMD ["/bin/bash"]

