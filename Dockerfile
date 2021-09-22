FROM ruby:2-alpine as jekyll

RUN apk add --no-cache build-base gcc bash cmake git
RUN gem install bundler -v "~>1.0" && gem install bundler jekyll
EXPOSE 4000
WORKDIR /site
ENTRYPOINT [ "jekyll" ]
CMD [ "--help" ]

FROM jekyll as jekyll-serve
COPY docker-entrypoint.sh /usr/local/bin/
CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]