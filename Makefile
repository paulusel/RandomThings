PROJECT_DIR = ${HOME}/Projects/polin/scripts
SRC_DIR = ${PROJECT_DIR}/src
BUILD_DIR = ${PROJECT_DIR}/build
INST_DIR = ${HOME}/.local/bin

build:
	mkdir ${BUILD_DIR}
	install -t ${BUILD_DIR} ${SRC_DIR}/mpdhelper ${SRC_DIR}/winpass
clear:
	rm -rf ${BUILD_DIR}
all:
	$(MAKE) clear
	$(MAKE) build
install:
	cp -u ${BUILD_DIR}/winpass ${INST_DIR}
	cp -u ${BUILD_DIR}/mpdhelper ${INST_DIR}
uninstall:
	rm ${INST_DIR}/mpdhelper
	rm ${INST_DIR}/winpass
