# Slambook2 in Docker
It's a Docker image for slambook2 codes from Dr.Gao Xiang, also can be built on a host machine!
In order to avoid the version problem from different libraries (e.g. Sophus, ceres, opencv etc) depended by slambook2 codes on different operating systems, the Docker image can form a virtual environment to run the codes. You can test the slambook2 codes in Docker, also build it on you own system (although only tested successfully on Ubuntu 16.04, it should work on other linux OSs).
# Build and Usage
## With Docker
build the Docker image in the repo root, like
```
docker build -t <your_image_name>:<tag> .
```
and "<>" can be replaced with "slambook2_docker:v1" as an example.
PS:Attention and not to ignore the end "."
After finishing building, you can start a container using
```
docker run -d -p 5900:5900 -v /dev/shm:/dev/shm <your_image_name>:<tag>
```
It will start a container which runs on the Ubuntu 16.04 with LXDE desktop environment, you can connect it with VNC viewer to obtain the display of the system (Many codes in slambook2 need window display). Also, the Docker image is built on fcwu/docker-ubuntu-vnc-desktop，for more details [here](https://github.com/fcwu/docker-ubuntu-vnc-desktop).
