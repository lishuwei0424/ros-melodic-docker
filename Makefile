help:
	@echo "   make build              - build all images"
	@echo "   make clean              - remove all images"
build:
	@docker build  -t  loam:melodic   -f  Dockerfile   .
clean:
	@docker rmi -f loam:melodic 
