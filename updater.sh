#!/bin/sh

# 新バージョンの案内
echo Ver2.2
echo アップデート時の挙動を変更しました。
echo 使用するコマンドを変更しました。
# アップデート開始文
echo アップデートをスタートします。Enterを押してください。
read Wait
# 旧バージョンの削除
cd $home
rm upload.sh
# 新バージョンのダウンロード
wget https://github.com/Awayume/EasySourceCodeUploaderToGitHub/releases/download/v2.2/upload.sh
chmod 755 upload.sh
rm -rf EasySourceCodeUploaderToGitHub
echo アップデートが完了しました。ツールを起動します。
echo Enterを押してください。
read Wait
./upload.sh
