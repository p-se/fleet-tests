all: clean build

.PHONY: clean build

build:
	cd charts && helm package ../src/config-chart
	
clean:
	rm charts/*
