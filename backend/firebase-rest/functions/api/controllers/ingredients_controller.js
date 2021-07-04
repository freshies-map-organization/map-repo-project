'use strict'

const Controller = require('./controller')
const ingredientModel = require('../models/ingredient_model')

const IngredientController = new Controller(ingredientModel)
module.exports = IngredientController.router