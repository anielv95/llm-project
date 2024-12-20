install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C src/*.py

format:
	black src/*.py &&\
		black notebooks/*.ipynb

test:
	python -m pytest -vv -s --cov=functions src/test_functions.py

date:
	echo "" >> next-steps.md &&\
	TZ='America/Mexico_City' date "+%Y-%m-%d %H:%M:%S %z" >> next-steps.md &&\
	echo "" >> next-steps.md