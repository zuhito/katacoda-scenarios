## Node.jsバージョン確認

ターミナルで以下のコマンドを打ってNode.jsのバージョンを確認します。

```
node -v
```

バージョンが出ればNode.jsが使えます。

## npmバージョン確認

ターミナルで以下のコマンドを打ってnpmのバージョンも確認します。

```
npm -v
```

バージョンが出ればnpmが使えます。

## npmでNode-REDをインストール

ターミナルで以下のコマンドを打ってNode-REDをインストールします。

```
sudo npm install -g --unsafe-perm node-red
```

インストールできたら以下のコマンド打ちます。

```
node-red
```

最初にNode-REDインストールされます。

```
Welcome to Node-RED
===================
```

や

```
[info] Server now running at http://127.0.0.1:1880/
```

といった文言が出たら準備完了です！

# アクセスしてみよう

起動できたら、ターミナルにあるタブの「Node-RED Open」あるいは

以下のURL、

https://[[HOST_SUBDOMAIN]]-1880-[[KATACODA_HOST]].environments.katacoda.com/

を開いてNode-REDを体験しましょう！

## はじめてのフロー

以下の流れを実際に行ってみましょう。

[はじめてのフロー : Node\-RED日本ユーザ会](https://nodered.jp/docs/tutorials/first-flow)