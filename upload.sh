#!/bin/sh

# 開始時のメッセージ
echo 準備しています...
# セットアップと作業フォルダの作成、移動
cd $home
rm updater.sh
termux-setup-storage
mkdir EasySourceCodeUploaderToGitHub
cd EasySourceCodeUploaderToGitHub
mkdir GitHub
mkdir update
mkdir date
cd update
# アップデートチェック
wget https://github.com/Awayume/EasySourceCodeUploaderToGitHub/raw/Updater/VersionCodeInfo.txt
cd $home
cd ~/EasySourceCodeUploaderToGitHub/date
wget https://github.com/Awayume/EasySourceCodeUploaderToGitHub/releases/download/v2.1/VersionCodeInfo.txt
cd $home
diff ~/EasySourceCodeUploaderToGitHub/date/VersionCodeInfo.txt ~/EasySourceCodeUploaderToGitHub/update/VersionCodeInfo.txt
if [ $? -eq 1 ]; then
  echo ================================
  echo 新バージョンが公開されています。
  echo アップデートを実行します。
  echo ================================
  wget https://github.com/Awayume/EasySourceCodeUploaderToGitHub/raw/Updater/updater.sh
  chmod 755 ./updater.sh
  ./updater.sh
  fi

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
cd ~/EasySourceCodeUploaderToGitHub/GitHub
git clone git@github.com:$USERNAME/$REPOSITORYNAME.git
cd $REPOSITORYNAME
cp -af /storage/emulated/0/AppProjects/$PROJECTNAME/.gitignore ./
cp -af /storage/emulated/0/AppProjects/$PROJECTNAME/build.gradle ./
cp -af /storage/emulated/0/AppProjects/$PROJECTNAME/settings.gradle ./
mkdir app
cd app
cp -raf /storage/emulated/0/AppProjects/$PROJECTNAME/app/src ./
cp -af/storage/emulated/0/AppProjects/$PROJECTNAME/app/build.gradle ./
cp -af/storage/emulated/0/AppProjects/$PROJECTNAME/app/proguard-rules.pro ./
cd $home
cd ~/EasySourceCodeUploaderToGitHub/GitHub/$REPOSITORYNAME
git add ./
git commit -m "fromAIDE"
echo 準備が完了しました。
echo アップロードを開始します。
echo アップロード中...
git push origin main
echo アップロードが完了しました。
echo 終了しています...
cd $home
rm -rf EasySourceCodeUploaderToGitHub
echo 全ての処理が終了しました。
