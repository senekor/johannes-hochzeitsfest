build:
	mkdir -p build
	just _compile einladung.typ
	just _compile einladung-wanderung.typ

_compile file:
	typst compile --font-path fonts {{file}} build/{{without_extension(file)}}.pdf

clean:
	rm -rf build
