#!/bin/sh

# 新バージョンの案内
echo Ver2.1
echo アップロード準備の動作の改善をしました。
# アップデート開始文
echo アップデートをスタートします。Enterを押してください。
read Wait
# 旧バージョンの削除
cd $home
rm upload.sh
# 新バージョンのダウンロード
wget https://github.com/Awayume/EasySourceCodeUploaderToGitHub/releases/download/v2.1/upload.sh
chmod 755 upload.sh
rm -rf EasySourceCodeUploaderToGitHub
echo アップデートが完了しました。ツールを起動します。
echo Enterを押してください。
read Wait
./upload.sh
