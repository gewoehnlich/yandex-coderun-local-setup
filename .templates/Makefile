TESTS_COUNT := $(shell find tests -type f | wc -l)
NEXT_TEST_NUMBER := $(shell echo $$(( $(FILES_COUNT) + 1 )))

.PHONY = help test run-tests

help:
	@echo "test - Создать тест"
	@echo "run-tests - Выполнить тесты"

test:
	mkdir -p ${NEXT_TEST_NUMBER}
	touch ${NEXT_TEST_NUMBER}/input.txt
	touch ${NEXT_TEST_NUMBER}/expected_output.txt

run-tests:

