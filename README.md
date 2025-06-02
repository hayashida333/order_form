# order_form

## 概要
購入したいくだものについて注文することができます。
https://www.youtube.com/watch?v=w6CFRdGljQE

## 起動方法
```
docker compose up -d
docker exec -it order_form-app-1 /bin/bash
bin/rails db:migrate
bin/rails db:seed
```

以下をブラウザで開くことができます
http://localhost:3000/



