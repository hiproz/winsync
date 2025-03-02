@echo off
setlocal

:: 设置命令提示符编码为 UTF-8
chcp 65001 > nul

:: 使用WMIC获取标准化的日期时间（格式：YYYYMMDDHHMMSS）
for /f "tokens=2 delims==." %%a in ('wmic os get LocalDateTime /value') do set "datetime=%%a"

:: 提取日期部分（YYYYMMDD）和时间部分（HHMM）
set "logtime=%datetime:~0,8%_%datetime:~8,4%"

:: 并行执行多个Robocopy备份任务
start "Backup F to G" cmd /c robocopy F:\ G:\ /ETA /PURGE /S /E /ZB /Z /J /COPY:DAT /sj /mot:10 /mt:4 /LOG:"E:\Backup_F_to_G_%logtime%.log"
:: start "Backup H to I" cmd /c robocopy H:\ I:\ /ETA /PURGE /S /E /ZB /Z /J /COPY:DAT /sj /mot:10 /mt:4 /LOG:"E:\Backup_H_to_I_%logtime%.log"

echo Backup tasks are running in parallel. Please wait...
echo Press any key to exit when the backup windows are closed...
pause > nul

endlocal