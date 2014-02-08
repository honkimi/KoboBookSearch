'use strict'

angular.module('koboApp') .factory 'minUrl', (rwsConf) ->
    # Service logic

    # Public API here
    {
      insert: (url, callback) ->
        gapi.client.setApiKey(rwsConf.apiKey)
        gapi.client.load "urlshortener", "v1", ->
          gapi.client.urlshortener.url.insert(
            "resource":
              "longUrl" : url
          ).execute (response) ->
            callback response.id
    }
