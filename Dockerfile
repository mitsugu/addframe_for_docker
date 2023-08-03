FROM ubuntu:rolling
WORKDIR /root
RUN apt update && apt upgrade -y
RUN apt install -y sudo
RUN apt install -y bash
RUN apt install -y tzdata
RUN apt install -y language-pack-ja-base
RUN apt install -y language-pack-ja
RUN apt install -y fonts-noto-cjk
RUN apt install -y locales
RUN apt install -y fonts-migmix
RUN apt install -y bsdextrautils
RUN apt install -y imagemagick
RUN apt install -y exiftool
RUN apt install -y wget
RUN apt install -y curl
RUN locale-gen ja_JP.UTF-8
ENV TZ Asia/Tokyo
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
RUN echo '\n\
    set fenc=utf-8\n\
    set encoding=utf-8\n\
    set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8\n\
    set fileformats=unix,dos,mac\n\
    syntax on' >> /root/.vimrc
RUN wget -P /usr/local/sbin https://raw.githubusercontent.com/mitsugu/addframe/main/addframe
RUN chmod +x /usr/local/sbin/addframe
RUN mkdir -p /tmp/work
ENTRYPOINT ["/usr/local/sbin/addframe"]
#CMD ["/bin/bash"]

