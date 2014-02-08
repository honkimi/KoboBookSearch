'use strict'

describe 'Filter: encode', () ->

  # load the filter's module
  beforeEach module 'koboApp'

  # initialize a new instance of the filter before each test
  encode = {}
  beforeEach inject ($filter) ->
    encode = $filter 'encode'

  it 'should return the input prefixed with "encode filter:"', () ->
