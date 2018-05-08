init:
	pip install -r requirements.txt

test:
	nosetests tests

docs:
	cd ./docs
	make html
	@echo "\033[95m\n\nBuild successful! View the docs homepage at docs/_build/html/index.html.\n\033[0m"

readme:
	pandoc README.md -s -o README.rst

version:
	./update_version.py

publish:
	python setup.py sdist
	python setup.py sdist upload


