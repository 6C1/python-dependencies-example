setup: pre_requirements dependencies

pre_requirements:
	@pip install -r pre_requirements.txt

requirements.txt: setup.py
	@pip-compile --generate-hashes --output-file requirements.txt

dev_requirements.txt: dev_requirements.in
	@pip-compile --generate-hashes --output-file dev_requirements.txt dev_requirements.in

dependencies:
	@pip-sync dev_requirements.txt requirements.txt
	@pip check

requirements_files: requirements.txt dev_requirements.txt