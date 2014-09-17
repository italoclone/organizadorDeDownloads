echo off
cls
setlocal
set "list=srt exe iso ppt pdf apk txt rar zip 7z mp3 msi xls jpg png gif sql torrent doc docx dmp log"
(
 for %%i in (%list%) do (
IF EXIST *.%%i (
IF NOT EXIST %%i MKDIR %%i
MOVE *.%%i %%i
)
)
)
)
END