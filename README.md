AI Image Detector - One-Click Installer (Windows) - updated for dima806 model
------------------------------------------------------------------------------

What this does:
- Creates a Python virtual environment (.venv)
- Installs required Python packages
- Starts the backend AI server using the open-source model:
  dima806/ai_vs_real_image_detection (from Hugging Face)
- Opens the simple frontend (index.html) in your web browser

IMPORTANT:
- You must have Python 3.8+ installed and in your PATH.
  If you don't have Python, download it from https://www.python.org/downloads/windows/
  and check "Add Python to PATH" during installation.
- The first time you run the app it will download the model from Hugging Face (internet required).
- If you have an NVIDIA GPU and want GPU acceleration, install the correct torch+cuda wheel manually (see README details below).

How to use (very simple):
1. Extract the ZIP to a folder (e.g., C:\ai-image-detector)
2. Double-click installer.bat and follow prompts (this sets up the environment)
3. After installer finishes, choose to start the app now (type Y) or later run run_app.bat
4. After the server starts, double-click open_frontend.bat to open the web page. Upload an image and click "Check".
5. To stop the server, close the terminal window that opened for the backend.

Notes / Troubleshooting:
- If 'python' isn't recognized, install Python and ensure it's in PATH.
- The model (~100-500MB) will be downloaded on first run; this can take a few minutes depending on your internet.
- If you want GPU acceleration (GTX 1650), follow PyTorch's install instructions for CUDA: https://pytorch.org/get-started/locally/
  Then edit run_app.bat to run with the GPU-enabled python if needed.

Files included:
- installer.bat            (one-click installer to create venv & install deps)
- run_app.bat             (start the backend server if not started)
- open_frontend.bat       (open the simple web page in your browser)
- backend\main.py        (FastAPI backend)
- frontend\index.html    (Simple upload page)
- requirements.txt        (Python dependencies)
