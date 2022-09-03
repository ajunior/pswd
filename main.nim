import std/random

randomize()

const
    numbers = 48 .. 57


proc generate_password(): string =
    var
        n: int
    for j in 1 .. 4:
        n = rand(numbers)
        result.add(char(n))


proc main =
    echo generate_password()

main()
