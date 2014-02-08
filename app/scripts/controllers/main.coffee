'use strict'

angular.module('koboApp').controller 'MainCtrl', ($scope, $anchorScroll, $location, kobo,  $translate, minUrl) ->
  $scope.result = {}
  $scope.genres = []
  $scope.searchConds = {}
  $scope.searchConds.page = 1
  $scope.searchConds.sort = 'standard'
  $scope.loaded = false
  $scope.searching = false
  $scope.minUrl = ""

  parseUrl = ->
    url = $location.absUrl()
    matched = url.match(/[¥/][¥?]([0-9]+)_/)
    if matched && matched.length > 1
      $scope.result.Items = 1
      $scope.searchConds.koboId = matched[1]
      kobo.getBookById $scope.searchConds.koboId, (response) ->
        $scope.loaded = true
        $scope.result = response
      minUrl.insert url, (response) ->
        $scope.minUrl = response
        $scope.$apply()
    else
      $scope.loaded = true
  parseUrl()
 
  $scope.$watch 'lang.selected', (newValue, oldValue) ->
    $translate.uses(newValue)
    $scope.sorts = kobo.getSortNames()

  $scope.sorts = kobo.getSortNames()

  koboSearch = ->
    $anchorScroll()
    kobo.getBooks $scope.search, $scope.searchConds.page, $scope.searchConds.genreId, $scope.searchConds.sort, (response) ->
      $scope.result = response
      console.log(response)
      filteredGenres = kobo.filterGenre(response)
      $scope.genres = []
      angular.forEach filteredGenres, (value) ->
        kobo.getGenres value, (genreResponse) ->
          $scope.genres.push(genreResponse)
      $scope.searching = false
 
  $scope.onSearchClicked = () ->
    # need to reset koboId
    $scope.searchConds.koboId = undefined
    $scope.searchConds.page = 1
    $scope.searching = true
    koboSearch()
 
  $scope.hasNext = ->
    $scope.result.count && $scope.result.count > $scope.result.last
  $scope.onNextClicked = ->
    $scope.searchConds.page += 1
    $scope.searching = true
    koboSearch()
  $scope.onPrevClicked = ->
    $scope.searchConds.page -= 1
    $scope.searching = true
    koboSearch()
  $scope.onGenreSearchClicked = (genreId, genreName) ->
    $scope.searchConds.page = 1
    $scope.searchConds.genreId = genreId
    $scope.searching = true
    koboSearch()
  $scope.genreClearSearchClicked = ->
    $scope.searchConds.page = 1
    $scope.searchConds.genreId = undefined
    $scope.searching = true
    koboSearch()
  $scope.sortSelected = ->
    $scope.searching = true
    koboSearch()

