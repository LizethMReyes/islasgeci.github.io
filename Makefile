serve:
	docker run \
		--detach \
		--name islasgeci.github.io \
		--publish 4000:4000 \
		--rm \
		--volume ${PWD}:/srv/jekyll\
		jekyll/jekyll \
		jekyll serve
down:
	docker stop islasgeci.github.io
	