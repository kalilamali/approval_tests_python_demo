install:
	pip install -r requirements.txt

uninstall:
	pip uninstall -r requirements.txt

test:
	pytest --approvaltests-use-reporter='PythonNative'

clean:
	for file in *.received.txt; do rm "$$file" "$${file%.received.txt}.approved.txt"; done
	
gold_master:
	for file in *.received.txt; do mv -f "$$file" "$${file%.received.txt}.approved.txt"; done
