all:
	make -C testdata

git-print:
	@echo GIT_COMMIT_SHA : $(GIT_COMMIT_SHA)
	@echo GIT_TAG_VERSION : $(GIT_TAG_VERSION)

git-origin-push:
	git add . 
	git commit -m 'various'
	git push origin master

GIT_COMMIT_SHA=$(shell git rev-parse HEAD)
GIT_TAG_VERSION=v3.1.5

git-origin-tag-push:
	git tag -a $(GIT_TAG_VERSION) $(GIT_COMMIT_SHA) -m "some commit msg"
	git push origin $(GIT_TAG_VERSION)
