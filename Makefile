all: infoedit

infoedit: infoedit.hpp infoedit.cpp
	g++ -o infoedit -std=c++11 infoedit.cpp -lboost_program_options
