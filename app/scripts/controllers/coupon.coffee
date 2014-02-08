'use strict'

angular.module('koboApp').controller 'CouponCtrl', ($scope, coupon) ->
  $scope.coupon = {}
  $scope.coupons = null

  $scope.hasCoupon = ->
    $scope.coupon.lastrunstatus and
      $scope.coupon.lastrunstatus == "success" and
      $scope.coupon.results.collection1[0].off and
      !!$scope.coupon.results.collection1[0].off.match(/([0-9]+)%/)

  $scope.onCouponShowClick = ->
    coupon.fetchJp (response) ->
      $scope.coupons = response
  $scope.onCouponCloseClick = ->
      $scope.coupons = null

