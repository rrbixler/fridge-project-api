
 ## Fridge Project
 - Front End: https://rrbixler.github.io/fridge-project/
  - https://rrbixler.github.io/fridge-project/
  - Back End: https://github.com/rrbixler/fridge-project-api
  - https://tranquil-plains-95557.herokuapp.com/

 My app is a grocery tracking app with an end goal of returning a list of possible recipes you can make by using
 just the groceries in your fridge.  You can enter the grocery with amount and a food category into the fridge, see all the items in the fridge, edit items, and delete them from the fridge.  You can also select a category of food and view all of the items according to that category.

 ## Technologies Used
 Rails, Handlebars, CSS, HTML, jQuery

 ## Unsolved Problems
 I would like to have scaffolded out another table for recipes that uses the groceries resource to generate a recipe

 ## Development Process
The planning for this project went pretty smoothly for me.  It wasnt until I got tables scaffolded out that I ran into problems that I needed help fixing.  Most of the time when I needed help on my code it was most of the time typos and other small errors.  I really liked having control of hte back-end in this project and I feel like it went much quicker to create this app than it did for me to create tic tac toe.  I think reading the error messages in the console as well as reading the error messages in the terminal helped me to do a lot of my problem solving.

 ## Entity Relationship Diagram:

 Groceries:                 IngredientsList            Recipes:
 -id (primary key)          -amount (integer)          -id (primary key)
 -name (string)             -grocery_id (foreign key)  -name (string)
 -unit (string)             -recipe_id (foreign key)   -description (string)
 -expiration_date (date)    -id (primary key)    <!-- #-ingredients_list (string or foreign key for groceries)-->
