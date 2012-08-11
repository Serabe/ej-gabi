class Func
  # The each function takes an array and
  # a function an applies it to each
  # item in arr.
  @each: (arr, f) ->

  # The map function takes a function
  # and returns a new array such that
  # ith position is f applied to
  # arr[i].
  # You cannot use list comprehensions.
  @map: (arr, f) ->

  # Reduce is trickier.
  # f is a function that accepts two
  # parameters.
  # arr is an array.
  # base if undefined, must be arr[0]
  # A recursive definition of reduce is
  # @reduce: (f,arr,base) ->
  #   @reduce(f,arr[1..], f(base,arr[0])
  #
  # Can you implement it without recursion?
  # Can you think of any use for reduce?
  # Code it.
  @reduce: (r, arr, base) ->

  # Returns a new functiona that is the partial
  # application of f to args.
  # Imagine the following function
  # f = (a,b) -> a + b
  # addPi = Func.partial(f, Math.PI)
  # Now, addPi is a function that given an
  # argument x returns:
  # addPi(x) = f(Math.PI, x) = Math.PI + x
  @partial: (f, args...) ->
