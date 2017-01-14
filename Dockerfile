FROM therickys93/ubuntu14java
ENV ARDUINO_IDE_VERSION 1.8.0
ENV ARDUINO_PATH /opt/arduino-${ARDUINO_IDE_VERSION}
RUN apt-get update && apt-get install wget xz-utils -y
RUN wget -q -O- https://downloads.arduino.cc/arduino-${ARDUINO_IDE_VERSION}-linux64.tar.xz | tar xJ -C /opt
RUN ln -s ${ARDUINO_PATH}/arduino /usr/local/bin
RUN ln -s ${ARDUINO_PATH}/arduino-builder /usr/local/bin
ADD build.options.json ${ARDUINO_PATH}