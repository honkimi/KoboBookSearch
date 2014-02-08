'use strict'

angular.module('koboApp', [
  'ngResource',
  'ngAnimate',
  'pascalprecht.translate'
])

.config ($translateProvider, langJa, langEn) ->
  $translateProvider.translations('en', langEn)
  $translateProvider.translations('ja', langJa)
  $translateProvider.preferredLanguage('ja')

.config ($locationProvider) ->
  $locationProvider.html5Mode(true)

.run ($rootScope) ->
  $rootScope.langs = ['ja', 'en']
  $rootScope.lang = {}
  $rootScope.lang.selected = 'ja'
  $rootScope.rootUrl = location.origin

