'use strict'

describe 'Service: Coupon', () ->

  # load the service's module
  beforeEach module 'koboApp'

  # instantiate service
  coupon = {}
  beforeEach inject (_coupon_) ->
    coupon = _coupon_

  it 'should do something', () ->
    expect(!!coupon).toBe true
