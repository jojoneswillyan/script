Dim WshShell, fso 
Set WshShell = WScript.CreateObject("WScript.Shell") 
Set fso = CreateObject("Scripting.FileSystemObject") 

WshShell.Run "runas /user:drogaraia ""c:\ReceitaDigital\police.bat """

WScript.Sleep 100
WshShell.Sendkeys "infoway2007itautec~"