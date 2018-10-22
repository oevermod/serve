BINARY := serve

SOURCEDIR=.
SOURCES := $(shell find $(SOURCEDIR) -name '*.go')

SRC_BIN :="${SOURCEDIR}/${BINARY}"
DST_BIN :="/usr/local/bin/${BINARY}"

.DEFAULT_GOAL := $(BINARY)

$(BINARY): $(SOURCES)
	go get -t ./...
	go build ${LDFLAGS} -o ${BINARY}

.PHONY: install
install:
	scp ${SRC_BIN} ${DST_BIN}

.PHONY: uninstall
uninstall:
	if ! [ -f ${DST_BIN} ] ; then rm ${DST_BIN} ; fi

.PHONY: clean
clean:
	if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi
