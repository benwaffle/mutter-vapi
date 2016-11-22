.PHONY: vapis
vapis:
	vapigen --library=gdesktopenums /usr/share/gir-1.0/GDesktopEnums-3.0.gir
	vapigen --library=xfixes /usr/share/gir-1.0/xfixes-4.0.gir
	vapigen --library=libmutter --girdir=/usr/lib/mutter --vapidir=. /usr/lib/mutter/Meta-3.0.gir

docs: libmutter.vapi
	valadoc -o docs --vapidir=. --importdir=/usr/lib/mutter --import=Meta-3.0 libmutter.vapi
