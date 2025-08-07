# How to Record Streaming Audio

DRAFT

## GNOME Sound Recorder

```
sudo apt install gnome-sound-recorder
```

## Ubuntu 22.04 LTS with PulseAudio

https://github.com/JayXT/RecordAudioOutput

```
sudo apt install lame

pacmd list-sinks | grep -e 'name:' -e 'index' -e 'Speakers'

target_sink=${name}.monitor

parec -d $target_sink --volume=65536 | lame -r -V7 - $filename
```

## Linux Mint 22 with PipeWire

https://elfsternberg.com/blog/gist-intercept-and-record-linux-audio-streams/

```
pactl list sink-inputs | grep -E 'Input #|application\.name'

pw-record --latency=20ms --volume=1.0 --format=f32 \
 --channel-map stereo --latency=20ms \
 --rate 44100 \
 --target="$SINK_NUMBER" "$RECORDED_FILE.rec"
          
ffmpeg -y -i test3 -acodec mp3 -b:a 128k test3.mp3

pw-dump Firefox
```

Try:

https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/2731

```
pw-record --target alsa_output.usb-Apple_Inc._Display_Audio_162F019A-00.analog-stereo test.wav -P '{ stream.capture.sink=true node.dont-reconnect=true }'
```
