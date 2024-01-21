PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin

.PHONY: build check test dist clean install uninstall

all: check test build

build:
	mkdir ./bin
	cat ./src/header > ./bin/oauth2
	cat ./src/oauth2c.sh > ./bin/oauth2
	cat ./src/oauth2-client > ./bin/oauth2
	cat ./src/scopes > ./bin/oauth2
	cat ./src/oauth2-access-token > ./bin/oauth2
	cat ./src/oauth2-accessible-resources > ./bin/oauth2
	cat ./src/me > ./bin/oauth2
	chmod +x ./bin/oauth2

check:
	shfmt -d -ci -i 2 -ln posix src/*
	shellcheck src/*
	shellcheck spec/*
	shellspec --syntax-check

test:
	shellspec +q

fix:
	shfmt -w -ci -i 2 -ln posix src/*

dist: build
	tar czf shdotenv.tar.gz shdotenv

clean:
	rm -f shdotenv shdotenv.tar.gz

install:
	install -m 755 shdotenv $(BINDIR)/shdotenv

uninstall:
	rm $(BINDIR)/shdotenv