chai = require 'chai'
chai.should()

{Func} = require '../src/Func'

describe 'Func instance', ->

  describe 'each', ->
    it 'calls f for each item in array', ->
      arr = (false for i in [1..5])
      Func.each [1,2,4], (idx) ->
        arr[idx] = true

      arr[0].should.be.false
      arr[1].should.be.true
      arr[2].should.be.true
      arr[3].should.be.false
      arr[4].should.be.true

  describe 'map', ->
    it "maps all elements", ->
      Func.map([1,2,4,6], ((x) -> x * x * x)).should.eql [1,8,64,216]

  describe 'reduce', ->
    it 'can be used for arr identity', ->
      Func.reduce(((memo, x) -> memo.push(x)), [1..10], []).should.eql [1..10]

    it 'can be used for reversing an array', ->
      Func.reduce(((memo, x) -> memo.unshift(x)), [1..10], []).should.eql [10..1]

    it 'uses the first element of the array if no base is found', ->
      Func.reduce(((memo, x) -> memo / x), [2,3,4]).should.closeTo 1/6, 0.001

  describe 'partial', ->
    it 'works when not all arguments are given', ->
      f = Func.partial(((a,b) -> a + b), 5)
      f(1).should.eql 6
      f(1003).should.eql 1008

    it 'works properly when all arguments are given', ->
      f = Func.partial(((a, b) -> a+b), 1, 4)
      f.should.be.a "function"
      f().should.eql 5
