# 「後味」
映画鑑賞後になりたい自分の気分を想像し、見たい映画を探すことのできるアプリケーションです。  
ここでは映画観賞後になりたい気分のことを「後味」と呼びます。

# URL	
[アプリケーションURL](https://atoaji.herokuapp.com/)

# 利用方法
未ログインユーザーは、トップページから「探す」ボタンを押下し、特定の後味を選択すると、ユーザーの投稿を見ることができます。  
ログインユーザーは、未ログイン時にはできない映画の投稿や、ユーザー詳細画面の編集が追加でできます。

# 目指した課題解決
映画鑑賞をするときに、映画選択にかかる時間を短縮することで、余計な時間がかかってしまう課題を解決しようとしました。  
また、鑑賞した映画の投稿をすることで、その映画を見たい人の参考になるとともに、映画についての感想を共有できます。

# 洗い出した要件
| 機能 | 目的  | 詳細 | ストーリー(ユースケース) |
|---- | ---- | ---- | -------------------- |
| ジャンル選択/投稿一覧表示機能 | 後味(鑑賞後になりたい気分)別で映画検索、各ユーザーの投稿が確認できる | 後味(観賞後になりたい気分)を選択すると他ユーザーの投稿が観覧でき、そこからみたい映画を探すことができる | ・映画の鑑賞後になりたい気分のことを後味とする<br>・条件に該当する映画記事の結果のページを表示する |
| 投稿機能               | ユーザーが鑑賞した映画を記録することができ、映画の後味(観賞後の気分)を設定することで他ユーザーが観賞後になりたい気分別で映画検索できる | 投稿ページにて必要事項を入力後、投稿ボタンをクリックすると投稿が完了する | ・記録する映画に関連する画像/映画タイトル/後味/映画の感想を入力し投稿ボタンを押下すると投稿できる<br>・ユーザー名はログイン中ユーザーの名前が自動で表示される<br>・投稿記事はユーザーページ、またはジャンルごとの投稿一覧ページで確認可能<br> |
| ユーザー管理機能            | devise導入をし、ユーザーの新規登録/ログイン/ログアウトができるようにする | 記事投稿する場合ログインが必須 | ・ログアウト状態の場合新規登録かログインを選択するページが表示される<br>・新規登録の場合、ユーザーネーム/メールアドレス/パスワード入力で登録可能<br>・ログインの場合メールアドレス/パスワード入力でログイン可能<br> |
| ユーザー詳細表示機能       | 特定のユーザーの投稿を一気に見ることができ、より自分に合った映画を見つけやすい | プロフィール画像、好きな映画を入力すると投稿した記事と一緒にマイページに表示される | ・ログイン時にユーザーネームはわかっているため自動表示される<br>・ログインしているユーザーとページのユーザーが同じ場合、マイページ編集のボタンが表示される<br> |  

# 実装予定機能のイメージ画像およびその説明
1.トップ画面<br>
「さがす」ボタンを押下すると映画のジャンル選択画面に遷移<br> 
「投稿する」ボタンを押下すると映画の投稿画面に遷移(未ログイン時は「新規登録・ログイン選択画面」に遷移)
[![Image from Gyazo](https://i.gyazo.com/e39ea918704f2548c005267cc0f3023b.png)](https://gyazo.com/e39ea918704f2548c005267cc0f3023b)
ログイン時は全画面のヘッダーボタンが「ログアウト」と「投稿」(以下省略)<br>
「ログアウト」ボタンを押下するとログアウト画面に遷移<br>
「投稿」ボタンを押下すると投稿画面に遷移
[![Image from Gyazo](https://i.gyazo.com/a5f3dc4addcf1862eb74f3812f99e01d.png)](https://gyazo.com/a5f3dc4addcf1862eb74f3812f99e01d)
未ログイン時は全画面のヘッダーボタンが「新規登録」と「ログイン」(以下省略)<br>
「新規登録」ボタンを押下すると新規登録画面に遷移<br>
「ログイン」ボタンを押下するとログイン画面に遷移

2.新規登録・ログイン選択画面<br>
「新規登録」ボタンを押下すると新規登録画面に遷移<br>
「ログイン」ボタンを押下するとログイン画面に遷移<br>
[![Image from Gyazo](https://i.gyazo.com/8a562d4e4bc02d25f541755f8395be55.png)](https://gyazo.com/8a562d4e4bc02d25f541755f8395be55)

3.新規登録画面<br>
ユーザー名、メールアドレス、パスワード、確認用パスワードを記入し完了ボタンを押下すると、情報が保存され、トップ画面に遷移
[![Image from Gyazo](https://i.gyazo.com/0156d756f496831e1cef74aa1fb4eb4c.png)](https://gyazo.com/0156d756f496831e1cef74aa1fb4eb4c)

4.ログイン画面<br>
メールアドレス、パスワードを記入し完了ボタンを押下すると、ログインしてトップ画面に遷移
[![Image from Gyazo](https://i.gyazo.com/d0310e11b7947f51c5faabd6e07d83ad.png)](https://gyazo.com/d0310e11b7947f51c5faabd6e07d83ad)

5.後味選択画面<br>
後味を選択すると各後味の投稿一覧表示画面に遷移
[![Image from Gyazo](https://i.gyazo.com/2bab8707bbaabba6e6d255c37d1306fb.png)](https://gyazo.com/2bab8707bbaabba6e6d255c37d1306fb)

6.各後味の投稿一覧表示画面(「すばらしい世界！上を向いて歩こう」を選択した場合)<br>
後味ごとのユーザーの投稿が表示される<br>
投稿画像を押下すると「投稿詳細画面」に遷移<br>
ユーザー名を押下すると「ユーザー詳細画面」に遷移
[![Image from Gyazo](https://i.gyazo.com/956f0ff7e57746ccdd88380e60044910.jpg)](https://gyazo.com/956f0ff7e57746ccdd88380e60044910)

7.投稿詳細画面<br>
未ログイン、またはログインユーザーと投稿ユーザーが同一でない場合の画面
[![Image from Gyazo](https://i.gyazo.com/f8892ca0d61a8ad325b165ae1f476bfd.png)](https://gyazo.com/f8892ca0d61a8ad325b165ae1f476bfd)
ログイン中ユーザーと投稿ユーザーが同一の場合、「編集」「削除」ボタンが出現<br>
「編集」ボタンを押下すると「投稿編集画面」に遷移<br>
「削除」ボタンを押下すると投稿が削除され、「各ジャンルの投稿一覧表示画面」に戻る
[![Image from Gyazo](https://i.gyazo.com/c7d339369d2870d53bf0271bef16e428.png)](https://gyazo.com/c7d339369d2870d53bf0271bef16e428)

8.投稿画面
[![Image from Gyazo](https://i.gyazo.com/20c29bf31f20ca4deef9bb4e3293b73c.png)](https://gyazo.com/20c29bf31f20ca4deef9bb4e3293b73c)
画像選択、映画タイトル記入、後味選択、感想記入をし、「完了」ボタンを押下すると、情報が保存され、選択した後味の「投稿一覧画面」に遷移

9.投稿編集画面
[![Image from Gyazo](https://i.gyazo.com/986131201d525ac9aa0bb420174bee0c.png)](https://gyazo.com/986131201d525ac9aa0bb420174bee0c)
各情報の編集をし「編集」ボタンを押下すると情報が更新され、選択した後味の「投稿一覧画面」に遷移

10.ユーザー詳細画面
[![Image from Gyazo](https://i.gyazo.com/6966148245726faccf4ba5d7ac881f16.png)](https://gyazo.com/6966148245726faccf4ba5d7ac881f16)
プロフィール画像、ユーザー名、好きな映画、投稿が表示される<br>
[![Image from Gyazo](https://i.gyazo.com/a8d25dd520a9f9a45c4f54d7768eaae3.png)](https://gyazo.com/a8d25dd520a9f9a45c4f54d7768eaae3)
詳細表示中のユーザーとログイン中のユーザーが同一の場合は「編集」ボタンが出現<br>
「編集」ボタンを押下すると「ユーザー詳細編集画面」に遷移

11.ユーザー詳細編集画面
[![Image from Gyazo](https://i.gyazo.com/88c314f33a6979a708d7ca49d9649292.png)](https://gyazo.com/88c314f33a6979a708d7ca49d9649292)
プロフィール画像と好きな映画を記入し「編集」ボタンを押下すると「ユーザー詳細画面」に戻る

# データベース設計

### 開発環境<br>
HTML, CSS, Ruby, Ruby on rails, GitHub, Mysql 

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
- belongs_to :genre

### genres テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| genre         | string     | null: false                    |
| post          | references | null: false, foreign_key: true |

#### Association

- has_many :posts

## ER図
[![Image from Gyazo](https://i.gyazo.com/bb96d74100f638a31b65daa69957c5be.png)](https://gyazo.com/bb96d74100f638a31b65daa69957c5be)
