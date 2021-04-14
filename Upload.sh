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
cp -r /storage/emulated/0/AppProjects/$PROJECTNAME/app ./
# 以下.dexの削除
