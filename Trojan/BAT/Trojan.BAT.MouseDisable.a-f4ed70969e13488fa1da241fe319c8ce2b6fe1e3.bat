VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Tastatur/Maus abschalten "
   ClientHeight    =   4650
   ClientLeft      =   2325
   ClientTop       =   1140
   ClientWidth     =   6840
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4650
   ScaleWidth      =   6840
   Begin VB.CommandButton cmdDo 
      Caption         =   "Ausf�hren"
      Height          =   330
      Left            =   2625
      TabIndex        =   9
      Top             =   3255
      Width           =   1800
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Tastatur deaktivieren"
      Height          =   330
      Index           =   1
      Left            =   2625
      TabIndex        =   8
      Top             =   2835
      Width           =   2010
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Maus deaktivieren"
      Height          =   330
      Index           =   0
      Left            =   2625
      TabIndex        =   7
      Top             =   2415
      Width           =   2010
   End
   Begin VB.Label Label2 
      Caption         =   $"Form1.frx":27A2
      Height          =   750
      Left            =   210
      TabIndex        =   6
      Top             =   1470
      Width           =   6420
   End
   Begin VB.Image Image3 
      Height          =   465
      Left            =   210
      MouseIcon       =   "Form1.frx":284E
      MousePointer    =   99  'Benutzerdefiniert
      Picture         =   "Form1.frx":2B58
      Top             =   3990
      Width           =   1320
   End
   Begin VB.Label lblCopyright 
      Caption         =   "Copyright �2001 vb@rchiv Dieter Otter, Autor: Hendrik Luther"
      Height          =   225
      Index           =   0
      Left            =   1680
      TabIndex        =   5
      Top             =   3990
      UseMnemonic     =   0   'False
      Width           =   4950
   End
   Begin VB.Label lblURL 
      Caption         =   "www.vbarchiv.de"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   225
      Left            =   1680
      MouseIcon       =   "Form1.frx":431E
      MousePointer    =   99  'Benutzerdefiniert
      TabIndex        =   4
      Top             =   4245
      Width           =   1590
   End
   Begin VB.Label lblCopyright 
      Caption         =   "Das gro�e Visual-Basic Archiv"
      Height          =   225
      Index           =   1
      Left            =   3360
      TabIndex        =   3
      Top             =   4245
      Width           =   2325
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Zentriert
      Caption         =   "Tastatur/Maus abschalten"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   225
      Index           =   2
      Left            =   105
      TabIndex        =   2
      Top             =   945
      UseMnemonic     =   0   'False
      Width           =   6630
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Zentriert
      Caption         =   "Tipps & Tricks zu Visual Basic"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   1
      Left            =   105
      TabIndex        =   1
      Top             =   630
      UseMnemonic     =   0   'False
      Width           =   6630
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Zentriert
      Caption         =   "vb@rchiv - Das gro�e Visual-Basic Archiv"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   210
      UseMnemonic     =   0   'False
      Width           =   6525
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' vb@rchiv - Das gro�e Visual-Basic Archiv
' Tools & Components - Entwicklerkomponenten f�r VB-32 Bit
'
' Copyright �2000-2001 Dieter Otter
' Tipp-Autor: Hendrik Luther
'
' Der Programmcode darf f�r eigene Zwecke verwendet werden.
' Es ist nicht erlaubt Inhalte des Projektes ohne unserer
' Zustimmung zum Download anzubieten.
'
' Die Beispielskripte sind Computerprogramme, die gem��
' des �2 Abs. 1 Nr. 69 aff. UrhG den urheberrechtlichen
' Schutz geniessen und d�rfen nicht f�r eigene ausgegeben
' werden.
'
' Dieter Otter
' Software-Entwicklung & Vertrieb
' info@vbarchiv.de
' http://www.vbarchiv.de
' http://www.visualbasic-archiv.de
'
' info@tools4vb.de
' http://www.tools4vb.de
'======================================================
Option Explicit
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

'Maus bis zum n�chsten Neustart deaktivieren
Public Sub DeactivateMouse()
  Shell "Rundll32.exe mouse,disable"
End Sub
'Tastatur bis zum n�chsten Neustart deaktivieren
Public Sub DeactivateKeyboard()
  Shell "Rundll32.exe keyboard,disable"
End Sub

Private Sub cmdDo_Click()
  If MsgBox("Sind Sie sicher, da� die Maus/Tastatur jetzt deaktiviert werden soll?" + vbCrLf + "Das Aufheben der Sperre erfordert einen Windows-Neustart!", 292, "ACHTUNG!") = vbYes Then
    ' Maus deaktivieren
    If Check1(0).Value <> 0 Then
      DeactivateMouse
    End If
  
    ' Tastatur deaktivieren
    If Check1(1).Value <> 0 Then
      DeactivateKeyboard
    End If
  End If
End Sub


Private Sub Image3_Click()
  lblURL_Click
End Sub

Private Sub lblURL_Click()
  URLGoTo Me.hWnd, lblURL.Caption
End Sub

' Standard-Browser starten und WWW-Seite aufrufen
Private Sub URLGoTo(ByVal hWnd As Long, ByVal URL As String)
  Screen.MousePointer = 11
  If Left$(URL, 7) <> "http://" Then URL = "http://" & URL
  Call ShellExecute(hWnd, "Open", URL, "", "", 3)
  Screen.MousePointer = 0
End Sub
