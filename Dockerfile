FROM dorowu/ubuntu-desktop-lxde-vnc:xenial
COPY . /root
WORKDIR /root
RUN apt-get update && \
    apt-get install -y aptitude && \
    aptitude install -y gcc-5=5.4.0-6ubuntu1~16.04.12 g++-5=5.4.0-6ubuntu1~16.04.12 && \
    apt-get install -y libssl-dev libsuitesparse-dev qtdeclarative5-dev libqglviewer-dev  qt5-qmake libx11-dev libxmu-dev libglu1-mesa-dev libgl2ps-dev libxi-dev g++ libzip-dev libpng12-dev libcurl4-gnutls-dev libfontconfig1-dev libsqlite3-dev libglew*-dev libssl-dev libpcl-dev freeglut3 freeglut3-dev python-dev python3-dev libgtk2.0-dev pkg-config pcl-tools octovis
RUN chmod 777 install.sh && ./install.sh
