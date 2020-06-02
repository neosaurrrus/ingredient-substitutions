# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: "Dairy", description: "Dairy is a type of food produced from or containing the milk of mammals. They are primarily produced from mammals such as cattle, water buffaloes, goats, sheep, camels and humans. Dairy products include food items such as yogurt, cheese and butter. Dairy products are consumed worldwide, with the exception of most of East and Southeast Asia and parts of central Africa.")
Category.create(name: "Fruit and Vegetables", description: "Fruits and vegetables are classified from both a botanical and culinary standpoint. Botanically, fruits and vegetables are classified depending on which part of the plant they come from.A fruit develops from the flower of a plant, while the other parts of the plant are categorized as vegetables.Fruits contain seeds, while vegetables can consist of roots, stems and leaves. From a culinary perspective, fruits and vegetables are classified based on taste. Fruits generally have a sweet or tart flavor and can be used in desserts, snacks or juices. Vegetables have a more mild or savory taste and are usually eaten as part of a side dish or main course.")
Category.create(name: "Grains, Beans and Legumes", description: "Sometimes categorized as cereals, is often the largest category in nutrition guides. Examples include wheat, rice, oats, barley, bread and pasta. An example of beans would be baked beans and soy beans, while an example of legumes would be lentils and chickpeas. Grains are a good source of starch and are often categorized with other starchy food such as potatoes.")
Category.create(name: "Meat and Non-dairy animal products", description: "This is mostly animal flesh for human consumption. Examples include chicken, fish, turkey, pork and beef")
Category.create(name: "Liquids", description: "Liquids are used in a wide variety of recipies though they may overlap with other categories. Examples of liquids include stock, vegetable juice, oils, and alcohol.")
Category.create(name: "Dry Herbs and Spices", description: "Herbs are plants with savory or aromatic properties that are used for flavoring and garnishing food. A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food")
Category.create(name: "Meat and Dairy Substitutes", description: "Meat substitute products may be available for foods such as pork, chicken, ground beef, sausage, bacon, fish and so on. Dairy substitutes are essentially the same, except instead for dairy products. Dairy substitute products may be available for such foods as milks and cheeses.")
Category.create(name: "Other", description: "Any other foodstuff that really doesn't seem to fit anywhere else.")


User.create(username: "System",password_digest:"none")
User.create(username: "Admin",password_digest:"admin")
User.create(username: "Alice",password_digest:"alice")
User.create(username: "Bob",password_digest:"bob")
User.create(username: "Charlie",password_digest:"charlie")

# Dairy Ingredients 1
Ingredient.create(name: "Whole Milk", description: "Pasteurized Cow's milk, with a moderate fat content", vegan: false, vegetarian: true, category_id: 1, user_id: 1)
Ingredient.create(name: "Cheddar Cheese", description: "A relatively hard, off-white sometimes sharp-tasting, natural cheese. Originating in the English village of Cheddar in Somerset", vegan: false, vegetarian: true, category_id: 1, user_id: 3)
Ingredient.create(name: "Emmenthal Cheese", description: "Emmental is a yellow, medium-hard Swiss cheese that originated in the area around Emmental, canton of Bern. It has a savory but mild taste", vegan: false, vegetarian: true, category_id: 1, user_id: 4)

# Fruit and Vegetable Ingredients 4
Ingredient.create(name: "Aubergine", description: "Also known as Eggplant. Most commonly purple, the spongy, absorbent fruit is used in several cuisines", vegan: true, vegetarian: true, category_id: 2, user_id: 5)
Ingredient.create(name: "Closed Cup Mushrooms", description: "They are the most popular type of mushroom available, closed cup or button mushrooms have creamy white caps with pink gills which darken to beige as they grow", vegan: true, vegetarian: true, category_id: 2, user_id: 4)
Ingredient.create(name: "Cooking Apple", description: "A cooking apple, or culinary apple is an apple that is used primarily for cooking, as opposed to a dessert apple, which is eaten raw. Cooking apples are generally larger, and can be tarter than dessert varieties.", vegan: true, vegetarian: true, category_id: 2, user_id: 3)

# Grains, Beans and Legumes 7
Ingredient.create(name: "Chickpeas", description: "The chickpea or chick pea is an annual legume of the family Fabaceae, subfamily Faboideae. Its different types are variously known as gram or Bengal gram, garbanzo or garbanzo bean, Egyptian pea", vegan: true, vegetarian: true, category_id: 3, user_id: 3)
Ingredient.create(name: "Green Lentils", description: "These can be pale or mottled green-brown in color with a glossy exterior. They have a robust, somewhat peppery flavor. Green lentils generally take the longest to cook, upwards of 45 minutes, but they keep a firm texture even after cooking. This makes them ideal for salads and other side dishes", vegan: true, vegetarian: true, category_id: 3, user_id: 4)
Ingredient.create(name: "Black Turtle Bean", description: "The black turtle bean is a small, shiny variety of the common bean especially popular in Latin American cuisine, though it can also be found in the Cajun and Creole cuisines of south Louisiana.", vegan: true, vegetarian: true, category_id: 3, user_id: 5)

