def:
	docker build -t "circuitbreaker88/innova" .

run:
	docker run -v `pwd`/innova-data:/root/.innova -w /innova/src -i -t circuitbreaker88/innova bash

push:
	docker push "circuitbreaker88/innova"
