# EasySourceCodeUploaderToGitHubとは
AIDEで書いたソースコードをGitHubにアップロードするシェルスクリプトです。  
なお、実行にはTermuxが必要です。
# 使い方
①Termuxにopensshとgit、wgetをインストールします。(pkg install openssh、pkg install git、pkg install wget)  
②SSHキーを作成し、GitHubに登録します。なお、SSHキーの作成は、https://github.com/Awayume/EasySSHkeyMaker のツールを使用すると簡単に作成することができます。  
③upload.shにパーミッション(755)をセットしてください。  
④upload.shを呼び出します。  
⑤画面の指示にしたがいます。
