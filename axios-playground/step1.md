ターミナルは、いま tutorial フォルダにいる状況から始まります。

## ファイルをエディタで確認

tutorial ファイルツリーから、 ```get.js``` ファイルをダブルクリックしてエディタを開きます。

## つづいて起動してみる

さっそく ```get.js``` を、Node.jsで実行して、axiosのGETリクエストを体験しましょう。

ターミナルで以下のコマンドで実行します。

```
node get.js
```

すると、 HTTPbin のサイトにアクセスし、


```
{ args: {},
  headers:
   { Accept: 'application/json, text/plain, */*',
     Host: 'httpbin.org',
     'User-Agent': 'axios/0.19.0' },
  origin: '                              ',
  url: 'https://httpbin.org/get' }
```

といったレスポンスが表示されます！

## HTTPbinについて

HTTPbinは「シンプルなHTTPリクエストとレスポンスを返すWEBサービス」で、こちらからの送信時のHTTPリクエストをオウム返ししてくれます。