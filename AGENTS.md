# AGENTS.md

115-1 電腦程式設計課程的程式碼倉庫。目前 Git 只追蹤 `README.md`、`LICENSE`、`.gitignore`，
尚未有任何程式碼、測試或建置設定。

## 環境與套件管理

- 語言：Python。套件一律用 **conda** 管理，不要用 `pip`、`venv`、`poetry` 或 `uv`。
- 專案環境：`iem_python`（Python 3.12.13），實體路徑為
  `C:\Users\user\anaconda3\envs\iem_python`。
- 同一台機器上還有 base 環境與另一個 `finance` 環境 — 不要動它們，也不要在 base 環境安裝套件。
- 安裝套件：`conda activate iem_python` 後執行 `conda install <套件>`。
  需要 pip 時先用 `conda` 安裝能安裝的部分，剩餘的才用環境內的 pip。
- **重點：本機 shell 的 PATH 中沒有 `conda`。** 直接打 `conda ...` 會出現
  `CommandNotFoundException`。請改用完整路徑
  `C:\Users\user\anaconda3\Scripts\conda.exe`，
  或用環境內的直譯器 `C:\Users\user\anaconda3\envs\iem_python\python.exe`。
  `python` 本身在 PATH 上指向的是 `Microsoft\WindowsApps\python.exe`（Windows 的佔位執行檔），
  會開啟 Microsoft Store，**不要使用**。
- 專案沒有 `environment.yml`、`requirements.txt` 或 `pyproject.toml`。除非使用者明確要求，
  不要自行新增這些檔案或引入 formatter / linter 設定。

## 慣例

- 尚未確立任何目錄結構、命名或繳交慣例。依照使用者描述的結構走，保持扁平直觀，
  不要自創框架式的版面配置。

## Git / .gitignore 注意事項

`.gitignore` 是 GitHub 官方的 Python 範本，未經修改，因此會**默默忽略**一些對課程作業而言
合理的路徑。提交前請用 `git status --ignored` 確認新檔案真的有被追蹤：

- 目錄：`lib/`、`lib64/`、`build/`、`parts/`、`var/`、`target/`、`share/python-wheels/`、`develop-eggs/`
- 檔案：`*.log`、`*.spec`、`*.manifest`、`*.egg`、`*.egg-info/`、`tempCodeRunnerFile.py`、
  `local_settings.py`、`db.sqlite3`
- 環境：`.env`、`.venv`、`venv/`、`env/`
- `.vscode/` 與 `.idea/` 在範本中是註解狀態（未被忽略），但也未被追蹤 — 除非使用者要求，
  不要加入編輯器設定目錄。

若作業確實需要一個被忽略的路徑（例如 `lib/` 模組目錄），請改用其他名稱，或加上針對該路徑的
例外規則，不要整段刪除範本內容。