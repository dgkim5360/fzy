CFLAGS+=-Wall -Wextra -g -std=c99

all: fzy testscore

testscore: testscore.o match.o
	$(CC) $(CCFLAGS) -o $@ $^

test: testscore
	ruby test.rb

fzy: fzy.o match.o
	$(CC) $(CCFLAGS) -o $@ $^

clean:
	$(RM) fzy testscore *.o
