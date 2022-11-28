all: clean build

.PHONY: clean build install

build-config-chart:
	cd charts/config-chart && helm package ../../src/config-chart

install-config-chart:
	helm install fleet-tests-config-chart charts/config-chart/config-chart-0.0.1+20221118113600.tgz

build: build-config-chart
	
clean:
	find charts -name '*.tgz' -delete

install: install-config-chart
