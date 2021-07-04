'use strict'

const Model = require('./model')

// Here, we are implementing the class with Singleton design pattern

class RecipeModel extends Model {
    constructor() {
        super('recipes')
        if (this.instance) return this.instance
        RecipeModel.instance = this
    }
}

module.exports = new RecipeModel()