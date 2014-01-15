SSHCOMMAND_URL ?= https://raw.github.com/progrium/sshcommand/master/sshcommand
DINGO_ROOT ?= /home/dingo

install: copyfiles

copyfiles:
	rm -f /usr/local/bin/dingo
	ln -s dingo /usr/local/bin/dingo
	mkdir -p /var/lib/dingo
	rm -fr /var/lib/dingo/plugins
	ln -s plugins /var/lib/dingo/plugins

sshcommand:
	wget -qO /usr/local/bin/sshcommand ${SSHCOMMAND_URL}
	chmod +x /usr/local/bin/sshcommand
	sshcommand create dingo /usr/local/bin/dingo
