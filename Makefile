SERVICE := app-insight

all: help

help: ## Show help messages
	@echo "Website - ${SERVICE} "
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

.PHONY: init
install: ## Install the dependencies
	pnpm install

run: ## Run the app
	pnpm run serve