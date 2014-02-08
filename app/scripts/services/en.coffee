'use strict'

angular.module('koboApp').constant 'langEn',
  EN: 'English'
  JA: 'Japanese'
  main:
    title: 'Kobo Search'
    subTitle: 'Search it, Read it.'
    btnValue: 'Search'
  contents:
    genre: 'Genre'
    pager: "Showing {{first}}-{{last}} of {{count}} Results"
    yen: "{{price}} Yen"
    prev: "Prev"
    next: "Next"
    none: "Oops, your search did not match any producs."
    reader: "Kobo E-Reader"
    coupon: "Coupon Code"
    couponSuccess: "Success Rate"
  sort:
    relate: 'Relevance'
    releaseNew: 'New'
    reviewCount: 'Most Reviews'
    reviewHigh: 'Avg. Custromer Review'
    itemPriceRow: 'Price: Low to High'
    itemPriceHigh: 'Price: High to Low'
  detail:
    author: 'by {{author}}'
    price: 'Price: '
    buy: 'Buy this at Kobo Store'
    coupon: 'Check coupon code'
    compare: 'Check Amazon Review'
    twitter: 'Click and Share on Twitter'

