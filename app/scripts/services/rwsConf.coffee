'use strict'

angular.module('koboApp') .constant 'rwsConf',
  baseurl: 'https://app.rakuten.co.jp/services/api/Kobo/EbookSearch/20131010'
  genreurl: 'https://app.rakuten.co.jp/services/api/Kobo/GenreSearch/20131010'
  appid: 'sample1'
  affid: 'sample2'
  apiKey: 'sample3'
  kimonoKey: 'sample4'
  format: 'json'
  defaultSort: 'standard'
  defaultGenre: 101
  sort: [
    'sort.relate'
    'sort.releaseNew'
    'sort.reviewCount'
    'sort.reviewHigh'
    'sort.itemPriceRow'
    'sort.itemPriceHigh'
  ]


