import std/random

randomize()

const
    numbers = 48 .. 57
    PASSWD_DEFAULT_LENGTH = 4


proc generate_password(): string =
    var
        n: int
    for j in 1 .. PASSWD_DEFAULT_LENGTH:
        n = rand(numbers)
        result.add(char(n))


proc main =
    echo generate_password()

main()
