import os, std/random, std/strutils

randomize()

const
    numbers = 48 .. 57
    PASSWD_DEFAULT_LENGTH = 6


proc generate_password(length: int): string =
    var
        n: int
    for j in 1 .. length:
        n = rand(numbers)
        result.add(char(n))


proc main =
    var length: int
    if paramCount() == 0:
        length = PASSWD_DEFAULT_LENGTH
    else:
        length = parseInt(paramStr(1))

    echo generate_password(length)

main()
