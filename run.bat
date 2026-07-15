call venv\Scripts\activate.bat

python main.py

call deactivate

git add .
git diff --cached --quiet
if errorlevel 1 (
    git commit -m "regular update"
    git push origin main
) else (
    echo No changes to commit.
)

pause