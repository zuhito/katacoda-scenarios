[1時間でLINE BOTを作るハンズオン資料](https://qiita.com/n0bisuke/items/ceaa09ef8898bee8369d) をベースに「1. Botアカウントを作成する」を進めてBotと友達になるところまで進めましょう。

その上で、こちらの環境は以下の操作が起動時に完了しています。

* Node.js/npmのインストール
* npmで必要なライブラリのインストール
  * ```@line/bot-sdk``` や ```express```
* server.jsソースコードの準備
* 公開URLで動作する環境
  * [上記教材](https://qiita.com/n0bisuke/items/ceaa09ef8898bee8369d) では now や ngrok 構築しますが Katacoda ではその部分も整っています

つづいて、server.jsを編集して自分のBotとして動くようにしましょう。