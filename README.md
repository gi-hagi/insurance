# アプリケーション名
Life Planner

# アプリケーション概要
保険について解説を行っているサイトです。<br>
保険の内容を投稿することができるのは作成者のオーナーのみに設定をし、その他のユーザーは各保険の詳細ページにてユーザー同士でコメントをしあうことができます。<br>

# URL
https://life-planner.onrender.com/

# テスト用アカウント
- Basicパスワード :2222
- Basic認証ID :admin<br>
オーナー用アカウント
- メールアドレス :test@test
- パスワード :test1234<br>
閲覧者用アカウント
- メールアドレス :guest＠test
- パスワード :test1234

# 利用方法
# 投稿機能
1.トップページのヘッダーから、オーナー用アカウントにてログインを行います。<br>

2.トップページの「新規投稿」ボタンより投稿内容(保険名・解説・特徴・メリット・デメリット)を入力し、投稿ボタンを押します。 ※メリット・デメリットは必須ではありません。

# ユーザー登録機能

- ヘッダーの新規登録から、メールアドレス・パスワード・nickname・生年月日を入力し新規登録を行います。

# コメント機能

- 1.トップページの投稿一覧から投稿内容をクリックし、投稿内容の詳細を開く

- 2.ユーザー同士で投稿内容についてコメントをしたり、相談を行うことができる

# アプリケーションを作成した背景

現職での保険を取り扱う仕事の中で、「保険は必要だと思っているが難しくて分からない、手を出しにくい」という声をよく聞いておりました。
これまでの経験から、多くの人が保険に関して同様の問題を抱えていると痛感いたしました。
そこで、保険の解説を見ることができたり、ユーザー同士で質問をすることで保険についての悩みが解決できたり、
周りの人との相談ができるサイトを開発することにいたしました。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1YXLVGVSZ6fGSKc8jpyxCVdbo3YKS-ACGshxqgezp4DI/edit?usp=sharing

# 実装した機能についての画像
Life Plannerのトップページです。<br>
下へスクロールをすると各保険分野の投稿内容を閲覧することができます。
[![Image from Gyazo](https://i.gyazo.com/63c650cc9021e4d214ce25d78350620d.gif)](https://gyazo.com/63c650cc9021e4d214ce25d78350620d)

オーナーアカウントへログインを行うと、右下の投稿画面へ遷移し、新規投稿をすることができます。<br>
- 投稿機能

[![Image from Gyazo](https://i.gyazo.com/4882d0ae2b9980a29305a70e4e37668d.gif)](https://gyazo.com/4882d0ae2b9980a29305a70e4e37668d)

- 投稿内容一覧表示

[![Image from Gyazo](https://i.gyazo.com/7cb94848174781b5dc99f7b82f760f60.png)](https://gyazo.com/7cb94848174781b5dc99f7b82f760f60)

トップページの保険一覧から、気になる保険をクリックすることで詳細ページへ遷移します。<br>
またオーナーアカウントのみ、詳細ページにて投稿内容の編集や削除を行うことができます。
- 詳細ページ

[![Image from Gyazo](https://i.gyazo.com/f4dfbd6d84eaf599b5bb932c23b2ab98.gif)](https://gyazo.com/f4dfbd6d84eaf599b5bb932c23b2ab98)

詳細ページ下部にあるコメント機能では、ログインしているユーザーであれば誰でも利用することができます。<br>
ログインしていないユーザーの場合はコメントをすることができませんが、ユーザー同士のコメントを閲覧することは可能となっています。

[![Image from Gyazo](https://i.gyazo.com/afe3dd4f31b12d4588ca8fc8f639645b.png)](https://gyazo.com/afe3dd4f31b12d4588ca8fc8f639645b)

- コメント機能

[![Image from Gyazo](https://i.gyazo.com/849c7e6c7f3693a93ea12ef7a25f8114.png)](https://gyazo.com/849c7e6c7f3693a93ea12ef7a25f8114)

- お気に入り登録機能

[![Image from Gyazo](https://i.gyazo.com/98cbe5f82f5c9f05c2134c413059c9a1.gif)](https://gyazo.com/98cbe5f82f5c9f05c2134c413059c9a1)

お気に入り登録ボタンを押すと非同期通信にてコードを作成したため、お気に入り登録ボタンのみの更新を可能にしています。

# 実装予定の機能

- お気に入り一覧をマイページにて確認することができるようにします。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/4b132eecf9309be48699ff47c5073998.png)](https://gyazo.com/4b132eecf9309be48699ff47c5073998)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/8b527ce2da6d52b43be64f43be523440.png)](https://gyazo.com/8b527ce2da6d52b43be64f43be523440)

# 開発環境
- HTML
- CSS
- Ruby
- JavaScript

# 工夫したポイント
- 詳細ページからコメントを行う際に、詳細ページ内でコメントができるようにいたしました。
そうすることで、ユーザーが保険内容を確認しながらコメントすることができ、
無駄な画面遷移をなくすことができると考えたためです。
複雑化しないシンプルな構成としたことで使いやすさを意識いたしました。