::: Jones 2020
@echo off&cls

:::Aqui o numero da linha para deletar
set $NoLigne=1

if exist ## del ##

setlocal enabledelayedexpansion


for %%a in (LOJA_DROGASIL.txt) do (echo # traitement de : %%a
                       set $c=1
                       for /f "tokens=1* delims=]" %%b in ('type "%%a" ^| find /V /N ""') do (
                                                        if not !$c! equ !$NoLigne! (if "%%c"=="" (echo.>>##) else (echo %%c>>##))
                                                        set /a $c+=1)
                       move ## "%%a">nul)

Echo # LINHA 1 DELETADA, EXECUTANDO NEW FILIAL
timeout /t 2
Deploy_Drogasil_AutoLogon.bat

