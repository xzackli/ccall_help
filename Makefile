CC=gcc 
 
CFLAGS=-c -Wall -fPIC
 
SOURCES=sht.c 
OBJECTS=$(SOURCES:.c=.o)

test:
	$(CC) main.c sht.c -o main

.c.o:
	$(CC) $(CFLAGS) $< -o $@ 
 
lib: $(OBJECTS)
	$(CC) -shared -fPIC -o sht.so $(OBJECTS)
 
clean:
	rm *.o *.so main