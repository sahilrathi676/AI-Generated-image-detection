\
    @echo off
    SETLOCAL ENABLEDELAYEDEXPANSION
    echo =========== AI Image Detector - Installer (dima806) ===========
    echo This will create a Python virtual environment and install required packages.
    echo.

    :: Check for Python
    python --version >nul 2>&1
    IF %ERRORLEVEL% NEQ 0 (
      echo Python not found. Please install Python 3.8+ and make sure 'python' is in your PATH.
      echo Opening download page...
      start "" "https://www.python.org/downloads/windows/"
      pause
      exit /b 1
    )

    :: Create venv
    if not exist ".venv" (
      echo Creating virtual environment...
      python -m venv .venv
    ) else (
      echo Virtual environment already exists.
    )

    echo Activating virtual environment and installing dependencies...
    call .venv\Scripts\activate.bat

    echo Upgrading pip...
    python -m pip install --upgrade pip

    echo Installing dependencies (this may take several minutes)...
    pip install --no-cache-dir -r requirements.txt

    echo Installation finished.
    echo Would you like to start the app now? (Y/N)
    set /p startnow=
    if /I "%startnow%"=="Y" (
      echo Starting server...
      start "" cmd /k ".venv\\Scripts\\activate.bat ^&^& python -m uvicorn backend.main:app --host 127.0.0.1 --port 8000"
      echo The server will start in a new window. Wait until you see 'Model loaded. Server ready.'
    ) else (
      echo You can start the app later by running run_app.bat
    )
    echo Installer finished. Press any key to exit.
    pause >nul
