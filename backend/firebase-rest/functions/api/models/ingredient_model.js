'use strict'

const Model = require('./model')

class IngredientModel extends Model {
    constructor() {
        super('ingredients')
        if (this.instance) return this.instance
        IngredientModel.instance = this
    }
}

module.exports = new IngredientModel()