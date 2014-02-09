'use strict'

describe 'Service: kobo', () ->

  # load the service's module
  beforeEach module 'koboApp'

  # instantiate service
  kobo = {}
  rwsConf = {}
  $http = {}
  $httpBackend = {}
  beforeEach inject (_kobo_, _$http_, _$httpBackend_, _rwsConf_) ->
    kobo = _kobo_
    $http = _$http_
    $httpBackend = _$httpBackend_
    rwsConf = _rwsConf_
    
  afterEach ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it 'should do something', () ->
    expect(!!kobo).toBe true

  it 'shound return response', () ->
    $httpBackend.whenJSONP().respond {200, "response" : "ok"}
    kobo.getBooks "keyword", 1, "genre1", 1, (res) ->
      expect(res.response).toBe "ok"
    $httpBackend.flush()

  it 'shound call getBookById callback', () ->
    callback = jasmine.createSpy('callback')
    $httpBackend.whenJSONP().respond {200, "response" : "ok"}
    kobo.getBookById "1234", callback
    $httpBackend.flush()
    expect(callback).toHaveBeenCalled()

  it 'should filter genre', ->
    books = Items: [
        {Item:{ koboGenreId: "123/345"}}
        {Item:{ koboGenreId: "678"}}
        {Item:{ koboGenreId: ""}}
      ]
      genres = kobo.filterGenre(books)
      expect(genres).toContain("123")
      expect(genres).toContain("345")
      expect(genres).toContain("678")
        
  it 'should get sort names', ->
    result = kobo.getSortNames()
    expect(result).not.toBeNull()
    expect(result.length).toBeGreaterThan(4)
    expect(result[0].value).toBe('standard')


