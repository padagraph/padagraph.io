

install:
	npm install semantic-ui-css
	npm install pug
	npm install pug-cli -g
	
build:
	pug templates/ -o static
	cp -rf node_modules static/
	cp -rf images static/

run:
	cd static ;	python -m SimpleHTTPServer

clean:
	rm -rf static
	rm -rf node_modules
	
