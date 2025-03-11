.PHONY: generate

definitions = ~/src/SigmaLink/mavlink/message_definitions/fotokite.xml
output = ~/src/SigmaLink/jsmavlink/mavlink.js

generate:
	python3 -m venv env && \
	. env/bin/activate && \
	pip install --upgrade pip && \
	pip install -r requirements.txt && \
	pip install pymavlink && \
	python3 tools/mavgen.py ${definitions} --output=$(output) --lang JavaScript_NextGen --wire-protocol 2.0
