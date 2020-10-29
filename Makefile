serve:
	hugo server --theme=hyde --buildDrafts

gen:
	rm public -fr
	hugo --theme=hyde --baseUrl="http://korbenzhang.github.io/"

pub: gen 
	cd public && git init
	cd public && git remote add origin git@github.com:korbenzhang/korbenzhang.github.io.git
	cd public && git add -A
	cd public && git commit -m "new deploy"
	cd public && git push -u --set-upstream origin master --force

src:
	#git remote add origin git@github.com:korbenzhang/korbenzhang.github.io.git
	git add  .
	git add -u
	git commit -m "new deploy"
	git push --set-upstream origin source --force

deps:
	go get -v github.com/gohugoio/hugo

theme:
	cd themes && git clone https://github.com/datacobra/hugo-vitae.git

