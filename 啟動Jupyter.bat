@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==========================================================
echo   計算機程式期中專案：安裝套件並開啟 Jupyter
echo ==========================================================
set PY=python
where py >nul 2>nul && set PY=py
%PY% --version >nul 2>nul
if errorlevel 1 goto nopython
echo.
echo [1/2] 安裝需要的套件（第一次會比較久，請稍等）...
%PY% -m pip install --upgrade notebook pyautogui mss numpy matplotlib
echo.
echo [2/2] 開啟 Jupyter：瀏覽器會自動打開，點「程式碼.ipynb」那個檔案就可以開始
%PY% -m notebook
pause
exit /b

:nopython
echo.
echo 找不到 Python！請先到 https://www.python.org/downloads/ 下載安裝，
echo 安裝畫面最下面記得勾選「Add python.exe to PATH」，裝好後再雙擊這個檔案。
echo.
pause
