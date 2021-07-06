@echo off


echo.
echo   -"INFORME O RANGE DE IP DA LOJA"-
echo.

echo.
echo "RANGE DE IP: "
echo.
set /p RANGE=%RANGE%

echo "CRIANDO MAPEAMENTO DO MICRO GERENCIA 30"
net use A: /delete
NET USE A: \\%RANGE%.30\C /USER:drogasil infoway2007itautec /PERSISTENT:YES
xcopy /E C:\Certificado\Atualiza\*.* A:\Atualiza
A:/
del \ppadrao\EXECUTAR.BAT
xcopy /E C:\Certificado\ppadrao\EXECUTAR.bat A:\ppadrao
net use A: /delete


echo "CRIANDO MAPEAMENTO DO TERMINAL 11"
net use B: /delete
NET USE B: \\%RANGE%.11\C /USER:drogasil infoway2007itautec /PERSISTENT:YES
xcopy /E C:\Certificado\Atualiza\*.* B:\Atualiza
B:/
del \ppadrao\EXECUTAR.BAT
xcopy /E C:\Certificado\ppadrao\EXECUTAR.bat B:\ppadrao
net use B: /delete
 
echo "CRIANDO MAPEAMENTO DO TERMINAL 13"
net use F: /delete
NET USE F: \\%RANGE%.13\C /USER:drogasil infoway2007itautec /PERSISTENT:YES
xcopy /E C:\Certificado\Atualiza\*.* F:\Atualiza
F:/
del \ppadrao\EXECUTAR.BAT
xcopy /E C:\Certificado\ppadrao\EXECUTAR.bat F:\ppadrao
net use F: /delete 

echo "CRIANDO MAPEAMENTO DO TERMINAL 14"
net use G: /delete
NET USE G: \\%RANGE%.14\C /USER:drogasil infoway2007itautec /PERSISTENT:YES
xcopy /E C:\Certificado\Atualiza\*.* G:\Atualiza
G:/
del \ppadrao\EXECUTAR.BAT
xcopy /E C:\Certificado\ppadrao\EXECUTAR.bat G:\ppadrao
net use G: /delete 

echo "CRIANDO MAPEAMENTO DO TERMINAL 15"
net use H: /delete
NET USE H: \\%RANGE%.15\C /USER:drogasil infoway2007itautec /PERSISTENT:YES
xcopy /E C:\Certificado\Atualiza\*.* H:\Atualiza
H:/
del \ppadrao\EXECUTAR.BAT
xcopy /E C:\Certificado\ppadrao\EXECUTAR.bat H:\ppadrao
net use H: /delete 

echo "CRIANDO MAPEAMENTO DO TERMINAL 16"
net use J: /delete
NET USE J: \\%RANGE%.16\C /USER:drogasil infoway2007itautec /PERSISTENT:YES
xcopy /E C:\Certificado\Atualiza\*.* J:\Atualiza
J:/
del \ppadrao\EXECUTAR.BAT
xcopy /E C:\Certificado\ppadrao\EXECUTAR.bat J:\ppadrao
net use J: /delete 

echo "CRIANDO MAPEAMENTO DO TERMINAL 17"
net use O: /delete
NET USE O: \\%RANGE%.16\C /USER:drogasil infoway2007itautec /PERSISTENT:YES
xcopy /E C:\Certificado\Atualiza\*.* O:\Atualiza
K:/
del \ppadrao\EXECUTAR.BAT
xcopy /E C:\Certificado\ppadrao\EXECUTAR.bat O:\ppadrao
net use O: /delete 
pause
echo "------------------------------- "

echo "PROCESSO FINALIZADO COM SUCESSO"

echo "------------------------------- "