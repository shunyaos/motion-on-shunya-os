#!/bin/bash

# Make sure you install all the dependencies
sudo opkg install libmicrohttpd-dev ffmpeg-dev git

# Make the /usr/local directory incase it is absent
mkdir -p /usr/local

# Get the motion source from GitHub
git clone https://github.com/Motion-Project/motion.git

cd motion

# Generate configuration files 
autoreconf -f

# Configure motion with ffmpeg
./configure --prefix=/usr/local --with-ffmpeg

# Compile
make

# Install
sudo make install
