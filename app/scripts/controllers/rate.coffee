'use strict'

angular.module('koboApp') .controller 'RateCtrl', ($scope) ->
  $scope.number = 5
  $scope.getNumber = (num) ->
    arr = new Array(num)
    return arr

  calcAve = (floatNum) ->
    Math.round(parseFloat(floatNum))

  $scope.shouldStared = (rate, reviewAverage) ->
    return rate < calcAve(reviewAverage)
   
