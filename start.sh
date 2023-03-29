#! /бин/баш

# Выйти раньше при ошибках
установить -eu

# Python буферизует стандартный вывод. Без этого вы не увидите, что вы «печатаете» в журналах активности
экспорт PYTHONUNBUFFERED=true

# Установить виртуальную среду Python 3
VIRTUALENV=./venv

если [ !  -d  $VIRTUALENV ] ;  затем
  python3 -m venv $VIRTUALENV
фи

# Установить pip в виртуальную среду
если [ !  -f  $VIRTUALENV /bin/pip ] ;  затем
  curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py |  $VIRTUALENV /bin/python
фи

# Установить требования
$VIRTUALENV /bin/pip install -r requirements.txt

# Запустите ваше великолепное приложение
$VIRTUALENV /bin/python3 server.py