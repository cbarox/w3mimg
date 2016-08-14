SRCS = w3mimgdisplay.c w3mimg.c ./x11/x11_w3mimg.c ./fb/fb.c ./fb/fb_img.c ./fb/fb_imlib2.c ./fb/fb_w3mimg.c

all: w3mimgdisplay

w3mimgdisplay: $(SRCS)
	gcc -o w3mimgdisplay $(SRCS) -lX11 -lImlib2 -O2 $(OPTS)

clean:
	rm -f w3mimgdisplay

install:
	cp w3mimgdisplay /usr/local/bin

uninstall:
	rm /usr/local/bin/w3mimgdisplay