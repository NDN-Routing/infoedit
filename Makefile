all: infoconv infoedit

infoconv: infoconv.cpp
	$(CXX) -o infoconv -std=c++11 infoconv.cpp

infoedit: infoedit.hpp infoedit.cpp
	$(CXX) -o infoedit -std=c++11 infoedit.cpp -lboost_program_options

install: infoconv infoedit
	install /usr/local/bin/infoconv infoconv
	install /usr/local/bin/infoedit infoedit

uninstall:
	rm /usr/local/bin/infoconv
	rm /usr/local/bin/infoedit
