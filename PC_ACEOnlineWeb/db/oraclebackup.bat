rem windows������Oracle���ݿ���Զ����ݽű���
rem ���Խ������������windows����ƻ����Զ�ִ�С�

@echo off
@echo ================================================
@echo  windows������Oracle���ݿ���Զ����ݽű�
@echo  ˵������������ʱ����Ҫ�������±���
@echo    1��BACKUP_DIR           ָ��Ҫ���ݵ��ĸ�Ŀ¼
@echo    2��ORACLE_USERNAME      ָ���������õ�Oracle�û���
@echo    3��ORACLE_PASSWORD      ָ���������õ�Oracle����
@echo    4��ORACLE_DB            ָ���������õ�Oracle������
@echo    5��BACK_OPTION          ����ѡ�����Ϊ�գ�����Ϊfull=y������Ϊowner=a�û�,b�û�  �ȵ�....
@echo    6��RAR_CMD              ָ��RAR������ѹ����������Ŀ¼
@echo ================================================



rem ���±�����Ҫ����ʵ���������
set BACKUP_DIR=G:\���ݿⱸ��\
set ORACLE_USERNAME=pcace
set ORACLE_PASSWORD=pcace1234567890
set ORACLE_DB=HIDB001
set BACK_OPTION=
set RAR_CMD="C:\Program Files\WinRAR\WinRAR.exe"

for /F "tokens=3 delims=/ " %%a in ('date/T') do set TODAY=%%a
set HH=%time:~0,2%
if /i %HH% LSS 10 (set HH=0%time:~1,1%)
set MI=%time:~3,2%
if /i %MI% LSS 10 (set MI=0%time:~1,1%)
set BACK_NAME=%ORACLE_DB%_%date:~0,4%%date:~5,2%%TODAY%(%HH%ʱ%MI%��)_
set BACK_FULL_NAME=%BACKUP_DIR%%BACK_NAME%


rem ��ʼ����
exp %ORACLE_USERNAME%/%ORACLE_PASSWORD%@%ORACLE_DB%  %BACK_OPTION% file="%BACK_FULL_NAME%.dmp" log="%BACK_FULL_NAME%exp.log"

rem ѹ����ɾ��ԭ���ļ�
%RAR_CMD% a -df "%BACK_FULL_NAME%back.rar" "%BACK_FULL_NAME%.dmp" "%BACK_FULL_NAME%exp.log"
