TARGET := ./build/test
CC := g++
GTEST := /usr/lib32/libgtest.a

$(TARGET):./build/test.o ./build/sample.o
	$(CC) -o $(@) ./build/test.o ./build/sample.o $(GTEST) -lpthread

./build/test.o:test.cpp
	$(CC) -c $(^) -o $(@)

./build/sample.o:sample.cpp
	$(CC) -c $(^) -o $(@)