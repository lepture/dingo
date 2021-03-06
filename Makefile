SSHCOMMAND_URL ?= https://raw.github.com/progrium/sshcommand/master/sshcommand

DINGO_ROOT ?= /home/dingo
DINGO_LIB ?= /var/lib/dingo

CWD = $(shell pwd)

install: sshcommand copyfiles

copyfiles:
	cp ${CWD}/dingo /usr/local/bin/dingo
	rm -fr ${DINGO_LIB}
	mkdir -p ${DINGO_LIB}
	cp -r ${CWD}/plugins ${DINGO_LIB}/plugins

sshcommand:
	wget -qO /usr/local/bin/sshcommand ${SSHCOMMAND_URL}
	chmod +x /usr/local/bin/sshcommand
	sshcommand create dingo /usr/local/bin/dingo
