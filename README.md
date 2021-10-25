# アプリケーション名
「後味」

# アプリケーション概要 
映画観賞後になりたい気分(ここでは"後味"とする)をもとに見たい映画を探すことのできるアプリケーション。

# URL	
[アプリケーションURL](https://atoaji.herokuapp.com/)

# テスト用アカウント  
ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。

# 利用方法
未ログイン時：トップページから「探す」に遷移し、特定の後味を選択すると、ユーザーの投稿を観覧できる。  
ログイン時：トップページで「投稿」を選択すると映画の投稿ができ、「探す」を選択すると後味の選択後、ユーザーの投稿を観覧できる。

# 目指した課題解決
映画鑑賞が趣味の人の、映画選択時にかかる悩み時間を短縮することで、映画を鑑賞する際の余計な時間がかかってしまう課題を解決しようとしている。  
また、鑑賞した映画の投稿をすることで、その映画を見たい人の役に立つとともに、映画についての感想を共有できる。

# 洗い出した要件
| 機能 | 目的  | 詳細 | ストーリー(ユースケース) |
|---- | ---- | ---- | -------------------- |
| ジャンル選択/投稿一覧表示機能 | 後味(鑑賞後になりたい気分)別で映画検索、各ユーザーの投稿が確認できる | 後味(観賞後になりたい気分)を選択すると他ユーザーの投稿が観覧でき、そこからみたい映画を探すことができる | ・映画の鑑賞後になりたい気分のことを後味とする<br>・条件に該当する映画記事の結果のページを表示する |
| 記事投稿機能               | ユーザーが鑑賞した映画を記録することができ、映画の後味(観賞後の気分)を設定することで他ユーザーが観賞後になりたい気分別で映画検索できる | 投稿ページにて必要事項を入力後、投稿ボタンをクリックすると投稿が完了する | ・記録する映画に関連する画像/映画タイトル/後味/映画の感想を入力し投稿ボタンを押下すると投稿できる<br>・ユーザー名はログイン中ユーザーの名前が自動で表示される<br>・投稿記事はユーザーページ、またはジャンルごとの投稿一覧ページで確認可能<br> |
| ユーザー管理機能            | devise導入をし、ユーザーの新規登録/ログイン/ログアウトができるようにする | 記事投稿する場合ログインが必須 | ・ログアウト状態の場合新規登録かログインを選択するページが表示される<br>・新規登録の場合、ユーザーネーム/メールアドレス/パスワード入力で登録可能<br>・ログインの場合メールアドレス/パスワード入力でログイン可能<br> |
| ユーザーページ表示機能       | 特定のユーザーの投稿を一気に見ることができ、より自分に合った映画を見つけやすい | プロフィール画像、好きな映画を入力すると投稿した記事と一緒にマイページに表示される | ・ログイン時にユーザーネームはわかっているため自動表示される<br>・ログインしているユーザーとページのユーザーが同じ場合、マイページ編集のボタンが表示される<br> |  


# 実装した機能についての画像やGIFおよびその説明
実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。  

# 実装予定の機能
洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。  

# データベース設計	ER図等を添付。
ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。  

## テーブル設計

### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user_name          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| favorite_movie     | string | null: false |
| image              | string | null: false |

#### Association

- has_many :posts

### posts テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| aftertaste_id | integer    | null: false                    |
| impression    | text       | null: false                    |
| user          | references | null: false, foreign_key: true |

#### Association

- belongs_to :user

## ER図
[![Image from Gyazo](https://i.gyazo.com/1cb039c7c8c9246a93b43342c4cee227.png)](https://gyazo.com/1cb039c7c8c9246a93b43342c4cee227)