# Meat Ingredients 10
Ingredient.create(name: "Ground Beef", description: "Ground beef, minced beef or beef mince is beef that has been finely chopped with a knife or a meat grinder or mincing machine.", vegan: false, vegetarian: false, category_id: 4, user_id: 5)
Ingredient.create(name: "Chicken Breast", description: "Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising them in comparison to animals such as cattle or hogs, chickens have become prevalent throughout the cuisine of cultures around the world", vegan: false, vegetarian: false, category_id: 4, user_id: 4)
Ingredient.create(name: "Egg", description: "The ultimate convenience food, eggs are powerhouses of nutrition packed with protein and a range of 18 vitamins and minerals. They're also hugely versatile", vegan: false, vegetarian: true, category_id: 4, user_id: 4)

# Liquids Ingredients 13
Ingredient.create(name: "Sesame Oil", description: "Sesame oil is an edible vegetable oil derived from sesame seeds. Besides being used as a cooking oil, it is used as a flavor enhancer in many cuisines, having a distinctive nutty aroma and taste", vegan: true, vegetarian: true, category_id: 5, user_id: 3)
Ingredient.create(name: "White Wine", description: "White wine is a wine that is fermented without skin contact. The colour can be straw-yellow, yellow-green, or yellow-gold. ", vegan: true, vegetarian: true, category_id: 5, user_id: 4)
Ingredient.create(name: "Worcestershire Sauce", description: "Worcestershire sauce is frequently used to enhance food and drink recipes, including Welsh rarebit, Caesar salad, Oysters Kirkpatrick, and deviled eggs. As both a background flavour and a source of umami (the savoury fifth flavour)", vegan: false, vegetarian: false, category_id: 5, user_id: 4)

# Dry Herbs and Spices 16
Ingredient.create(name: "Chia Seeds", description: "Nearly flavorless, they can be ground into smoothies, cereals, and baked goods for extra nutrition and texture", vegan: true, vegetarian: true, category_id: 6, user_id: 4)
Ingredient.create(name: "Cumin", description: "Smoky and earthy. Used in a lot of Southwestern U.S. and Mexican cuisine, as well as North African, Middle Eastern, and Indian", vegan: true, vegetarian: true, category_id: 6, user_id: 3)
Ingredient.create(name: "Saffron", description: "Saffron has a subtle but distinct floral flavor and aroma, and it also gives foods a bright yellow color", vegan: true, vegetarian: true, category_id: 6, user_id: 5)

# Meat and Dairy Substitutes 19
Ingredient.create(name: "Almond Milk", description: "Almond milk is a plant milk manufactured from almonds with a creamy texture and nutty flavor", vegan: true, vegetarian: true, category_id: 6, user_id: 4)
Ingredient.create(name: "Soya Mince", description: "Soya mince is an inexpensive and easy-to-use alternative source of protein. It is made from the by-product (defatted soya flour) that is produced when extracting soya oil.", vegan: true, vegetarian: true, category_id: 7, user_id: 4)
Ingredient.create(name: "Vegan Cheese", description: "Vegan cheese can be made from various plant proteins and fats. As with plant milk, vegan cheese can be made from seeds, such as sesame and sunflower; nuts, such as cashew, pine nut, and almonds, among other ingredients.", vegan: true, vegetarian: true, category_id: 7, user_id: 5)

# Other 22
Ingredient.create(name: "Tofu", description: "Tofu, also known as bean curd, is a food prepared by coagulating soy milk and then pressing the resulting curds into solid white blocks of varying softness", vegan: true, vegetarian: true, category_id: 8, user_id: 3)

# Substitutions

Substitution.create(original_id: 1, sub_id: 19, user_id: 3, description: "Almond milk is a great vegan alternative to whole milk!", issues:"Lower in fat, so will not be as rich", same_quantity: true)
Substitution.create(original_id: 2, sub_id: 21, user_id: 5, description: "Vegan cheeses are a vegan alternative to Cheddar", issues:"There is a wide variety of vegan cheese that can behave differently", same_quantity: true)
Substitution.create(original_id: 3, sub_id: 21, user_id: 3, description: "Vegan cheeses are a vegan alternative to Emmenthal", issues:"There is a wide variety of vegan cheese that can behave differently", same_quantity: true)
Substitution.create(original_id: 2, sub_id: 3, user_id: 4, description: "Tastes pretty much like cheddar", issues:"Probably more expensive", same_quantity: true)