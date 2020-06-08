# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - `Yup, Its using Rails`
- [x] Include at least one has_many relationship (`User has many substitutions`)
- [x] Include at least one belongs_to relationship (`Ingredient belongs_to Category` amoung others)
- [x] Include at least two has_many through relationships (`has_many :ingredients, :through => :substitutions, :source => :sub  and Category has many substitutions through Ingredients`)
- [x] Include at least one many-to-many relationship (`has_many :ingredients, :through => :substitutions`)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (`Substitution.description, .same_quantity and .issues attributes`)
- [x] Include reasonable validations for simple model objects (`User, Substitution and Ingredients have validations`)
- [x] Include a class level ActiveRecord scope method (`Substitution.last_5 - /substitutions/last_5`)
- [x] Include signup (`Just using BCrpyt for password`)
- [x] Include login (`Just using BCrypt/Session Controller`)
- [x] Include logout (`Session Controller`)
- [x] Include third party signup/login (`OmniAuth`)
- [x] Include nested resource show or index (`/categories/1/ingredients/index`)
- [x] Include nested resource "new" form (`/categories/1/ingredients/new`)
- [x] Include form display of validation errors (`/categories/ingredients/_form` and `substitutions/_form`)

Confirm:
- [x] The application is pretty DRY
- [ ] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate