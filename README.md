<h1>幹事サポート</h1>
<p>どういうサービス？：10名以上で遊べるスポットを探せるサイト</p>
<p>何ができるの？：GoogleMapを見ながら、スポットのレビューを投稿・確認</p>
<p>アピールポイント：GoogleMapApiを入れているため、視覚的に情報収集可能</p>

<img width="1063" alt="スクリーンショット 2024-03-29 14 33 55" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/44a4782d-60b3-4c99-8ff0-820a4722beae">




<h1>URL</h1>
<p>ゲストログイン機能で即座に使い始めることが可能です！</p>
(https://cdsapp-c4875fa80e36.herokuapp.com)

<h1>ER図</h1>
<img width="691" alt="スクリーンショット 2024-04-21 15 25 57" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/8a23f786-0ec7-412d-9ef8-d76f31a953a2">

<h1>使用技術</h1>
<ul>
  <li>Ruby 3.2.2</li>
  <li>Ruby on Rails 7.0.8.1</li>
  <li>PostgreSQL 13.12</li>
  <li>Rspec</li>
  <li>GoogleMapApi Javascript</li>
</ul>




<h1>機能一覧</h1>
<ul>
  <li>#1.投稿機能</li>
  <li>#2.ユーザー登録機能(devise)</li>
  <li>#3.ログイン機能(devise)</li>
  <li>#4.位置情報検索機能(geocoder)</li>
  <li>#5.いいね機能</li>
  <li>#6.ページネーション機能(kaminari)</li>
  <li>#7.検索機能</li>
  <li>#8.地図表示機能(GoogleMapApi Javascript)</li>
  <li>#9.コメント機能</li>
  <li>#10.タグづけ機能</li>
  <li>#11.タグ検索機能</li>
</ul>

<h2>#1.投稿機能</h2>
<p>1枚目：投稿したい情報をフォームに記入し、投稿ボタンをクリック</p>
<img width="500" alt="スクリーンショット 2024-04-21 15 46 48" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/dca34ea0-3a49-48ea-b190-e9db34dadaf8"><br><br><br>
<p>2枚目：投稿に成功すれば、投稿詳細ページにリダイレクト</p>
<img width="500" alt="スクリーンショット 2024-04-21 15 47 19" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/e120f68f-79e8-4ce4-a0a2-679179f55962"><br><br>

<h2>#2.ユーザー登録機能(サインアップ,devise)</h2>
<p>1枚目：必要記入事項を記入し、サインアップを押下</p>
<img width="500" alt="スクリーンショット 2024-04-21 15 58 14" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/26297221-6f02-4c25-954b-bca1b2c42abd"><br><br><br>
<p>2枚目：アカウント作成に成功すれば、アカウント詳細ページにリダイレクト</p>
<img width="500" alt="スクリーンショット 2024-04-21 15 58 29" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/daffd602-b4b4-4e14-8914-b2e99b11671f"><br><br>

<h2>#3.ログイン機能(devise)</h2>
<p>1枚目：必要記入事項を記入し、ログインを押下</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 04 21" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/dcf7d15b-916a-4803-be0a-5f234458d78c"><br><br><br>
<p>2枚目：ログインが成功すれば、rootにリダイレクト</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 04 32" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/c1bad4bd-831f-4864-8d10-0c471688fd04"><br><br>

<h2>#4.位置情報検索機能(geocoder)</h2>
<p>1枚目：スポット名を記入し、検索を押下</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 06 02" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/4a92204e-721b-41e0-8616-6dbdee0e5604"><br><br><br>
<p>2枚目：スポット名を受け取りgeocoderが作動、該当する場所にピンが配置</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 06 10" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/4623f2d9-2c34-4fe7-af58-521f20e2401e"><br><br><br>
<p>3枚目：該当する住所をフォームに記載</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 06 52" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/23da19cd-274a-487a-bc54-f9cc8f77b17c"><br><br>

<h2>#5.いいね機能</h2>
<p>1枚目：投稿のハートマークを押下</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 09 22" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/171c7a7d-71dc-442c-ae9a-75701fd81896"><br><br><br>
<p>2枚目：ハートマークの色が変わり、いいねが追加される</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 09 33" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/97b20e40-d4b4-4a78-abac-0d41cd4d1a14"><br><br>

<h2>#6.ページネーション機能(kaminari)</h2>
<p>1枚目：Nextを押下(※2など、数値の押下でも可)</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 10 36" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/168b87ff-1bf5-4231-bc79-ad2edf409fd0"><br><br><br>
<p>2枚目：投稿データが10件以上ある場合、隠されている11件目以上の情報が表示される</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 10 51" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/c75de4a2-9b99-4a2b-9b3c-0635142cf2d6"><br><br>

<h2>#7.検索機能　写真差し替えないとだめ</h2>
<p>1枚目：検索フォームにエリアのワードを記入</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 12 07" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/27b604e7-41e0-4892-ba5b-b94c0bc98c3b"><br><br><br>
<p>2枚目：検索結果として、住所情報(addressカラム)にエリア名が含まれたデータが表示</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 12 22" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/a7647df1-4133-4f5d-98bf-89953df50d0f"><br><br>

<h2>#8.地図表示機能(GoogleMapApi Javascript)</h2>
<p>1枚目：ジオコーディング済みの地理座標情報を用いてGoogleMapを表示</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 13 55" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/1ff2f8e4-339e-4272-bf94-4ce99e9b3bad"><br><br>

<h2>#9.コメント機能</h2>
<p>1枚目：投稿詳細ページの下にあるコメントフォームに、コメントを記載し投稿ボタンを押下</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 15 06" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/6b5c50e7-ba93-4f63-935a-befc15f0346e"><br><br><br>
<p>2枚目：同じ投稿詳細ページにリダイレクト。コメントに成功の記載</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 15 13" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/ca948073-bcbe-4f70-a978-d8582f92f906"><br><br><br>
<p>3枚目：コメント投稿者情報とコメント内容が表示</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 15 18" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/3699b3b6-c0d4-4774-82c4-61b3466bdcee"><br><br>

<h2>#10.タグづけ機能</h2>
<p>1枚目：タグとして選択した情報が記載されたラジオボタンをチェックし、投稿ボタンを押下</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 18 26" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/1b7cbae8-dda6-4669-8836-667c1533c59b"><br><br><br>
<p>2枚目：投稿詳細ページにリダイレクトし、タグがハッシュタグの形式で表示される</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 18 39" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/081ca639-b53b-4a6a-9b61-2ee42cd37a9a"><br><br>

<h2>#11.タグ検索機能</h2>
<p>1枚目：プルダウンからタグを選択し、検索を押下</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 19 50" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/842372b5-80da-47e1-aab1-d6c2888a781c"><br><br><br>
<p>2枚目：タグにが含まれる投稿のみが表示</p>
<img width="500" alt="スクリーンショット 2024-04-21 16 20 12" src="https://github.com/yuta-shimotsuji/cdsapp/assets/142209347/41860665-d4d4-48d6-955a-6207739314ff"><br><br>

<h1>テスト</h1>
<ul>
  <li>単体テスト(model)</li>
  <li>結合テスト(system)</li>
</ul>

<h1>今後の課題</h1>
