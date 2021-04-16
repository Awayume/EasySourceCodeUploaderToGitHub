#!/bin/sh

# 新バージョンの案内
echo Ver
echo 
# アップデート開始文
echo アップデートをスタートします。Enterを押してください。
read Wait
# 旧バージョンの削除
cd $home
rm upload.sh
# 新バージョンのダウンロード
wget URL
wget VCURL
chmod 755 ./upload.sh
echo アップデートが完了しました。ツールを起動します。
echo Enterを押してください。
read Wait
./upload.sh
rm -f ./uploader.sh
