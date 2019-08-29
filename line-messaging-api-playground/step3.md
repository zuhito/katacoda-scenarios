左下のターミネルウィンドウで以下のコマンドを打ち込んで起動します。

```
node server.js
```

起動すると ```Server running at port 3000``` と表示されたらOKです。

## 公開URL確認

起動URLは以下にアクセスし ```Hello LINE BOT!(GET)``` と表示されたらOKです！

https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/

## LINEの管理画面にWebhook URLを反映

WebHook URLは

https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/webhook

になります。

![image.png (12.1 kB)](https://img.esa.io/uploads/production/attachments/3062/2019/08/29/8131/d79b6d5b-2b4b-4dcc-b04d-b0d8bc56649e.png)

こちらをLINEの管理画面のメッセージ送受信設定＞Webhook URLに反映します。

これで準備完了です
