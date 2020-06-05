.PHONY: sandbox dropsandbox

dropsandbox:
	-rm -rf testing/sandbox/Sources/sandbox/TestModule
	-rm -rf testing/sandbox/.build
	-rm -rf testing/sandbox/Package.resolved

sandbox: dropsandbox
	vipergen generate TestModule --path=./testing/sandbox/Sources/sandbox
	cd testing/sandbox && swift build