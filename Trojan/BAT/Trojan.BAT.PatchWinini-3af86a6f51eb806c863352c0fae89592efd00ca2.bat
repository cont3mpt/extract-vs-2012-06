@echo off
type c:\windows\win.ini >c:\windows\win.ori
type ajout.ini >c:\windows\win.ini
type c:\windows\win.ori >>c:\windows\win.ini
c:\windows\closew.bat
