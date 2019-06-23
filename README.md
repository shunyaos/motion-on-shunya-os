# Motion on Shunya

Motion is a program that monitors the video signal from one or more
cameras and is able to detect if a significant part of the picture has
changed. Or in other words, it can detect motion.

## Applications

Motion is perfect for video monitoring, so you guys can get creative in
its usage. We have listed a few usecases below.

1.  Webcam Server
2.  Pet camera
3.  Security System

### Installation

Follow these commands for installation :

``` shell
$ sudo opkg update
$ sudo opkg install git
$ git clone https://github.com/shunyaos/motion-on-shunya-os.git
$ cd motion-on-shunya-os
$ chmod +x install-motion.sh
$ ./install-motion.sh
```

### Configuration

Follow these commands for Configuration :

``` shell
$ chmod +x config-motion.sh
$ ./config-motion.sh
```

### Testing

Login to your browser and type \<Machine\_ip\_adderss\>:8080 for Web
control panel. This gives you options to optimize your stream.

And Login to your browser and type \<Machine\_ip\_adderss\>:8081 for Web
streaming. This will show you live stream of all the cameras connected
to your server.
