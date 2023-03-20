# Makefile for site maintenance
build: Gemfile
	bundle install

serve:
	bundle exec jekyll serve

clean:
	rm -rf .jekyll-cache
	rm -rf _site