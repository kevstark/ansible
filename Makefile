help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

all: cameras birdnet ## Deploy all applications

cameras:	## Streaming cameras
	ansible-playbook -i hosts.yaml cameras.yaml

birdnet: 	## BirdNET sensors
	ansible-playbook -i hosts.yaml birdnet.yaml

