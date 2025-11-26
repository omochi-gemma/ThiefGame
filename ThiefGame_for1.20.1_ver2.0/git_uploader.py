import os
import shutil
import subprocess


# ーーーーー実行前に必ず確認ーーーーー
# 変更内容
changes_log = "別館のドアブロックシステムを実装、鉄柵システムの基板を一部実装"
#実行コマンド
#python git_uploader.py


#フォルダパス
#コピー元
SRC_DATA_PACKS = "C:/Users/MasuiHiroto/AppData/Roaming/ModrinthApp/profiles/ThiefGame/saves/world/datapacks/ThiefGame_for1.20.1_ver2.0"
SRC_RESOURCE_PACKS = "C:/Users/MasuiHiroto/AppData/Roaming/ModrinthApp/profiles/ThiefGame/resourcepacks/ThiefGame_Resourcepack_ver2.0"
#コピー先
DST_DATA_PACKS = "C:/Users/MasuiHiroto/Documents/github/project/ThiefGame/ThiefGame_for1.20.1_ver2.0"
DST_RESOURCE_PACKS = "C:/Users/MasuiHiroto/Documents/github/project/ThiefGame/ThiefGame_Resourcepack_ver2.0"
#ローカルgitプロジェクト
GIT_PROJECT = "C:/Users/MasuiHiroto/Documents/github/project/ThiefGame"


# desktop.ini を無視する関数
def ignore_desktop_ini(src, names):
    return [name for name in names if name.lower() == "desktop.ini"]


#フォルダをコピーして追加
try:
    shutil.copytree(SRC_DATA_PACKS, DST_DATA_PACKS, dirs_exist_ok=True, ignore=ignore_desktop_ini)
    shutil.copytree(SRC_RESOURCE_PACKS, DST_RESOURCE_PACKS, dirs_exist_ok=True, ignore=ignore_desktop_ini)
except Exception as e:
    print("フォルダコピー中にエラー:", e)
    exit(1)


#ローカルgitプロジェクトに移動
os.chdir(GIT_PROJECT)
#githubにアップロード
subprocess.run(["git", "add", "."])
subprocess.run(["git", "commit", "-m", changes_log])
subprocess.run(["git", "push"])