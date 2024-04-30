deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt     

lint: 
	flake8 hello_world test

run:
	python3.10 main.py

.PHONY: test
test:
	PYTHONPATH=. py.test --verbose -s