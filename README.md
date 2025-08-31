Order Form - 受注管理アプリケーション

商品やサービスの注文情報を管理する Web アプリケーションです。
Rails の基礎機能に加え、Hotwire・非同期処理・テスト環境を導入し、モダンな開発手法を学習することを目的としています。

🎯 解決したい課題

顧客からの注文データを簡単に管理・集計したい

非同期処理やテスト自動化を取り入れた実践的な開発を体験したい

🚀 主な機能

注文情報の登録・一覧・詳細・編集

Turbo/Stimulus によるスムーズな画面操作

Sidekiq によるバックグラウンド処理

RSpec によるテスト自動化

🛠 使用技術
分野	技術
Backend	Ruby 3.1.2 / Rails 7.0.3 / SQLite3
Frontend	Importmap / Hotwire (Turbo, Stimulus) / sprockets-rails / jbuilder
Infrastructure	Docker / Docker Compose / Puma / Foreman / Sidekiq
Utilities	active_decorator / rails-i18n / bootsnap
Development	debug / web-console / RuboCop / rubocop-performance
Test	RSpec / FactoryBot / Capybara

🏃 セットアップ手順
git clone https://github.com/hayashida333/order_form.git
cd order_form
docker compose up -d
docker exec -it order_form-app-1 /bin/bash
bin/rails db:migrate
bin/rails db:seed
bin/rails server

https://www.youtube.com/watch?v=w6CFRdGljQE
