PROJECT  =
HEADERS  =
OBJ 	 =
INCLUDES =
LDFLAGS  =
LIBS 	 =

CC = gcc
CFLAGS = -std=c99 -Wall -Werror -pedantic

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(PROJECT): $(OBJ)
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $^ $(LDFLAGS) $(LIBS)

clean:
	rm -f $(PROJECT) *.o
