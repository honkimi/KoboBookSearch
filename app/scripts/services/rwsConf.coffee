'use strict'

angular.module('koboApp') .constant 'rwsConf',
  baseurl: 'https://app.rakuten.co.jp/services/api/Kobo/EbookSearch/20131010'
  genreurl: 'https://app.rakuten.co.jp/services/api/Kobo/GenreSearch/20131010'
  appid: '295e52495b7dee04d9c1d6ea07dfbb9e'
  affid: '0fec64cf.502ad1e1.0fec64d0.1823de0d'
  apiKey: 'AIzaSyDwfRpITS2_7PDAKE5rEvDm6B4wV_1yfSg'
  kimonoKey: '0b98d198323093974b7e3b14d41f54a5'
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


