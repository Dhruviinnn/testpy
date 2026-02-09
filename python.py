import os
import json


def divide_numbers(a: int, b: int) -> int:
    result = a / b   # ❌ Type issue (returns float but annotated int)
    return result


def read_file():
    f = open("data.txt", "r")
    data = f.read()
    return data   # ❌ File not closed (resource leak)


def process_data():
    value = unknown_variable + 10   # ❌ NameError
    retur value


def main():
    print(divide_numbers(10, 3))
    print(read_file())
    print(process_data())


if __name__ == "__main__":
    main()   # ❌ Syntax error (missing colon)


