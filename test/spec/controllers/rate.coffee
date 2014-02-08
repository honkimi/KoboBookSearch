'use strict'

describe 'Controller: RateCtrl', () ->

  # load the controller's module
  beforeEach module 'koboApp'

  RateCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    RateCtrl = $controller 'RateCtrl', {
      $scope: scope
    }

