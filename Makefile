# Paths
PREFIX = $(HOME)/.local
BINPREFIX = $(PREFIX)/bin
MANPREFIX = $(PREFIX)/share/man

install: fzam fzam.man
	install -D -m 744 fzam $(BINPREFIX)/fzam
	install -D -m 644 fzam.man $(MANPREFIX)/man1/fzam.1

uninstall:
	rm $(BINPREFIX)/fzam
	rm $(MANPREFIX)/man1/fzam.1
