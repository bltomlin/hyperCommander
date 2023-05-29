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

# 2. Examples

## 1. User and OS Info
```
Hello current-user!

------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------
> 1

host-name GNU/Linux

------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------
> 2

current-user

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

## 2. File and Dir Operations
```
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
> 3

The list of files and directories:
F main.sh
F task.html
F task-info.yaml
D documents

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------
> documents

The list of files and directories:
F read.md
F readme.txt

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------
> readme.txt
---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------
> two
---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------
> 1
readme.txt has been deleted.

The list of files and directories:
F read.md

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------
> read.md
---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------
> 2
Enter the new file name:
> readme.md
read.md has been renamed as readme.md

The list of files and directories:
F readme.md

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------
> readme.md
---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------
> 3
Permissions have been updated.
-rw-rw-rw- 1 root root 21 Feb 14 21:14 readme.md

The list of files and directories:
F readme.md

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------
> readme.md
---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------
> 4
Permissions have been updated.
-rw-rw-r-- 1 root root 21 Feb 14 21:14 readme.md

The list of files and directories:
F readme.md

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------
> 0

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

## 3. Executables
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
