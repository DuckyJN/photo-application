# 写真管理アプリケーション
このアプリは写真管理アプリケーションです。
サインアップをしてから画像アップロードすることができます。

ツイット機能に関しまして、未実装ですが、後ほど実装する予定ですので、
迷惑をかけて申し訳ございません。

## セットアップ
```
# bundle install
# rails db:create
# rails db:migrate
# rails s
```

### エラーが発生する場合
> ImageMagick/GraphicsMagick is not installed
上記のエラーが発生する場合、下記のコードを実行してください
```
brew install imagemagick
```