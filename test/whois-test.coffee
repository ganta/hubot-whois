assert = require 'power-assert'
sinon = require 'sinon'

describe 'whois', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/whois')(@robot)

  it 'registers a respond listener', ->
    assert @robot.respond.calledWith(/whois\s+(.+)/)
