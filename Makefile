all: clean build

.PHONY: clean build install

build:
	cd charts && helm package ../src/config-chart
	
clean:
	rm charts/*

install:
	helm install fleet-tests-config-chart charts/config-chart-0.0.1+20221118113600.tgz
