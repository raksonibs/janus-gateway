#!/bin/sh

# gst-launch-1.0 -v videotestsrc ! decodebin ! x264enc ! rtph264pay ! udpsink host=127.0.0.1 port=5004

gst-launch-1.0 \
  videotestsrc ! \
    video/x-raw,width=320,height=240,framerate=15/1 ! \
    videoscale ! videorate ! videoconvert ! x264enc ! \
      rtph264pay ! udpsink host=127.0.0.1 port=5004
