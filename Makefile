build:
	docker build -t icx .

run:
	docker run -it --rm icx bash 

version:
	docker run -it --rm icx icx --version 
