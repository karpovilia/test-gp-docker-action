FROM pandoc/core:latest-ubuntu
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get -y install pandoc-citeproc
RUN apt-get -y install texlive-xetex
RUN apt-get -y install texlive-lang-cyrillic
RUN apt-get -y install fonts-cmu