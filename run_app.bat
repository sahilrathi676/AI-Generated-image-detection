\
    @echo off
    if not exist ".venv\Scripts\activate.bat" (
      echo Virtual environment not found. Run installer.bat first.
      pause
      exit /b 1
    )
    echo Activating virtual environment and starting server...
    call .venv\Scripts\activate.bat
    python -m uvicorn backend.main:app --host 127.0.0.1 --port 8000
