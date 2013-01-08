all: jquery.jump.md jquery.jump.js

%.md: %.js.sdoc makefile
	sdoc cat markdown::$< > $@

%.js: %.js.sdoc makefile
	sdoc cat code.js::$< > $@
