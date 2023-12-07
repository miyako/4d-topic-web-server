![version](https://img.shields.io/badge/version-19%R52B-5682DF)

# 4d-topic-web-server
コンポーネントWebサーバーの例題

## システム要件

* [コンポーネント名前空間](https://blog.4d.com/ja/access-your-component-classes-from-your-host-project/)

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
