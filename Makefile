def:
	docker build -t "pyramation/innova" .

run:
	docker run -v `pwd`/innova-data:/root/.innova -w /innova/src -i -t pyramation/innova bash

push:
	docker push "pyramation/innova"
