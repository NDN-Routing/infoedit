CXX ?= g++
CXXFLAGS ?= -std=c++17 -Wall -Werror -Wno-error=deprecated-declarations -O2
PREFIX ?= /usr/local
DESTDIR ?=

.PHONY: all
all: infoconv infoedit

infoconv: infoconv.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

infoedit: infoedit.cpp infoedit.hpp
	$(CXX) $(CXXFLAGS) -o $@ $< -lboost_program_options

.PHONY: lint
lint:
	clang-format-11 -i -style=file *.[hc]pp

.PHONY: clean
clean:
	rm -f infoconv infoedit

.PHONY: install
install: infoconv infoedit
	install -d $(DESTDIR)$(PREFIX)/bin
	install infoconv $(DESTDIR)$(PREFIX)/bin/infoconv
	install infoedit $(DESTDIR)$(PREFIX)/bin/infoedit

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/infoconv
	rm $(DESTDIR)$(PREFIX)/bin/infoedit
