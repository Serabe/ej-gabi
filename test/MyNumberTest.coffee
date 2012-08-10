chai = require 'chai'
chai.should()

{MyNumber} = require '../src/MyNumber'

describe 'MyNumber instance', ->

  num = (x) -> new MyNumber(x)

  describe 'isInteger', ->
    it 'returns true for natural numbers', ->
      num(0).isInteger().should.be.true
      num(1).isInteger().should.be.true
      num(2341232324).isInteger().should.be.true

    it 'returns true for negative integers', ->
      num(-1).isInteger().should.be.true
      num(-15).isInteger().should.be.true

    it 'returns false for anything else', ->
      num(3/2).isInteger().should.be.false
      num(3.141592).isInteger().should.be.false

  describe 'isTriangular', ->
    it 'returns true for triangular numbers', ->
      num(1).isTriangular().should.be.true
      num(3).isTriangular().should.be.true
      num(15).isTriangular().should.be.true

    it 'returns true for negative triangular numbers', ->
      num(-1).isTriangular().should.be.true
      num(-3).isTriangular().should.be.true
      num(-15).isTriangular().should.be.true

    it 'returns false otherwise', ->
      num(-1.5).isTriangular().should.be.false
      num(3.141592).isTriangular().should.be.false
      num(10.1).isTriangular().should.be.false

  describe 'isPerfect', ->
    it 'returns true for perfect numbers', ->
      num(6).isPerfect().should.be.true
      num(28).isPerfect().should.be.true
      num(496).isPerfect().should.be.true
      num(8128).isPerfect().should.be.true

    it 'returns false otherwise', ->
      num(5).isPerfect().should.be.false
      num(8).isPerfect().should.be.false

  describe 'divisors', ->
    it 'returns an empty array for 0', ->
      num(0).divisors.should.eql([])

    it 'returns ordered list with divisors', ->
      num(1).divisors().should.eql([1])
      num(7).divisors().should.eql [1,7]
      num(12).divisors().should.eql [1,2,3,4,6,12]
