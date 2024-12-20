Symbols between comands in Linux. [Reference](https://unix.stackexchange.com/questions/159489/is-there-a-difference-between-and-and#:~:text=%3B%20%3A%20commands%20separated%20by%20a%20%3B,of%20it%20as%20AND%20operator.)

1. `;`: commands separated by a `;` are executed sequentially. The shell waits for each command to terminate in turn.
2. `&&`: command after `&&` is executed if, and only if, command before && returns an exit status of zero. You can think of it as AND operator.
3. `|`: In expression `command1 | command2` the standard output of command1 is connected via a pipe to the standard input of command2.
4. `||`: command after `||` is executed if, and only if, command before `||` returns a non-zero exit status. You can think of it as OR operator. Please note, that `|` and `||` are completely different animals.

Show available time zones:

`tzselect`