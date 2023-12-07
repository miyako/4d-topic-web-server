# 4d-topic-web-server
コンポーネントWebサーバーの例題

## 構成

```
HOST/Project
    /Components/8001.4dbase(srvA)
    /Components/8002.4dbase(srvB)
```

## 検証

```4d
cs.srvA.HTTP.new().stop().start().open()
cs.srvB.HTTP.new().stop().start().open()
```

それぞれのコンポーネントが別々のポート番号でWebサーバーを実行していることが確認できます。

* `https://127.0.0.1:4431/index.html`
* `https://127.0.0.1:4432/index.html`
