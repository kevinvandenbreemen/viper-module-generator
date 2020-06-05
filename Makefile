.PHONY: sandbox

sandbox:
	-rm -rf testing/sandbox/Sources/sandbox/TestModule
	vipergen generate TestModule --path=./testing/sandbox/Sources/sandbox
	cd testing/sandbox && swift build