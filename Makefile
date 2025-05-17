PACKAGE_MANAGER = dnf

.PHONY = help install-dependencies setup

help:
	@echo "install-dependencies - Установить зависимости."
	@echo "setup - Создать папку и файл для проблемы с Yandex Coderun."

install-dependencies:
	sudo ${PACKAGE_MANAGER} install -y make

setup:
	mkdir -p ${problem_name}
	mkdir -p ${problem_name}/tests
	touch ${problem_name}/${problem_name}.${fileformat}
	cp .templates/run_tests.sh ${problem_name}/run_tests.sh
