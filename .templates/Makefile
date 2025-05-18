TESTS_COUNT := $(shell find tests -mindepth 1 -maxdepth 1 -type d | wc -l)
NEXT_TEST_NUMBER := $(shell echo $$(( $(TESTS_COUNT) + 1 )))

.PHONY = help test run-tests

help:
	@echo "make help - Показать методы Makefile"
	@echo "make test - Создать тест"
	@echo "make run-tests - Выполнить тесты"

test:
	mkdir -p tests/${NEXT_TEST_NUMBER}
	touch tests/${NEXT_TEST_NUMBER}/input.txt
	touch tests/${NEXT_TEST_NUMBER}/expected_output.txt

run-tests:
	chmod 777 run_tests.sh
	./run_tests.sh
