# jlog

This is a simple logging tool which allows to directly log into systemds journal, without having to think about manual generation of the heavier metadata (e.g. cursor, real timestamps...). You can simply put valid fields into the logger and they will appear in journal accordingly.

Dependencies
============
This tool depends on the systemd library "libsystemd". This is easy to aquire:
```
$sudo apt-get install libsystemd-dev
```

Installation
============
Simply use the makefile to create the binary.

Usage
=====
The input needs to be in journal conform format:

* VARIABLE=value
* The variable name must be in uppercase and consist only of characters, numbers and underscores, and may not begin with an underscore
* The value can be of any size and format

for more information read http://www.freedesktop.org/software/systemd/man/sd_journal_print.html or http://www.freedesktop.org/software/systemd/man/systemd.journal-fields.html


Example
=======

```
$./jlog MESSAGE="Hello World" META1=mymeta META2=myothermeta
```
