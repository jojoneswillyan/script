set WSHShell = WScript.CreateObject("WScript.Shell")

WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer", "proxy02.raiadrogasil.com.br:128"
WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD"
WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyOverride", "http://conteudo.portaldosaber.raiadrogasil.com.br;rhsolutions.raiadrogasil.com.br;rhonline.raiadrogasil.com.br;10.*;192.*;128.*;webcycle*;https://webmail.*;<local>"
WSHShell.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Privacy\ClearBrowsingHistoryOnExit", 1, "REG_DWORD"

On Error Resume Next

Const HKCU = &H80000001

strComputer = "."

Set objNetwork = CreateObject("Wscript.Network")

Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

''' Processo que será verificado '''''''
Set colProcesses = objWMIService.ExecQuery _
    ("Select * from Win32_Process Where Name = 'iexplore.exe'")

''' elimina o processo definido '''
For each Processo in ColProcesses
   Processo.Terminate()
Next

Set objFS = CreateObject("Scripting.FileSystemObject")
Set objFile = objFS.CreateTextFile("C:\atualiza\proxyEV.txt")
objFile.WriteLine("Proxy Alterado com sucesso")

msgbox "CONFIGURAÇÕES NO INTERNET EXPLORER OK, LOGOFF EM 5 SEG...."

Wscript.Sleep(3000)  
SET wshell = Wscript.CreateObject("Wscript.Shell")  
wshell.exec("shutdown.exe -L -F")  



