

gen:
	rm public -fr
	hugo --theme=hyde --baseUrl="http://korbenzhang.github.io/"

pub: gen 
	cd public && git add .
	cd public && git add -u
	cd public && git commit -m "new deploy"
	cd public && git push --set-upstream origin master --force
	@echo "Push finished."

src:
	git add  .
	git add -u
	git commit -m "new deploy"
	git push

deps:
	go get -v github.com/gohugoio/hugo

