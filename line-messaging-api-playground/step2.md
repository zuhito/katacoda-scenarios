自分のBotとして動くように、Channel SecretとChannel Access Tokenを反映させます。

[1時間でLINE BOTを作るハンズオン資料：Channel Secretとアクセストークンの確認](https://qiita.com/n0bisuke/items/ceaa09ef8898bee8369d#channel-secret%E3%81%A8%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9%E3%83%88%E3%83%BC%E3%82%AF%E3%83%B3%E3%81%AE%E7%A2%BA%E8%AA%8D)

の流れに沿ってChannel SecretとChannel Access Tokenをメモしておきます。

左上のファイルツリーから server.js を選択してエディタで編集できるようにします。

```
const config = {
    channelSecret: 'channelSecret',
    channelAccessToken: 'channelAccessToken'
};
```

server.jsのこちらを変更します。仮に Channel Secret が ```ABCDEFGHIJ``` 、channelAccessTokenが ```1234567890``` とすると。

```
const config = {
    channelSecret: 'ABCDEFGHIJ',
    channelAccessToken: '1234567890'
};
```

と、なります。