include config.mk

all:
	@echo no need to build

install:
	install -D -m 755 fm        ${DESTDIR}${PREFIX}/bin/fm
	install -D -m 755 img       ${DESTDIR}${PREFIX}/bin/img
	install -D -m 755 scrot     ${DESTDIR}${PREFIX}/bin/scrot
	install -D -m 755 mus       ${DESTDIR}${PREFIX}/bin/mus
	install -D -m 644 img.1     ${DESTDIR}${MANPREFIX}/man1/img.1
	install -D -m 644 scrot.1   ${DESTDIR}${MANPREFIX}/man1/scrot.1
	install -D -m 644 mus.1     ${DESTDIR}${MANPREFIX}/man1/mus.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/fm
	rm -f ${DESTDIR}${PREFIX}/bin/img
	rm -f ${DESTDIR}${PREFIX}/bin/scrot
	rm -f ${DESTDIR}${PREFIX}/bin/mus
	rm -f ${DESTDIR}${MANPREFIX}/man1/img.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/scrot.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/mus.1

.PHONY: all install uninstall
