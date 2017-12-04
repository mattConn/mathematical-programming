COMPILER = 'clang++-3.9'
FLAGS = '-std=c++11'
BINCHECK = if [ ! -d bin ]; then mkdir bin; fi;

bin/*: *.cpp
	$(BINCHECK) for f in *.cpp; do $(COMPILER) $(FLAGS) $$f -o bin/$$f.o; done;

clean:
	rm -rf bin
