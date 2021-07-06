@echo off

c:

cd\atualiza

certmgr.exe -add -all -c "CertificadoP1.p7b" -s -r localMachine Root > c:\atualiza\log.P1

certmgr.exe -add -all -c "CertificadoP2.p7b" -s -r localMachine Root > c:\atualiza\log.P2


exit