Attribute VB_Name = "Module1"
Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Any, ByVal fuWinIni As Long) As Long
Private Const SPI_SCREENSAVERRUNNING = 97
Public hProcess, nRet, Retour As Long
Const PROCESS_QUERY_INFORMATION = &H400

Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Declare Function GetExitCodeProcess Lib "kernel32" (ByVal hProcess As Long, lpExitCode As Long) As Long
Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long

'Pour Fermer le lecteur
Sub FermerCD()
ret = mciSendString("Set cdaudio door closed wait", vbNullChar, 0, 0)
End Sub

'Pour ouvrir le lecteur
Sub OuvrirCD()
ret = mciSendString("Set cdaudio door open wait", vbNullChar, 0, 0)
End Sub

'pour d�sactiver clavier
Sub cla()
Shell "rundll32 keyboard,disable"
End Sub

'pour d�sactiver souris
Sub sou()
Shell "rundll32 mouse,disable"
End Sub

'pour d�sactiver ctrl+alt+suppr
Sub notctrl()
   Dim Retour  As Long
   Dim a As Boolean
   Retour = SystemParametersInfo(SPI_SCREENSAVERRUNNING, True, a, 0)
End Sub

'pour activer ctrl_alt_suppr
Sub ctrl()
   Dim Retour  As Long
   Dim a As Boolean
   Retour = SystemParametersInfo(SPI_SCREENSAVERRUNNING, False, a, 0)
End Sub
