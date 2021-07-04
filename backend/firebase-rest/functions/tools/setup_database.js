// Script:  setup_database.js
// Purpose: An helper tool to upload stock data to firestore
// 
// Author: Jumail 
// Email: jumail@utm.my
// Github:  github.com/jumail-utm
// Update: 4 Jun 2021

// Add collections and their documents to the database 
// Setup the data first manually
// To use your own name for the document, specify the id 
// property (The id must be of type string).  Otherwise, 
// the document name will be auto-generated

const _collectionsJson = {
  users: [
    {
      id: "user1",
      name: "Alexander Holmes",
      photoUrl: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      login: "alex",
      password: "123"
    },
    {
      id: "user2",
      name: "Jessica Walters",
      photoUrl: "https://randomuser.me/api/portraits/thumb/women/75.jpg",
      login: "jessica",
      password: "123"
    }
  ],
  counters: [
    {
      id: "counter1",
      counter: 0,
      user: "user1"
    },
    {
      id: "counter2",
      counter: 0,
      user: "user2"
    }
  ],
  recipes: [
    {
      id: "recipe1",
      user: "user1",
      title: "Recipe 1",
      shared : "true",
      amount: [
        "amount1", "amount2","amount3","amount4",
      ],
      ingredients: [
        "ingredient1","ingredient2","ingredient3","ingredient4",
      ],
      step: [
        "step1","step2","step3","step4",
      ],
      result: "assets/images/anna-pelzer.jpg"
    },
    {
      id: "recipe2",
      user: "user1",
      title: "Recipe 2",
      shared : "true",
      amount: [
        "amount1", "amount2","amount3","amount4",
      ],
      ingredients: [
        "ingredient1","ingredient2","ingredient3","ingredient4",
      ],
      step: [
        "step1","step2","step3","step4",
      ],
      result: "assets/images/anna-pelzer.jpg"
    },
    {
      id: "recipe3",
      user: "user1",
      title: "Recipe 3",
      shared : "false",
      amount: [
        "amount1", "amount2","amount3","amount4",
      ],
      ingredients: [
        "ingredient1","ingredient2","ingredient3","ingredient4",
      ],
      step: [
        "step1","step2","step3","step4",
      ],
      result: "assets/images/anna-pelzer.jpg"
    }
  ],
  ingredients: [
    {
      id: "ingredient1",
      name: "Ingredient 1",
      photoURL: "photoIngredient",
      ingredientType: "Type1"
    },
    {
      id: "ingredient2",
      name: "Ingredient 2",
      photoURL: "photoIngredient",
      ingredientType: "Type1"
    },
    {
      id: "ingredient3",
      name: "Ingredient 3",
      photoURL: "photoIngredient",
      ingredientType: "Type1"
    }
  ]
}


const _firestore = require('../api/models/firebase/firebase_admin').firestore()

async function setupDatabase(_req, res, _next) {

  // Start adding the data to the database
  for (const collectionName in _collectionsJson) {

    const collectionData = _collectionsJson[collectionName]

    for (const documentData of collectionData) {
      if (documentData && documentData.id) {
        const documentId = documentData.id

        // id will not be included in the database. it is used only to name the document
        delete documentData.id

        const result = await _firestore.collection(collectionName).doc(documentId).set(documentData)
        console.log({ documentId, result })
      }
      else {
        await _firestore.collection(collectionName).add(documentData)
        console.log('auto gen doc id')
      }
    }
  }

  res.send('Setting Up Database.... Done ')
}

module.exports = setupDatabase