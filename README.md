## Asciinema:

https://asciinema.org/a/RHqaovtOFoKfJUEzVsGSWSK1E

## Resources used:

* Computerphile: https://www.youtube.com/watch?v=1S0aBV-Waeo
* Daniel Slater: https://www.youtube.com/watch?v=hJ8IwyhqzD4
* Zillion: http://www.safemode.org/files/zillion/shellcode/doc/Writing_shellcode.html
* Hacking, the art of exploitation by Jon Erickson (book)
* All files in this repo

## Findings:

***These are things I learned through trial and error***

* does not work on zsh
* setuid binary doesn't transfer root (this was tried on arch linux)
* does not work with python (python pads NOP's with 0x2C ?!)
* gdb does not initially calculate correct addresses
