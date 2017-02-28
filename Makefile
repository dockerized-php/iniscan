build: build-base build-3.5 build-3.6 build-latest

test: build test-3.5 test-3.6 test-latest

build-base:
	docker build -t dockerizedphp/iniscan:base base

build-3.5:
	docker build -t dockerizedphp/iniscan:3.5 3.5

build-3.6:
	docker build -t dockerizedphp/iniscan:3.6 3.6

build-latest:
	docker build -t dockerizedphp/iniscan:latest latest

test-3.5:
	@echo "Test 3.5"
	@docker run --rm -v $(PWD)/tests:/tmp dockerizedphp/iniscan:3.5 scan --path=php.ini 2>/dev/null; true

test-3.6:
	@echo "Test 3.6"
	@docker run --rm -v $(PWD)/tests:/tmp dockerizedphp/iniscan:3.6 scan --path=php.ini 2>/dev/null; true

test-latest:
	@echo "Test latest"
	@docker run --rm -v $(PWD)/tests:/tmp dockerizedphp/iniscan:latest scan --path=php.ini 2>/dev/null; true
