chai = require 'chai'
chai.should()

{MyNumber} = require '../src/MyNumber'

describe 'MyNumber instance', ->

  num = (x) -> new MyNumber(x)

  describe 'isInteger', ->
    it 'returns true for natural numbers', ->
      num(0).isInteger().should.equal true
      num(1).isInteger().should.equal true
      num(2341232324).isInteger().should.equal true

    it 'returns true for negative integers', ->
      num(-1).isInteger().should.equal true
      num(-15).isInteger().should.equal true

    it 'returns false for anything else', ->
      num(3/2).isInteger().should.equal false
      num(3.141592).isInteger().should.equal false

  describe 'isTriangular', ->
    it 'returns true for triangular numbers', ->
      num(1).isTriangular().should.equal true
      num(3).isTriangular().should.equal true
      num(15).isTriangular().should.equal true

    it 'returns true for negative triangular numbers', ->
      num(-1).isTriangular().should.equal true
      num(-3).isTriangular().should.equal true
      num(-15).isTriangular().should.equal true

    it 'returns false otherwise', ->
      num(-1.5).isTriangular().should.equal false
      num(3.141592).isTriangular().should.equal false
      num(10.1).isTriangular().should.equal false

  describe 'isPerfect', ->
    it 'returns true for perfect numbers', ->
      num(6).isPerfect().should.equal true
      num(28).isPerfect().should.equal true
      num(496).isPerfect().should.equal true
      num(8128).isPerfect().should.equal true

    it 'returns false otherwise', ->
      num(5).isPerfect().should.equal false
      num(8).isPerfect().should.equal false
