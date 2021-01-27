all: infoconv infoedit

infoconv: infoconv.cpp
	$(CXX) -o infoconv -std=c++11 infoconv.cpp

infoedit: infoedit.hpp infoedit.cpp
	$(CXX) -o infoedit -std=c++11 infoedit.cpp -lboost_program_options

lint:
	clang-format-8 -i -style=file *.[hc]pp

install: infoconv infoedit
	install infoconv /usr/local/bin/infoconv
	install infoedit /usr/local/bin/infoedit

uninstall:
	rm /usr/local/bin/infoconv
	rm /usr/local/bin/infoedit
