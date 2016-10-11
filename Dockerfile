FROM therickys93/ubuntu14
ADD . /arduino
WORKDIR /arduino
RUN bash install.sh