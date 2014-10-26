target:
	@echo Hi!
	@echo Is node ready? If so, type as follow
	@echo $$ make open-demo.app

zip_name=app.nw
target_path=./demo.app
nodewebkit_path=node_modules/nodewebkit/nodewebkit
resource_path=$(nodewebkit_path)/Contents/Resources/$(zip_name)


open-demo.app: demo.app
	open ./demo.app

build: demo.app

demo.app: node_modules/nodewebkit
	zip -r $(resource_path) index.html package.json sample.txt style.css node_modules/lodash
	rm -rf $(target_path)
	cp -r $(nodewebkit_path) $(target_path)

node_modules/nodewebkit: install

clean:
	rm -rf $(target_path) $(resource_path)

install:
	npm install

run:
	npm start

