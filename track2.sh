pactl load-module module-null-sink sink_name="track2"
sink_properties=device.description="track2"
pactl load-module module-loopback source=track2.monitor sink=alsa_output.usb-0c76_USB_PnP_Audio_Device-00.analog-stereo rate=44100
