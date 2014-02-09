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
    {'name': 'sort.relate', 'value': 'standard'}
    {'name': 'sort.releaseNew', 'value': '-releaseDate'}
    {'name': 'sort.reviewCount', 'value': 'reviewCount'}
    {'name': 'sort.reviewHigh', 'value': 'reviewAverage'}
    {'name': 'sort.itemPriceRow', 'value': '+itemPrice'}
    {'name': 'sort.itemPriceHigh', 'value': '-itemPrice'}
  ]


