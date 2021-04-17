#!/bin/sh

# 新バージョンの案内
echo Ver2.1
echo 一部ファイルが正常にアップロードされない問題を修正しました。
echo.
# アップデート開始文
echo アップデートをスタートします。Enterを押してください。
read Wait
# 旧バージョンの削除
cd $home
rm upload.sh
# 新バージョンのダウンロード
wget https://github.com/Awayume/EasySourceCodeUploaderToGitHub/releases/download/v2.1/upload.sh
chmod 755 upload.sh
echo アップデートが完了しました。ツールを起動します。
echo Enterを押してください。
read Wait
./upload.sh
