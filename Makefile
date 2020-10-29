
serve:
	hugo  server

gen:
	rm public -fr
	hugo --theme=hugo-vitae --baseUrl="http://korbenzhang.github.io/"

pub: gen 
	cd public && git add .
	cd public && git add -u
	cd public && git commit -m "new deploy"
	cd public && git push --set-upstream origin master --force

src:
	git add  .
	git add -u
	git commit -m "new deploy"
	git push
	git push --set-upstream origin master --force

deps:
	go get -v github.com/gohugoio/hugo

theme:
	cd themes && git clone https://github.com/datacobra/hugo-vitae.git

