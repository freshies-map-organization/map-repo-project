
'use strict'
const functions = require("firebase-functions")
const express = require("express")
const app = express();
const usersRouter = require('./api/controllers/users_controller')
const countersRouter = require('./api/controllers/counters_controller')
const recipesRouter = require('./api/controllers/recipes_controller')
const ingredientsRouter = require('./api/controllers/ingredients_controller')


app.use(express.json())
app.use('/users', usersRouter)
app.use('/counters', countersRouter)
app.use('/recipes', recipesRouter)
app.use('/ingredients', ingredientsRouter)


// To handle "Function Timeout" exception
exports.functionsTimeOut = functions.runWith({
    timeoutSeconds: 300
})

exports.setupdb = functions.https.onRequest(require('./tools/setup_database'))
exports.setupauth = functions.https.onRequest(require('./tools/setup_authentications'))
exports.api = functions.https.onRequest(app)
