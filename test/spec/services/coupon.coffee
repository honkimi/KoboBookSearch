'use strict'

describe 'Service: Coupon', () ->

  # load the service's module
  beforeEach module 'koboApp'

  coupon = {}
  $http = {}
  $httpBackend = {}

  beforeEach inject (_coupon_, _$http_, _$httpBackend_) ->
    coupon = _coupon_
    $http = _$http_
    $httpBackend = _$httpBackend_

  afterEach ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it 'should do something', () ->
    expect(!!coupon).toBe true

  it 'should call back fetchJp', ->
    callback = jasmine.createSpy('callback')
    $httpBackend.whenJSONP().respond {200, "response" : "ok"}
    coupon.fetchJp callback
    $httpBackend.flush()
    expect(callback).toHaveBeenCalled()
    
  it 'should parse callback string', ->
    callback = jasmine.createSpy('callback')
    $httpBackend.whenJSONP().respond {
      results:
        collection1: [
          coupon: '50%off\n［50feb］NEW\n35%off\n［halfdiscount35］'
        ]
    }
    coupon.fetchJp (response) ->
      expect(response['50%'][0]).toBe '50feb'
      expect(response['35%'][0]).toBe 'halfdiscount35'

    $httpBackend.flush()


