COMPILER = clang
BIN = bbp

$(BIN) : main.c bbp-series-term.h
	$(COMPILER) main.c -o $@

check:
	./$(BIN)

clean:
	rm $(BIN)
