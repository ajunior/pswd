import std/random

randomize()

const numbers = 48 .. 57

var
    password: string
    n: int

for j in 1 .. 4:
    n = rand(numbers)
    password.add(char(n))

echo password
