install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	python -m pytest -vv -cov=myrepolib tests

lint:
	python -m pylint --disable=R,C test_hello.py
	
all: install lint test
	