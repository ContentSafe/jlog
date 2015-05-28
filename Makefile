BASE_DIR = .
SRC_DIR = $(BASE_DIR)/src

CFLAGS = -c -O2 -Wall # -ggdb -Wextra
LDFLAG = -lsystemd

default: journal_logger

journal_logger: journal_logger.o
	gcc journal_logger.o $(LDFLAG) -o journal_logger

journal_logger.o: $(SRC_DIR)/journal_logger.c
	gcc $(CFLAGS) $(SRC_DIR)/journal_logger.c -o journal_logger.o

clean: 
	rm -f journal_logger*