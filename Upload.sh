#!/bin/sh

# 開始時のメッセージ
echo 準備しています...
# ホームディレクトリへの移動とセットアップ
cd $home
termux-setup-storage
# 作業フォルダの作成、移動
mkdir PackageUpload
cd PackageUpload
# 関数入力
echo GitHubへのアップロードの準備を開始します。
echo GitHubのユーザー名を入力してください。
read USERNAME
echo GitHubのアップロード先のリポジトリ名を入力してください。
read REPOSITORYNAME
echo AIDEでのプロジェクト名を入力してください。
read PROJECTNAME
# アップロード開始
echo アップロードを開始します。
echo SSHキーにパスワードを設定している場合、途中で入力を求められるので、必ず入力するようにしてください。
echo アップロードの準備をしています...
git clone git@github.com:$USERNAME/$REPOSITORYNAME.git
cd $REPOSITORYNAME
cp /storage/emulated/0/AppProjects/$PROJECTNAME/.gitignore ./
cp /storage/emulated/0/AppProjects/$PROJECTNAME/build.gradle ./
cp /storage/emulated/0/AppProjects/$PROJECTNAME/settings.gradle ./
mkdir app
cd app
cp -r /storage/emulated/0/AppProjects/$PROJECTNAME/app/src ./
cp /storage/emulated/0/AppProjects/$PROJECTNAME/app/build.gradle ./
cp /storage/emulated/0/AppProjects/$PROJECTNAME/app/proguard-rules.pro ./
cd $home
cd ~/PackageUpload/$REPOSITORYNAME
git add ./
git commit -m "fromAIDE"
echo 準備が完了しました。
echo アップロードを開始します。
echo アップロード中...
git push origin master
echo アップロードが完了しました。
echo 終了しています...
cd $home
rm -rf PackageUpload
echo 全ての処理が終了しました。
