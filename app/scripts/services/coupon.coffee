'use strict'

angular.module('koboApp').factory 'coupon', ($http, rwsConf) ->
  baseUrl = 'http://www.kimonolabs.com/api/'
  apiKobo = 'cczppw9u'
  apiKoboJ = '794yy2be'
  apiKey = '?apikey=' + rwsConf.kimonoKey
  clbck = "&callback=JSON_CALLBACK"

  {
    fetch: (callback) ->
      $http.jsonp(baseUrl + apiKobo + apiKey + clbck, {cache: true}).success (response) ->
        callback response
    fetchJp: (callback) ->
      result = {}
      $http.jsonp(baseUrl + apiKoboJ + apiKey + clbck, {cache: true}).success (response) ->
        try
          resStr = response.results.collection1[0].coupon
          splited = resStr.split(/\r\n|\r|\n/)
          currKey = ""
          for str in splited
            if str.match(/[0-9]+%/)
              currKey =  str.match(/[0-9]+%/)[0]
            if str.match(/[［](.*)[］]/)
              result[currKey] = [] if !result[currKey]
              result[currKey].push(str.match(/[［](.*)[］]/)[1])
        catch e
          result={"failed.. contact to admin." : ""}
        finally
          callback result
  }
