LIBS_FLAGS = -lUnitTest++ -lboost_system -lboost_filesystem

build:

	g++ -c ./src/result-status.cpp -o ./dist/result-status.o $(LIBS_FLAGS)
	g++ -c ./src/result-data-group.cpp -o ./dist/result-data-group.o $(LIBS_FLAGS)
	g++ -c ./src/result-data.cpp -o ./dist/result-data.o $(LIBS_FLAGS)
	g++ -c ./src/interpreter.cpp -o ./dist/interpreter.o $(LIBS_FLAGS)
	g++ -c ./src/interpreter-condition.cpp -o ./dist/interpreter-condition.o $(LIBS_FLAGS)
	g++ -c ./src/interpreter-command.cpp -o ./dist/interpreter-command.o $(LIBS_FLAGS)
	g++ -c ./src/interpreter-select.cpp -o ./dist/interpreter-select.o $(LIBS_FLAGS)
	g++ -c ./src/interpreter-insert.cpp -o ./dist/interpreter-insert.o $(LIBS_FLAGS)
	g++ -c ./src/interpreter-delete.cpp -o ./dist/interpreter-delete.o $(LIBS_FLAGS)
	g++ -c ./src/run.cpp -o ./dist/run.o $(LIBS_FLAGS)
	g++ -c ./src/main.cpp -o ./dist/main.o $(LIBS_FLAGS)

	ld -r ./dist/*.o -o ./dist/tmp.o

	g++ ./dist/tmp.o -o ./dist/blitz-sysfile-sql $(LIBS_FLAGS)

	rm ./dist/*.o
