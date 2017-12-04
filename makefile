COMPILER = 'clang++-3.9'
FLAGS = '-std=c++11'

*.o: *.cpp
	for f in *.cpp; do $(COMPILER) $(FLAGS) $$f -o $$f.o; done;

clean:
	rm *.o
