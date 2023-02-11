install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	#python -m pytest -vv -cov=myrepolib tests/*py

lint:
	pylint --disable=R,C hello.py
	
all: texttall lint test
	