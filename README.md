# TagTube

タグを検索してYouTube上の動画一覧を表示する

## Gem
- gem 'google-api-client'
- gem 'trollop', '~> 2.1'
- gem 'dotenv-rails'
- gem 'devise'

## Version
- Ruby 5.1.6
- Rails 2.5.1

## How to
1. トップページにアクセス
2. 検索フォームに調べたい`タグ`と`表示件数`を入力
 - デフォルト）タグ:`HIKAKIN` 表示件数:`10`
3. 再生回数の多い順で表示される
4. ナビバーから`Tag Ranking`をクリック
5. 全体のタグのランキングが表示される

## 追加したい機能
- フォームに人気タグor過去タグを追加
- マイページに履歴追加
- デイリーランキング追加..?
- 検索のカテゴリーを追加
