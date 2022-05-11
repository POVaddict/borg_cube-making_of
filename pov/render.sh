#!/bin/sh
for P in [0-9]*.pov
do
	povray +i${P} +w1024 +h768 +a -c
	cjpeg -sample 1x1 ${P%.pov}.tga > ${P%.pov}.jpg
	rm ${P%.pov}.tga
done
