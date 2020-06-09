# example of docker-ompose-less invocation of dockerized op25
sudo docker run -it --privileged \
  -v /dev/bus/usb:/dev/bus/usb \
  --device /dev/snd \
  -p 8765:8765 \
  --dns 8.8.8.8 op25:1.0 bash -c \
  "cd /op25/op25/gr-op25_repeater/apps/ && python rx.py -S 960000 --args=\"rtl\" -N \"LNA:40\" -f \"852.3625e6\" -o 25000 -T trunk.tsv -V -U -w -2 -l 'http:*:8765'"
