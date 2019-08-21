# インストールと外部ログイン時のユーザーパスワードを待ちます

Node-REDインストールとともに外部ログイン時のユーザーパスワードが設定されます。外部ログイン時のユーザーパスワードは教材体験中に公開されても安全に編集するために必要なものです。

```This Node-RED already is made. ID is admin and PASSWORD is ABCDEFGH.``` という文章が出たら PASSWORD is 以降の ```ABCDEFGH``` をメモしておきます。

```ABCDEFGH```が外部ログイン時のユーザーパスワードです。```ABCDEFGH``` 部分は皆さんの環境で違うユーザーパスワードが設定されています。

なお、外部ログイン時のユーザー名は ```admin``` です。

* 外部ログイン時の情報
    * 外部ログイン時のユーザー名
    * 外部ログイン時のユーザーパスワード

をメモできたら ```Let's input node-red and click ENTER``` が出てきたことを確認しましょう。

出てきたら準備完了です。

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

さきほどの

* 外部ログイン時の情報
    * 外部ログイン時のユーザー名
    * 外部ログイン時のユーザーパスワード

を準備しておきます。

起動できたら、ターミナルにあるタブの「Node-RED Open」あるいは

以下のURL、

https://[[HOST_SUBDOMAIN]]-1880-[[KATACODA_HOST]].environments.katacoda.com/

を開いたら、先ほどの 外部ログイン時の ```ユーザー名``` と ```ユーザーパスワード``` を入力して、Node-REDを体験しましょう！

## はじめてのフロー

以下の流れを実際に行ってみましょう。

[はじめてのフロー : Node\-RED日本ユーザ会](https://nodered.jp/docs/tutorials/first-flow)