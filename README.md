# lam
lam is a utility for Ubuntu that's a simple version of the lam utility on BSD (which runs on macOS)

It doesn't include the options found on BSD lam, but does laminate files, and includes the option to refer to
/dev/stdin as '-'

```
Usage:

$ cat one
one |
two |
three |
four |
five |
$ cat two
| Alpha |
| Beta  |
| Gamma |
| Delta |
$ cat three
| Jack
| Jill
| James
| John
| Jethro
$ lam one two three
one || Alpha || Jack
two || Beta  || Jill
three || Gamma || James
four || Delta || John
five || Jethro
$ lam one two <three
one || Alpha |
two || Beta  |
three || Gamma |
four || Delta |
five |
$ cat one two three|lam - - - - 
one |two |three |four |
five || Alpha || Beta  || Gamma |
| Delta || Jack| Jill| James
| John| Jethro
```
