# Cakefile
# Graceously taken from http://danneu.com/posts/14-setting-up-mocha-testing-with-coffeescript-node-js-and-a-cakefile


{exec} = require "child_process"

REPORTER = 'min'

task 'test', 'run tests', ->
  exec "./node_modules/.bin/mocha
    --compilers coffee:coffee-script
    --reporter #{REPORTER}
    --colors
  ", (err, output) ->
    throw err if err
    console.log output
