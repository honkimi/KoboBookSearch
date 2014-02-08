'use strict'

describe 'Controller: CouponCtrl', () ->

  # load the controller's module
  beforeEach module 'koboApp'

  CouponCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CouponCtrl = $controller 'CouponCtrl', {
      $scope: scope
    }

