request = require 'request'

express = require 'express'

app = express.createServer()

ONEWEEK = 2629743000
STATIC = "#{process.cwd()}/static"

app.set 'view options', { layout : false }
app.set 'view engine', 'coffee'
app.register '.coffee', require('coffeekup').adapters.express

app.use express.static "#{STATIC}", { maxAge: ONEWEEK }
app.use express.errorHandler()
app.use express.compiler { src:"#{STATIC}", enable: ['less'] }

request 'https://raw.github.com/uweb/jquery.uw/master/src/min/jquery.uw.weather.min.js', (err, response, body) ->
  console.log JSON.stringify response.headers
  #console.log body if not err and response.statusCode is 200


app.listen 1123
console.log "Server running on port #{app.address().port}"
