'use strict'

const Controller = require('./controller')
const recipeModel = require('../models/recipe_model')

const RecipesController = new Controller(recipeModel)
module.exports = RecipesController.router