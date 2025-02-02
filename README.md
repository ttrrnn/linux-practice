# linux-practice 
A place for me to dump Linux things while I study

## Linux Cheat Sheet
Linux commands and sheel scripting

### Introduction to Linux

| Command                 | Syntax                                  | Description                           | Example                |
| :---                    | :---                                    | :---                                  | :---                   |
| List                    | `ls [OPTIONS] [FILE/DIRECTORY]`         | Lists files and directors at path     | ls /home/usr/documents |
| Print Working Directory | `pwd`                                   | Print present working directory       | pwd                    |
| Change Directory        | `cd [DIRECTORY]`                        | Change current directory              | cd /home/usr/documents |
| Super user do           | `sudo [COMMAND]`                        | Run command with superuser privileges | sudo apt update        |
| Text Editor             | `nano [FILE]`                           | Open file with Nano text editor       | nano myfile.txt        |

### Introduction to Linux Commands
### Informational, Navigational, & Management Commands
| Command            | Syntax                                     | Description                                          | Example                             |
| :---               | :---                                       | :---                                                 | :---                                |
| Who Am I           | `whoami`                                   | Return username                                      | `whoami`                            |
| User ID            | `id`                                       | Return current user or group ID                      | `id`                                |
| System Information | `uname [OPTIONS]`                          | Display System Information                           | `uname -a`                          |
| Manual Pages       | `man [COMMANDS]`                           | Display manual page for a command                    | `man ls`                            |
| Curl               | `curl [OPTIONS] [URL]`                     | Transfer data from or to server                      | `curl https://www.google.com`       |
| Date               | `date [OPTIONS]`                           | Display current date and time                        | `date`                              |
| Find               | `find [DIRECTORY] [OPTIONS]`               | Find files and directories at specified path         | `find /home/usr -name '*.txt'`      |
| Make Directory     | `mkdir [DIRECTORY]`                        | Create new directory                                 | `mkdir my-dir-folder`               |
| Remove Directory   | `rmdir [DIRECTORY]`                        | Remove empty directory                               | `rmdir my-dir-folder`               | 
| Process Status     | `ps [OPTIONS]`                             | Display process status information                   | `ps -ef`                            |
| Table of Processes | `top` | Display live system resource usage | `top`                                                |
| Disk Usage         | `df [OPTIONS] [FILESYSTEM]`                | Display disk space usage                             | `df -h`                             |
| Create Empty File  | `touch [FILE]`                             | Create new file or update timestamp                  | `touch myfile.txt`                  |
| Copy               | `cp [OPTIONS] [SOURCE] [DESTINATION]`      | Copy files or dierctories from source to destination | `cp myfile.txt /home/usr/documents` |
| Move               | `mv [OPTIONS] [SOURCE] [DESTINATION]`      | Move or rename files or dierctories                  | `mv myfile.txt /home/usr/documents` |
| Remove             | `rm [OPTIONS] [FILE/DIRECTORY]`            | Remove files | `rm scratchfile.txt`                  |
|                    |                                            | Remove nonempty directory                            | `rm -r path-to-directory`           |
|                    | `rmdir [OPTIONS] [DIRECTORY]`              | Remove empty directory                               | `rmdir path-to-directory`           |
| Change Mode        | `chmod [OPTIONS] [MODE] [FILE]`            | Change file or directory permissions                 | `chmod u+x myfile.txt`              |

