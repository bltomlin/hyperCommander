# hyperCommander
In the time of DOS, a popular file manager called Norton Commander appeared. The usability and a visual interface were the keys to its rise. 

In hyperCommander, you can use file commands, system variables, permissions, and search for executables in the system.

# 1. Installation
```
# clone the repo
$ git clone https://github.com/bltomlin/hyperCommander

# change the working directory to WebScraper
$ cd hyperCommander

# run script
$ bash hyperCommander
```

# 2. Example
```
The greater-than symbol followed by a space (> ) represents the user input. Note that it's not part of the input.

Example 1:

Hello current-user!

------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------
> 4

Enter an executable name:
> not-an-exec-name

The executable with that name does not exist!

------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------
> 4

Enter an executable name:
> date

Located in: /usr/bin/date

Enter arguments:
> --utc
Sat 18 Feb 2023 08:36:14 UTC

------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------
> 0

Farewell!
```
