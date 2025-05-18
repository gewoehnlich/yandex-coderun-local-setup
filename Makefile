PACKAGE_MANAGER = dnf

.PHONY = help install-dependencies setup

help:
	@echo "make help - Показать методы Makefile"
	@echo "make install-dependencies - Установить необходимые зависимости."
	@echo "make setup p=<название проблемы> f=<формат файла> - Создать папку и файл для проблемы с Yandex Coderun."

install-dependencies:
	sudo ${PACKAGE_MANAGER} install -y make

setup:
	mkdir -p ${p}
	mkdir -p ${p}/tests
	touch ${p}/${p}.${f}
	cp .templates/run_tests.sh ${p}/run_tests.sh
	cp .templates/Makefile ${p}/Makefile
