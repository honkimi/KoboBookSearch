'use strict'

angular.module('koboApp').factory 'kobo', ($http, $translate, rwsConf) ->

  buildParam = ->
    "?applicationId=" + rwsConf.appid +
    "&affiliateId=" + rwsConf.affid +
    "&format=" + rwsConf.format +
    "&hits=" + 24 +
    "&field=" + 0 +
    "&orFlag=" + 1 +
    "&callback=" + "JSON_CALLBACK"

  getSortTypes = ->
    rwsConf.sort

  # Public API here
  {
    getBooks: (word, page, genre, sort, callback) ->
      genre ?= rwsConf.defaultGenre
      sort ?= rwsConf.defaultSort
      param = buildParam() + "&keyword=" + word + "&koboGenreId=" + genre + "&page=" + page + "&sort=" + sort
      $http.jsonp(rwsConf.baseurl + param).success (response)->
        callback response

    getBookById: (id, callback) ->
      param = buildParam() + "&itemNumber=" + id
      $http.jsonp(rwsConf.baseurl + param).success (response)->
        callback response

    getGenres: (genre, callback) ->
      param = buildParam() + "&koboGenreId=" + genre
      $http.jsonp(rwsConf.genreurl + param).success (response)->
        callback response

    filterGenre: (books) ->
      genres = []
      angular.forEach books.Items, (value) ->
        genreIds = value.Item.koboGenreId
        spGenres = genreIds.split("/")
        angular.forEach spGenres, (genre) ->
          if genres.indexOf(genre) < 0
            genres.push(genre)

      return genres

    getSortNames: ->
      sortTypes = getSortTypes()
      result = []
      angular.forEach sortTypes, (sort) ->
        obj = {name: $translate(sort.name), value: encodeURIComponent(sort.value)}
        result.push obj
      return result

  }
