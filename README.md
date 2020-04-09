# README

# DIC課題：ツイッタークローン（Railsで作ったのでRaitter）
### Heroku：https://stormy-chamber-32488.herokuapp.com/raeets

## ホーム画面
<img src="https://lh3.googleusercontent.com/W2F4VB3hfqA7zvJZxM0nwgpo89Lvoa6CuKDK88_fddj2Cuu1m6rvL8rdkw0uC2LOW6PdnkYTlrpx0v1uW8yMN9KguquqrFOyi1951GQneKXafqMg_4kfKcShrODbhf8v5Y7pzqIqJq2QiAu_vtWMc5I0PLeAjilbjh1AlU8KNXh3OFIRjEaQ4RBrgjFa3lWDgdcZBSYhQ6pZOL0pnUkmmI825r61UtjFgYP8gGSMePEyi7T0-VokAN5e7jtKWo0AEEKuoE5mrZVSu_m2ypxglWsQhCB4_K1vzvK6mNmFnKElPtFyOaVaNa7hTSc2Uz5xFNJ3RRRc74P5Y3EIyJT7GIfDED59dHBBsz8Y5SmZ5L-gk9vhKxDj5LLunA3EWhWnxe2RTEt31RRJ1lrrQxe8MaePwG4H-jlW7685IxZU2-HIQy-GGbaH8GBqRja6XU-Jn_69vn_ryOCogr9MScmNYN5_dxVygI3wCLOgDOhUZO4_Y8UyiwUGqPrjKLwvIPY6YqPy-9P2k5md_89c9B2LxBBClA_at2PrpHyg36iTrRHYidVSCR4tPscIqHEXiSPMZPCqFxxNnOGwjMKxtnF-noLqYflpgGD-Btyi_jsZgw7fIW_W_PMy5fCi47dF0__t_4RFDQIzvIDOFM9VYtkxUNuHW3nfuLe5eQfCYLQMiLBNePwiSZnE5EG4Ur0=w839-h745-no" width="650px">

## バージョン
- Ruby 2.6.3
- Rails 5.2.3

## 機能一覧
- [ ] ツイート機能
  - [ ] 投稿CRUD機能（一覧、作成、詳細、更新、削除）

## 課題要件
  - Ruby on Railsを使ったアプリケーションであること  
  - HTML,CSSを使用して、最低限のフロント部分を作成すること。  
  - tweetの投稿・投稿確認・編集・一覧表示・削除機能があること
  - 確認画面から投稿画面に戻った時、打ち込んだ内容が保持されるようにすること  
  - 1文字以上140文字以下しかつぶやけないようにすること  
  - 140文字より多い文字数、または内容が空で登録しようとした場合エラーメッセージが出るようにすること  
  - tweetsテーブルは、本文（content）のみカラムを有すること（id,timestampはデフォルトで生成されるのでそのままで良い）  
  - Githubにソースコードを送信し、そのリポジトリのURLを提出すること  
  - エラーが出ないようにすること
  - コミットメッセージが、一目見てそのコミットの意味がわかるものであること
  - 一つの機能を作成したら、一つのコミットをするようにすること
  - タイムゾーンの設定を日本にしておくこと
  - 下記に記述してあるコーディング規約に沿った実装を行うこと
  - bootstrap, jquery-rails, デバック関係以外のgemを使用していないこと
## How to Start

```
1. $ git clone https://github.com/KakeruYamamoto/Raitter.git (クローン生成)
2. $ cd Raitter (作成後、対象のディレクトリから抜けてしまうので、そのディレクトリ移動)
3. $ bundle install
4. $ yarn install
5. $ rails db:create (データベースの生成)
6. $ rails db:migrate （マイグレーションファイルの実行）
7.  #config/initializers/locale.rb内の"I18n"の二行をコメントアウト（8.のコマンド終了後、戻す）
8. $ rails db:seed (シードデータの生成)
9. $ rails s  

```
