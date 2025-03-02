DOCKEREXE=
ifneq ($(UNAME), Linux)
    DOCKEREXE :=.exe
endif

.PHONY: help

# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

install: ## installs dependancies
	yarn install

run: install ## runs project, listens on port 8000
	yarn develop -H 0.0.0.0
