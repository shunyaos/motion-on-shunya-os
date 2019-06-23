#!/bin/bash

FILE=/usr/local/etc/motion.conf

touch ${FILE}
cat <<EOF > ${FILE}
############################################################
# System control configuration parameters
############################################################

# Start in daemon (background) mode and release terminal.
daemon on

# Start in Setup-Mode, daemon disabled.
setup_mode off

# File to store the process ID.
; pid_file value

# File to write logs messages into.  If not defined stderr and syslog is used.
; log_file value

# Level of log messages [1..9] (EMG, ALR, CRT, ERR, WRN, NTC, INF, DBG, ALL).
log_level 6

# Target directory for pictures, snapshots and movies
target_dir /motion

# Video device (e.g. /dev/video0) to be used for capturing.
videodevice /dev/video0

# Parameters to control video device.  See motion_guide.html
; vid_control_params value

# The full URL of the network camera stream.
; netcam_url value

# Name of mmal camera (e.g. vc.ril.camera for pi camera).
; mmalcam_name value

# Camera control parameters (see raspivid/raspistill tool documentation)
; mmalcam_control_params value

############################################################
# Image Processing configuration parameters
############################################################

# Image width in pixels.
width 640

# Image height in pixels.
height 480

# Maximum number of frames to be captured per second.
framerate 30

# Text to be overlayed in the lower left corner of images
text_left CAMERA1

# Text to be overlayed in the lower right corner of images.
text_right %Y-%m-%d\n%T-%q

############################################################
# Motion detection configuration parameters
############################################################

# Always save pictures and movies even if there was no motion.
emulate_motion off

# Threshold for number of changed pixels that triggers motion.
threshold 1500

# Noise threshold for the motion detection.
; noise_level 32

# Despeckle the image using (E/e)rode or (D/d)ilate or (l)abel.
despeckle_filter EedDl

# Number of images that must contain motion to trigger an event.
minimum_motion_frames 1

# Gap in seconds of no motion detected that triggers the end of an event.
event_gap 60

# The number of pre-captured (buffered) pictures from before motion.
pre_capture 3

# Number of frames to capture after motion is no longer detected.
post_capture 0

############################################################
# Script execution configuration parameters
############################################################

# Command to be executed when an event starts.
; on_event_start value

# Command to be executed when an event ends.
; on_event_end value

# Command to be executed when a movie file is closed.
; on_movie_end value

############################################################
# Picture output configuration parameters
############################################################

# Output pictures when motion is detected
picture_output off

# File name(without extension) for pictures relative to target directory
picture_filename %Y%m%d%H%M%S-%q

############################################################
# Movie output configuration parameters
############################################################

# Create movies of motion events.
movie_output on

# Maximum length of movie in seconds.
movie_max_time 60

# The encoding quality of the movie. (0=use bitrate. 1=worst quality, 100=best)
movie_quality 45

# Container/Codec to used for the movie. See motion_guide.html
movie_codec mkv

# File name(without extension) for movies relative to target directory
movie_filename %t-%v-%Y%m%d%H%M%S

############################################################
# Webcontrol configuration parameters
############################################################

# Port number used for the webcontrol.
webcontrol_port 8080

# Restrict webcontrol connections to the localhost.
webcontrol_localhost off

# Type of configuration options to allow via the webcontrol.
webcontrol_parms 0

############################################################
# Live stream configuration parameters
############################################################

# The port number for the live stream.
stream_port 8081

# Restrict stream connections to the localhost.
stream_localhost off

##############################################################
# Camera config files - One for each camera.
##############################################################
; camera @sysconfdir@/motion/camera1.conf
; camera @sysconfdir@/motion/camera2.conf
; camera @sysconfdir@/motion/camera3.conf
; camera @sysconfdir@/motion/camera4.conf

##############################################################
# Directory to read '.conf' files for cameras.
##############################################################
; camera_dir @sysconfdir@/motion/conf.d 
EOF
