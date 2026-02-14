.PHONY: run build check

IMAGE=paybridge-gateway-svc

run:
	docker run --rm -it -p 8000:8000 -v "%cd%:/etc/krakend" devopsfaith/krakend run -c /etc/krakend/krakend.json

check:
	docker run --rm -v "%cd%:/etc/krakend" devopsfaith/krakend check -c /etc/krakend/krakend.json

build:
	docker build -t $(IMAGE) .