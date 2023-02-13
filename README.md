# uvcvideo_h264
Driver for using h264 webcam in linux

# Installing

The git package is needed to fetch this source code and the driver needs make, gcc and linux header files to be compiled. To install them run 

```
sudo apt update
sudo apt install -y make gcc git raspberrypi-kernel raspberrypi-bootloader rasberrypi-kernel-headers
```

To download the source code fetch it from github

```
git clone https://github.com/Project-Pitchside/uvcvideo_h264.git
```

Finally to install the driver execute the commands

```
cd uvcvideo_h264
make install
```

