# order_form

## 概要
購入したいくだものについて注文することができます。

## 起動方法
```
docker compose up -d
docker exec -it order_form-app-1 /bin/bash
bin/rails db:seed
bin/rails db:migrate
```

以下をブラウザで開くことができます
http://localhost:3000/