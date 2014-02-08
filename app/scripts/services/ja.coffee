'use strict'

angular.module('koboApp') .constant 'langJa',
  EN: '英語'
  JA: '日本語'
  main:
    title: 'Kobo 検索'
    subTitle: 'すぐに、そのまま。'
    btnValue: '検索'
  contents:
    genre: 'ジャンル'
    pager: "{{count}}件中 {{first}}〜{{last}}件までの表示"
    yen: "{{price}}円"
    prev: "前へ"
    next: "次へ"
    none: "検索しましたが、見つかりませんでした。"
    reader: "Kobo 端末"
    coupon: "クーポンコード"
    close: "閉じる"
  sort:
    relate: '関連度の高い順'
    releaseNew: '発売日の新しい順'
    reviewCount: 'レビューの件数が多い順'
    reviewHigh: 'レビューの評価が高い順'
    itemPriceRow: '価格が安い順'
    itemPriceHigh: '価格が高い順'
  detail:
    author: '{{author}} (著)'
    price: '価格: '
    buy: 'Kobo ストアで購入'
    coupon: 'クーポンコードをチェック'
    compare: 'Amazon レビューをチェック'
    twitter: 'クリックしてTwitterでシェアしよう'

