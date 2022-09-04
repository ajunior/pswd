import os
from std/strutils import parseInt

import passwd

const
    PASSWD_DEFAULT_AMOUNT = 1
    PASSWD_DEFAULT_LENGTH = 6

proc main =
    var
        amount, length: int
        passwords: seq[string]

    if paramCount() == 0:
        amount = PASSWD_DEFAULT_AMOUNT
        length = PASSWD_DEFAULT_LENGTH
    else:
        amount = parseInt(paramStr(1))
        length = parseInt(paramStr(2))

    passwords = generate_password(amount, length)
    for p in passwords:
        echo p

main()
