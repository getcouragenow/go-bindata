all:
	make -C testdata


COMMIT_SHA=$(shell git rev-parse HEAD)
TAG_VERSION=v3.1.5

tag-print:
	@echo COMMIT_SHA : $(COMMIT_SHA)
	@echo TAG_VERSION : $(TAG_VERSION)

tag-push:
	git tag -a $(TAG_VERSION) $(COMMIT_SHA) -m "some commit msg"
	git push origin $(TAG_VERSION)