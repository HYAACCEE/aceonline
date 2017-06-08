rem windows环境下Oracle数据库的自动备份脚本。
rem 可以将本批处理设成windows任务计划下自动执行。

@echo off
@echo ================================================
@echo  windows环境下Oracle数据库的自动备份脚本
@echo  说明：启动备份时，需要配置以下变量
@echo    1、BACKUP_DIR           指定要备份到哪个目录
@echo    2、ORACLE_USERNAME      指定备份所用的Oracle用户名
@echo    3、ORACLE_PASSWORD      指定备份所用的Oracle密码
@echo    4、ORACLE_DB            指定备份所用的Oracle连接名
@echo    5、BACK_OPTION          备份选项，可以为空，可以为full=y，可以为owner=a用户,b用户  等等....
@echo    6、RAR_CMD              指定RAR命令行压缩工具所在目录
@echo ================================================



rem 以下变量需要根据实际情况配置
set BACKUP_DIR=G:\数据库备份\
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
set BACK_NAME=%ORACLE_DB%_%date:~0,4%%date:~5,2%%TODAY%(%HH%时%MI%分)_
set BACK_FULL_NAME=%BACKUP_DIR%%BACK_NAME%


rem 开始备份
exp %ORACLE_USERNAME%/%ORACLE_PASSWORD%@%ORACLE_DB%  %BACK_OPTION% file="%BACK_FULL_NAME%.dmp" log="%BACK_FULL_NAME%exp.log"

rem 压缩并删除原有文件
%RAR_CMD% a -df "%BACK_FULL_NAME%back.rar" "%BACK_FULL_NAME%.dmp" "%BACK_FULL_NAME%exp.log"
