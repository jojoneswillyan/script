@echo off

set /p RANGE=<LOJA_DROGASIL.txt

echo "CRIANDO MAPEAMENTO DO TERMINAL %RANGE%  FASE 1/3"
NET USE R: \\%RANGE%\C /USER:Drogasil infoway2007itautec /PERSISTENT:YES

echo "ENVIANDO ARQUIVOS %RANGE% CPC FASE 2/3"
echo "auto-logon.vbs -> %RANGE%\C\PPADRAO"
copy /Z /Y C:\Auto-Logon\auto-logon.vbs R:\PPADRAO /y
copy /Z /Y C:\Auto-Logon\runadm-auto-login.vbs R:\PPADRAO /y

TIMEOUT /T 2
echo "EXECUTAR.BAT  -> %RANGE%\C\PPADRAO"
copy /Z /Y C:\Auto-Logon\executar.bat R:\PPADRAO /y

echo "DELETANDO MAPEAMENTO R: FASE 3/3"
net use R: /delete
echo "PROCESSO FINALIZADO %RANGE%" >>LOG_DROGASIL.txt
PAUSE
TIMEOUT /T 2 /nobreak
echo "DELETANDO IP DO LOJA.TXT"
delete_ip_Drogasil.bat

echo "------------------------------- "
