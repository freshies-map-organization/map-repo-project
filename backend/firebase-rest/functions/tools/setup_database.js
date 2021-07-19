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
      photoUrl: "assets/images/smith_img.png",
      age: 30,
      occupation: "Chef",
      login: "alex",
      password: "123"
    },
    {
      id: "user2",
      name: "Hafizul Shukran",
      photoUrl: "assets/images/smith_img.png",
      age: 22,
      occupation: "Student",
      login: "hafizul",
      password: "12345"
    },
    {
      id: "user3",
      name: "Hakimin",
      photoUrl: "assets/images/smith_img.png",
      age: 22,
      occupation: "Student",
      login: "kimin",
      password: "123"
    },
    {
      id: "user4",
      name: "Azizah",
      photoUrl: "assets/images/christa_sima_img.png",
      age: 22,
      occupation: "Student",
      login: "azizah123",
      password: "azizah99"
    },
    {
      id: "user5",
      name: "Fadhil",
      photoUrl: "assets/images/smith_img.png",
      age: 22,
      occupation: "Student",
      login: "fadhil",
      password: "123"
    },
  ],
  recipes: [
    {
      id: "recipe1",
      user: "user1",
      title: "Easy Maggi Mee Goreng",
      description: "I promise you this is the easiest ‘Maggi Mee’ goreng recipe you can find.",
      shared : "true",
      ingredients: [
        "1 Maggi noodles in packet (curry flavour)",
        "3 fried tofu",
        "1 cup Green leafy vegetables",
        "1 Egg",
        "1/2 packet Maggi curry seasoning",
        "1/2 tbsp Dark soy sauce",
        "1 shallot, cubed",
        "1 Lime (optional)",
        "1 sunny side up (optional)",
      ],
      step: [
        "TO COOK NOODLES: In a pot, bring water to boil and add in a packet of dehydrated Maggi noodle.",
        "Cook noodles until it soften (30 seconds).",
        "Drain the water and set aside.",
        "TO COOK MAGGI GORENG: In a wok, heat oil and fry onions until it just begin to brown.",
        "Add tofu and vegetables and stir-fry until vegetables soften.",
        "Add an egg.",
        "Stir in cooked noodles, Maggi seasoning and dark soya sauce.",
        "Mix well with a wok spatula and stir continuously for a few minutes.",
        "Serve hot.",
      ],
      result: "assets/images/maggi-goreng.jpeg"
    },
    {
      id: "recipe2",
      user: "user1",
      title: "Nasi goreng",
      description: "Create authentic nasi goreng with this easy recipe.",
      shared : "true",
      ingredients: [
        "2 cups white long-grain rice, rinsed",
        "2 1/2 tbsp kecap manis",
        "1 tbsp dark soy sauce",
        "1 tbsp sweet chilli sauce",
        "1/4 cup peanut oil",
        "4 eggs, lightly beaten",
        "1 brown onion, thinly sliced",
        "1 tsp sambal olek",
        "3 garlic cloves, finely chopped",
        "1 tsp shrimp paste",
        "1 carrot, peeled, finely chopped",
        "1 Lilydale Free Range Chicken Breast",
        "300g green prawns, peeled, deveined, roughly chopped",
        "3 green onions, thinly sliced",
        "1/4 small Chinese cabbage, finely shredded",
        "1/4 cup fried shallots",
        "Thinly sliced red chillies, to serve",
      ],
      step: [
        "Cook rice following absorption method on packet until just tender. Drain. Transfer to a baking tray. Fluff rice with a fork. Cool to room temperature. Cover and refrigerate for 2 hours or until cold",
        "Combine kecap manis, soy sauce and sweet chilli sauce in a jug. Set aside.",
        "Heat a wok over high heat until hot. Add 1 teaspoon oil and swirl to coat. Add one-quarter of beaten egg and swirl to form a thin omelette. Cook for 30 seconds or until egg sets. Slide onto a board. Repeat with oil and egg, in 3 batches, to make 4 omelettes. Roll up omelettes and thinly slice crossways.",
        "Heat remaining 2 tablespoons oil in wok over high heat. Add brown onion, sambal olek, garlic, shrimp paste and carrot. Stir-fry for 1 minute or until aromatic. Add chicken. Stir-fry for 1 to 2 minutes or until sealed. Add prawns. Stir-fry for 2 minutes or until prawns turn pink. Add rice, soy mixture, green onions and cabbage. Stir-fry for 3 to 4 minutes or until rice is heated through. Toss through half the sliced omelette.",
        "Spoon nasi goreng onto serving plates. Top with remaining sliced omelette. Sprinkle with fried shallots. Serve with sliced chillies.",
      ],
      result: "assets/images/nasi-goreng.jpeg"
    },
    {
      id: "recipe3",
      user: "user1",
      title: "'Fried' Ice Cream",
      description: "Frying ice cream just sounds stressful to us. So we opted to skip it. Instead, we coat ice cream in buttery, crunchy corn flakes that gets toasted separately so they taste fried without the drama.",
      shared : "false",
      ingredients: [
        "1 pint ice cream",
        "1 1/2 tbsp. butter",
        "1 1/4 c. corn cereal, crushed",
        "1/2 tsp. ground cinnamon",
        "2 tsp. granulated sugar",
        "Whipped cream, for garnish",
        "Sprinkles, for garnish",
        "4 maraschino cherries, for garnish",
      ],
      step: [
        "Line a small sheet tray with parchment paper and place in freezer. Scoop ice cream into 4 balls and place on prepared sheet tray. Keep in freezer while making cereal mixture, at least 30 minutes.",
        "In a medium skillet over medium heat, melt butter. Add corn cereal and cinnamon and cook, stirring occasionally, until the cereal turns golden, 5 to 7 minutes. Remove from heat and stir in sugar. Place on a shallow bowl and let cool.",
        "Remove ice cream balls from freezer and roll in cereal mixture. Top with whipped cream, sprinkles, and a cherry, and serve immediately.",
      ],
      result: "assets/images/delish-friedicecream.jpeg"
    },
    {
      id: "recipe4",
      user: "user1",
      title: "Chicken Rice Porridge (Chicken Congee)",
      description: "This simple and tasty Chicken Rice Porridge (Chicken Congee) is so easy to prepare. It makes a delicious breakfast and is a bowl of comfort any time of the day.",
      shared : "false",
      ingredients: [
        "2 cups rice (400g)",
        "10 cups water (2.4 liters), and a little more to dilute",
        "2 bone-in chicken breasts (skin removed)",
        "Salt and pepper to taste",
        "1 inch ginger (finely julienned) (30g)",
        "3 green onions (finely sliced)",
        "Sesame oil",
        "Soy sauce",
      ],
      step: [
        "In a large pot, rinse rice till water runs clear, about 3 to 4 times, drain.",
        "Add 10 cups (2.4 liters) water to the rice and set it on the stove to boil. When water comes to boil, remove lid, add chicken breasts. As soon as water comes back to a boil, add salt and pepper and reduce heat to simmer for about 30 minutes. If porridge gets too thick at any point, stir in ½ cup (120ml) water to dilute.",
        "Remove chicken breasts from pot with tongs. Shred the chicken breasts and return shredded meat to the pot.",
        "Add ginger and one to two teaspoons of sesame oil to the porridge. Turn off heat.",
        "Serve immediately with a sprinkling of green onions, pepper, and soy sauce. Add a few drops of sesame oil if desired.",
      ],
      result: "assets/images/rice-porridge.jfif"
    }
  ],
  ingredients: [
    {
      id: "ingredient1",
      name: "chicken",
      photoURL: "photoIngredient",
      ingredientType: "meat"
    },
    {
      id: "ingredient2",
      name: "lettuce",
      photoURL: "photoIngredient",
      ingredientType: "vegetable"
    },
    {
      id: "ingredient3",
      name: "paprika",
      photoURL: "photoIngredient",
      ingredientType: "spice"
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