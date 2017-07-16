v4l2-ctl --list-devices
#v4l2-ctl --set-fmt-video=width=800,height=600,pixelformat=4
#v4l2-ctl --stream-mmap=3 --stream-count=100 --stream-to=$1
#v4l2-ctl --device /dev/video1 --stream-mmap --stream-to=frame.raw --stream-count=1 && convert -size 640x480 -depth 16 uyvy:frame.raw frame.png
v4l2-ctl --set-fmt-video=width=640,height=480,pixelformat='PJPG'
#v4l2-ctl --stream-mmap=2 --stream-count=1 --stream-to=capture.raw && convert -size 640x480 -depth 24 uyvy:capture.raw capture.png
v4l2-ctl --device /dev/video1 --stream-mmap=4 --stream-to=frame.jpg --stream-count=1
exit
