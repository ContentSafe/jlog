CFLAGS = -O2 -Wall # -ggdb -Wextra
SYSTEMD_LDFLAGS = -lsystemd
LDLIBS = $(SYSTEMD_LDFLAGS)

default: jlog

clean:
	rm -f jlog.o jlog
