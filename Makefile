CXX = g++

CXXFLAGS = -std=c++11 -Wall

SOURCES = main.cpp Message.cpp ccc_time.cpp

OBJECTS = $(SOURCES:.CPP=.O)

EXECUTABLE = lab7_welton

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean: 
	rm -f $(OBJECTS) $(EXECUTABLE)

run: $(EXECUTABLE)
	./$(EXECUTABLE)