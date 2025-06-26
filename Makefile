.PHONY: all install build test package

all:	install build package copy-vsix

install:
	npm install

build:
	npm run build

test:
	npm run test

package:
	cd vscode-lean4 && npm run package

copy-vsix:
	cp vscode-lean4/*.vsix ~/Downloads/
