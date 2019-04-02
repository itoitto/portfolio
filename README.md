# README

///////////////////  
//アプリ名称  
///////////////////  
Futsalog（略称：salog）  

///////////////////
//技術情報
///////////////////
・DB         :sqlite3
・ミドルウェア :Puma
・gem        :kaminari、devise
・開発言語　　 :rails5.2.1 / ruby2.5.1

///////////////////
//機能概要
///////////////////
・ログイン機能
  『メールアドレス』『パスワード』『パスワード確認用』を使用したログインとなります。
  画面内に、新規登録リンクを実装しています。
  ログイン後、ユーザーIDに紐づいたユーザー名を取得し、ヘッダー情報に表示しています。
  ログインした旨、ラベルとしてメッセージが表示されます。

・ログアウト機能
  ログアウトのリンクを押下後、ログイン画面へ遷移します。
  ログアウトした旨、ラベルとしてメッセージとして表示されます。

・練習投稿一覧機能
  投稿がない場合、投稿がない旨が表示されます。
  投稿がある場合、5件ごとにページネーションしています。
  投稿がある場合、表示件数によって、投稿エリアの大きさを変更しています。
  投稿の概要として、『練習日』『練習タイトル』『練習詳細』を表示しています。練習詳細については、15文字のみ表示します。
  投稿内容は、投稿日時が昇順で表示しています。
  各投稿表示欄に、詳細リンクを表示しています。投稿ごとの詳細ページへ遷移します。

・練習詳細内容表示機能
  『練習日』『練習タイトル』『投稿日時』『練習内容』を表示します。
  『戻るボタン』、『編集ボタン』『削除ボタン』を実装しています。
  戻るボタンは、練習投稿一覧画面へ遷移します。
  編集ボタンは、練習内容更新画面へ遷移します。
  削除ボタンは、投稿内容を削除します。（物理削除しています。）戻るボタンと同様、練習投稿一覧画面へ遷移します。

・練習投稿編集機能
  詳細内容をそのまま表示します。
  『練習日』『練習タイトル』『練習内容』の内容をテキストエリア内で編集することができます。
  各項目がいずれかで空の項目があった場合、更新に失敗します。
  更新ボタンを押下すると、練習投稿一覧画面へ遷移します。

・練習記録機能
  練習内容を新規投稿することができます。
  投稿ボタンを押下すると、投稿データが登録されます。登録後、練習投稿一覧画面へ遷移します。

///////////////////
//アップデート予定
///////////////////
①javascriptの実装予定
②kaminariで実装したページネーションのデザイン変更
③練習投稿一覧画面へユーザ情報の概要を表示
④ユーザー画像の登録
順不同で実装していきます。
