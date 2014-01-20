SSHCOMMAND_URL ?= https://raw.github.com/progrium/sshcommand/master/sshcommand

DINGO_ROOT ?= /home/dingo
DINGO_LIB ?= /var/lib/dingo

CWD = $(shell pwd)

install: sshcommand copyfiles

copyfiles:
	rm -f /usr/local/bin/dingo
	ln -s ${CWD}/dingo /usr/local/bin/dingo
	mkdir -p ${DINGO_LIB}
	rm -fr ${DINGO_LIB}/plugins
	ln -s ${CWD}/plugins ${DINGO_LIB}/plugins

sshcommand:
	wget -qO /usr/local/bin/sshcommand ${SSHCOMMAND_URL}
	chmod +x /usr/local/bin/sshcommand
	sshcommand create dingo /usr/local/bin/dingo
