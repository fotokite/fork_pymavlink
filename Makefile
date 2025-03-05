.PHONY:

definitions = ../SigmaLink/mavlink/message_definitions/fotokite.xml
output = ../SigmaLink/jsmavlink/mavlink.js

generate:
	python3 tools/mavgen.py ${definitions} --output=$(output) --lang JavaScript_NextGen --wire-protocol 2.0

