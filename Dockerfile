# Pull from CentOS RPM Build Image
FROM ubuntu:14.04

# Update the image
RUN apt-get update -y
COPY ./keyboard /etc/default/keyboard
RUN apt-get install -y --no-install-recommends python xterm xserver-xorg xinit xserver-xorg-video-fbdev lxde lxde-common lightdm firefox
