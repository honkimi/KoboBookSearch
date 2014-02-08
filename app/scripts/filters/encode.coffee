'use strict'

angular.module('koboApp') .filter 'encode', () ->
    (input) ->
      encodeURIComponent(input).replace(/[!'()]/g, escape).replace(/\*/g, "%2A")
