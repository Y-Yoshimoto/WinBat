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

## SSHサーバの起動
    1.1 インストール(Windows10)
    設定> アプリと機能> オプション機能の管理
    上記のリストから"OpenSSHサーバ"をインストールする
    1.2インストール(Windows Server 2019)
        Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
        Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
    2. ファイアウォールのルールを追加する
    New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Inbound -Action Allow -DisplayName SSH
    3. サービスを起動する
        Start-Service -Name "sshd"
        Set-Service -Name "sshd" -StartupType Automatic

## その他初期構築
    - ホスト名の設定
        Rename-Computer -NewName ホスト名 -Force
    - RDP有効化(ネットワーク認証OFF)
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value "0"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name UserAuthentication" -Value "0"
