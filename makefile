all: jquery.jump.md jquery.jump.js

%.md: %.js.sdoc
	sdoc cat markdown::$@.js > $@

%.js: %.js.sdoc
	sdoc cat $@ > $@
