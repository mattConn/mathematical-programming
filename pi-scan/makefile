COMPILER = clang
SCANNER = scanner
TEXT = pi.text

$(SCANNER).out : $(SCANNER).l 
	flex $^; $(COMPILER) lex.yy.c -o $@; rm lex.yy.c;

check:
	./$(SCANNER).out $(TEXT)

clean:
	rm $(SCANNER).out
