# WinBat
## 環境変数の設定
    1. Windowsキー + R で"ファイル名を指定して実行"を起動する
    2. "sysdm.cpl"を起動
    3. 詳細設定タブの環境変数を開く
    4. Pathにbatファイルの設置場所のパスを追記する
        例: C:\ProgramData/WinBat
    5. 設定で使用したウインドウを閉じる
    6. CMDを起動し、"echo %path%"を入力し、環境変数が追加されていることを確認する。

## ps1ファイルの実行許可
    1. 管理者権限でPowerShellを起動し、"Set-ExecutionPolicy RemoteSigned"コマンドで実行ポリシーを変更する。
    2. "Get-ExecutionPolicy"コマンドで実行ポリシーが"RemoteSigned"となっていることを確認する。
    3. "Hello.ps1"が実行できることを確認する。
