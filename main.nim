import os
from std/strutils import parseInt

import passwd

const PASSWD_DEFAULT_LENGTH = 6

proc main =
    var length: int
    if paramCount() == 0:
        length = PASSWD_DEFAULT_LENGTH
    else:
        length = parseInt(paramStr(1))

    echo generate_password(length)

main()
