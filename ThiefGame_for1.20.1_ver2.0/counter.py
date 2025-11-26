#実行コマンド
#python counter.py

from pathlib import Path

project_path = Path("C:/Users/MasuiHiroto/AppData/Roaming/ModrinthApp/profiles/ThiefGame/saves/world/datapacks/ThiefGame_for1.20.1_ver2.0")

total = 0

for p in project_path.glob("**/*"):
    if p.is_file():
        with open(p, "r", encoding="utf-8", errors="ignore") as f:
            text = f.read()
            total += len(text)

print("全ファイルの総文字数:", total)