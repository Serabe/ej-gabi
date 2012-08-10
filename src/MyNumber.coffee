class MyNumber
  constructor: (@value) ->

  # Returns true if @value is an integer.
  isInteger: ->

  # Returns true if @value is a triangular number.
  # A triangular number is a number that is the sum
  # from 1 to another integer n.
  # For example, 3 is a triangular number because
  # 3 = 1 + 2. 6 is triangular too, 'cause
  # 6 = 1 + 2 + 3
  # Other examples are 10, 15, 21, 28, 36
  isTriangular: ->

  # Returns true if @value is a perfect number.
  # A perfect number is a number equal to the sum
  # of its proper divisors. A divisor is said proper
  # if it is not the given number.
  # For example, 6 is a perfect number, because
  # its proper divisors are 1, 2 and 3 and they sum
  # up to 6. Other perfect number is 28, and the next one
  # is 496.
  # First time you're not allowed to use divisors before.
  isPerfect: ->

  # Returns a list of all divisors of @value.
  divisors: ->
exports.MyNumber = MyNumber
