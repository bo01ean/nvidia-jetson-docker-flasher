# nvidia-jetson-docker-flasher
Docker config to flash Jetson TX1

Tested on Ubuntu 16.04, most Ubuntus should work.

Install Docker
-----

Exercise left to reader ...



Usage:
-----

On Host: Build Container
-----

```git clone https://github.com/bo01ean/nvidia-jetson-docker-flasher/ jetpacker
cd jetpacker
sudo docker build -t jetpacker .```

On Host: Allow Docker to get DISPLAY in X
-----
````xhost +local:docker```

Run Container:
-----
```sudo docker run -ti --rm  -e DISPLAY=$DISPLAY --privileged --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v/tmp/:/data -v /dev:/dev -v /lib/modules:/lib/modules jetpacker```


