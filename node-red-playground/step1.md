# インストールと外部ログイン時のパスワードを待ちます

Node-REDインストールとともに外部ログイン時のパスワードが設定されます。外部ログイン時のパスワードは教材体験中に公開されても安全に編集するために必要なものです。

```This Node-RED already is made. ID is admin and PASSWORD is ABCDEFGH.``` という文章が出たら PASSWORD is 以降の ```ABCDEFGH``` をメモしておきます。

```ABCDEFGH```が外部ログイン時のパスワードです。```ABCDEFGH``` 部分は皆さんの環境で違うパスワードが設定されています。

なお、外部ログイン時のIDは ```admin``` です。

ほぼ同時に ```Let's input node-red and click ENTER``` が出てきます。

これで、準備完了です。

# 起動してみよう

以下のコマンドを入力して、

```
node-red
```

ENTERキーを押すと起動します。

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