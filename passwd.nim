import std/random

randomize()

const NUMBERS = 48 .. 57

proc generate_password *(amount, length: int): seq[string] =
    for i in 1 .. amount:
        var
            n: int
            password: string

        for j in 1 .. length:
            n = rand(NUMBERS)
            password.add(char(n))

        result.add(password)
