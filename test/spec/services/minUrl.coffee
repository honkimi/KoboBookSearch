'use strict'

describe 'Service: minUrl', () ->

  # load the service's module
  beforeEach module 'koboApp'

  # instantiate service
  minUrl = {}
  beforeEach inject (_minUrl_) ->
    minUrl = _minUrl_

  it 'should do something', () ->
    expect(!!minUrl).toBe true
