all:
	gcc -Wall -g segmenter.c -o segmenter -lavformat -lavcodec -lavutil -lm -lpthread -lz -lx264 -lxvidcore -lfaac  -lmp3lame -lbz2

clean:
	rm segmenter

install: segmenter
	cp segmenter /usr/local/bin/

uninstall:
	rm /usr/local/bin/segmenter
