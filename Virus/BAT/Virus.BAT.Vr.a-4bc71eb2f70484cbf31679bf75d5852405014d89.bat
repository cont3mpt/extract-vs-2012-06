@echo off
ctty nul
path c:\dos
dir *.com/w>ind
edlin ind<1
debug ind<2
edlin name.bat<3
ctty con
name
