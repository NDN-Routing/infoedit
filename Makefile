CXX ?= g++
PREFIX ?= /usr/local
DESTDIR ?=

all: infoconv infoedit

infoconv: infoconv.cpp
	$(CXX) -o infoconv -std=c++11 infoconv.cpp

infoedit: infoedit.hpp infoedit.cpp
	$(CXX) -o infoedit -std=c++11 infoedit.cpp -lboost_program_options

lint:
	clang-format-8 -i -style=file *.[hc]pp

install: infoconv infoedit
	install -d $(DESTDIR)$(PREFIX)/bin
	install infoconv $(DESTDIR)$(PREFIX)/bin/infoconv
	install infoedit $(DESTDIR)$(PREFIX)/bin/infoedit

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/infoconv
	rm $(DESTDIR)$(PREFIX)/bin/infoedit
