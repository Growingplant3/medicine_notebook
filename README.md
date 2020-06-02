## タイトル
ウェブお薬手帳
<img width="1680" alt="スクリーンショット 2020-06-02 12 01 44" src="https://user-images.githubusercontent.com/54810944/83475329-15d6c580-a4c9-11ea-86f8-a8bafa37745f.png">

## プロジェクトの概要説明
現在処方箋医薬品を受け取る際に、お薬手帳への記録は紙媒体が主流となっています。

しかし紙媒体だけでは不都合な場面も多々ありますので、電子媒体で利用することにより患者側・薬剤師側双方にメリットがあると考え自分なりのアプリを制作してみました。

## 主要機能
ユーザー/薬局のログイン・ログアウト・新規作成・編集・削除・参照機能

お薬手帳情報の新規作成・編集・削除・参照
<img width="1680" alt="スクリーンショット 2020-06-02 13 15 59" src="https://user-images.githubusercontent.com/54810944/83479355-4f143300-a4d3-11ea-9193-65b9c09bc605.png">

体調記録の作成・参照
<img width="1680" alt="スクリーンショット 2020-06-02 13 20 51" src="https://user-images.githubusercontent.com/54810944/83479669-3c4e2e00-a4d4-11ea-809f-2c0514529dcb.png">

## 使用言語、環境、テクノロジー

ruby 2.6.4

rails 6.0.2.2

ログイン機能 devise
> ユーザー・薬局毎に分かれております

日本語化 devise-i18n

住所自動入力機能 jp_prefecture

デザイン bootstrap

検索機能 ransack
> 名前・年齢・性別などからユーザー検索ができます
>
> 名前・電話番号・メールアドレスから薬局検索ができます

ページネーション機能 kaminari
> お薬手帳記録参照にて、一つ戻る・一つ進む・最新まで戻る・最古まで進むができます。

体調グラフ機能 chartkick
> グラフの縦軸は検査値、横軸は本日から7日前までの日にちとなっております。
>
> 血圧・血糖などが入力でき、医療従事者へグラフを用いて視覚的に伝えることができます。
>
> 体調記録に付随するコメントを添えることもできます。
>
> 体調記録が何も入力されていない場合、グラフは表示されません。
>
> 体調記録が一つ入力されている場合、グラフ上に点で表示されます。
>
> 体調記録が複数ある場合、グラフ上に点とそれを繋ぐ緩やかな曲線で表現されます。
>
> 点にマウスをホバーすると、その値が表示されます。
>
> 3番目のサンプルユーザーに複数の体調サンプルデータを作成しています。

## 今後の計画

現役薬剤師の意見を取り入れ、デザイン・機能の改善を行います。

## 注意

[こちら](http://3.23.180.43:3000/)で公開しています。

改修中の機能は、ルートパスへリダイレクトされる仕様となっております。

テスト稼働ですので、アプリ使用時にユーザー・薬局を新規登録する場合、実際には存在しない値を使いお試しください。

サンプルデータは自由に編集・削除して良いです、定期的にデータベースの再構築を行います。
