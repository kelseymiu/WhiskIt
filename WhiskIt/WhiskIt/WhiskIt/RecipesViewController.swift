//
//  RecipesViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/29/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {

    var totalIngredientsArray = [String]()
    
    @IBOutlet weak var recipeOneTextView: UITextView!
    @IBOutlet weak var recipeTwoTextView: UITextView!
    @IBOutlet weak var recipeThreeTextView: UITextView!
    
    var smoothie = ["strawberries","bananas","yogurt","Strawberry Banana Smoothie","Directions: Combine ingredients.  Add all ingredients to a blender. Blend.  Pulse until smooth.  (If your smoothie seems too thick, add in a bit of extra milk or water.  If it seems too thin, add in more strawberries or banana.) Serve. Then pour the smoothie into a serving glass or two…and enjoy!"]

    var chickenPasta = ["chicken", "pasta", "salt", "pepper", "cheese", "eggs", "Chicken Spaghetti Carbonara", "Directions: Boil spaghetti in salted water until aldente. Cook chicken in a pan with salt and pepper. In a small bowl, whisk 3 egg yolks, salt and black pepper. Set aside. Slowly whisk in about ¼ - ⅓ cup of starchy pasta water into the egg mixture to slowly rise the temperature of the eggs. Pour egg mixture into the hot noodles, along with ⅓ cup pecorino cheese, and toss with tongs. Keep tossing until the sauce thickens, if necessary, add more pasta water until you get desired consistency. Toss until pasta is coated in sauce and cheese is melted. Add chicken. Season with cheese, salt and pepper."]

    var garlicBread = ["garlic", "butter", "salt", "bread", "Garlic Bread", "Preheat oven to 350°F. Cut the French bread in half, horizontally. Mix 1/2 cup of butter, 2 cloves of garlic, and 1 tablespoon of parsley together in a small bowl. Spread butter mixture over the the two bread halves. Heat in oven for 10 minutes. Sprinkle with Parmesan (optional) and broil."]

    var macNCheese = ["milk", "cheese", "salt", "pepper","pasta", "Mac N Cheese", "Directions: Get your pasta water boiling. Add plenty of salt! Once you’ve added the pasta, start on the cheese sauce. Sauce: combine the shredded cheese and heavy cream in a saucepan, and gently warm them until the cheese sauce gets a little bubbly and the cheese has fully melted. The cheese sauce should be ready right around the time you drain the macaroni (isn’t it nice how that works?). Pour the cheese sauce over the cooked noodles, and stir to coat every last little macaroni elbow with that luscious cheddar cheese sauce. Gobble immediately! Repeat as necessary."]

    var pancakes = ["bananas", "eggs", "Pancakes", "Directions: Use a dinner fork to thoroughly mash one ripe banana. Add 1/8 teaspoon of baking powder for fluffier pancakes, and whisk in salt, vanilla, cocoa powder, or honey if desired. Stir in 2 eggs until completely combined. Heat a cast iron pan, nonstick frying pan, or griddle over medium heat. Drop about 2 tablespoons of batter into the pan. Cook the pancakes until the bottoms look browned and golden when you lift a corner, about 1 minute. Sprinkle any loose toppings, like nuts or chocolate chips, over the top of the pancakes. Flip and cook for another minute. Serve with maple syrup, honey, jam, or any extra toppings you'd like!"]

    var oatmealCookies = ["oatmeal", "bananas", "Oatmeal Cookies", "Directions: Preheat oven to 350 degrees. Line a rimmed baking sheet with a silpat mat or coat with some cooking spray. Mash 2 bananas in a medium bowl. Add in 1 1/2 cups oats and gently stir. Add chocolate chips if desired. Scoop one heaping tablespoon of the dough into your hands and free form into a cookie. Place on cookie sheet and continue until you have 12 cookies. Cook for 12-15 minutes or until set through and lightly golden. Cool and enjoy!"]
    var hardBoiledEggs = ["eggs","Hard Boiled Eggs", "Directions: Place eggs in a single layer in a large saucepan; add enough cold water to cover by 1 in. Cover and quickly bring to a boil. Remove from the heat. Let stand for 15 minutes for large eggs (18 minutes for extra-large eggs and 12 minutes for medium eggs). Rinse eggs in cold water and place in ice water until completely cooled. Drain and refrigerate."]

    var shakshuka = ["eggs", "tomatoes", "pepper", "salt", "cheese", "Shakshuka", "Directions: Preheat oven to 375°F. Heat oil in a large ovenproof skillet over medium-low. Add 6 cups of pico de gallo (tomatoes) and 1 tsp. salt and cook, stirring occasionally, until tomatoes are very soft and liquid has reduced by three-quarters, about 25 minutes. Stir in 3/4 cups of feta. Gently crack 6 eggs into skillet, one at a time, over tomatoes, spacing evenly. Season with salt and pepper. Transfer skillet to oven and bake shakshuka until eggs are just set, 14–16 minutes. Serve hot in skillet."]

    var cacioEPepe = ["cheese", "pepper", "eggs", "pasta", "salt", "oil", "Cacio E Pepe", "Directions: Combine 2 1/2 cups Pecorino Romano cheese and 2 Tbsp. pepper in a large bowl; add 2 tablespoons olive oil and 3/4 cup cold water and mash with a fork to make a thick paste. Spread paste evenly in bowl. Cook pasta in a large pot of boiling salted water, stirring occasionally, until al dente. Using tongs, transfer pasta to bowl with cheese mixture; reserve pasta cooking liquid in pot. Stir pasta vigorously to coat with sauce, adding pasta cooking liquid to thin if necessary, until sauce clings to pasta and is creamy but not watery. Divide pasta among plates and top with additional cheese and pepper. Serve immediately."]

    var bakedEggsInBread = ["eggs","bread","cheese","salt","pepper","Baked Eggs in Bread","Directions: Start with sliced bread, eggs, cheese, some type of herbs like parsley and finely chopped vegetables like peppers and onions. I show the vegetables as optional because it can be really hard to fit them in sometimes, depending on the size of the eggs and thickness of the bread. Next, you can stuff the square bread into the muffin tin. But, I found it’s better to cut off the thick crust, then cut the bread into two equal triangles and flatten them out with a rolling pin. Don’t throw out the crust. You can cut use them to make bread pudding, or cut them up to make croutons for salad. Now you want to overlap the bread slices and place in the muffin tin. Sprinkle some cheese and any veggies or meats you’re using, and carefully crack the eggs on top. After baking in the oven, the egg whites will set and the yolk will remain very slightly runny. And the result is the cutest receptacle for eggs that is fun for kids and adults alike!"]

    var meatballs = ["beef", "eggs", "cheese", "bread","Meatballs", "Directions: Heat oven to 400°F. Line 13x9-inch pan with foil; spray with cooking spray. In large bowl, mix 1 pound ground beef, 1 egg, 1/2 bread crumbs (toasted and crumbled bread), 1/4 cup milk, 1/2 teaspoon salt, 1/4 teaspoon peopper. Shape mixture into 24 (1 1/2-inch) meatballs. Place 1 inch apart in pan. Bake uncovered 18 to 22 minutes or until temperature reaches 160°F and no longer pink in center."]

    var threeIngredientChicken = ["butter", "salt", "pepper", "garlic", "chicken", "Three Ingredient Chicken", "Directions: Preheat oven to 350 degrees F (175 degrees C. Lightly butter a baking dish. Stir 1/4 cup melted butter, salt, and minced garlic together in a bowl. Arrange chicken in the baking dish. Brush butter mixture onto the chicken until thoroughly coated, pouring any extra over the chicken. Bake in the preheated oven until no longer pink in the center and the juices run clear, about 30 to 45 minutes. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C)."]

    var testRecipe = [[String]]();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after losading the view.
         testRecipe = [smoothie, chickenPasta, garlicBread, macNCheese, pancakes, oatmealCookies, hardBoiledEggs, shakshuka, cacioEPepe, bakedEggsInBread, meatballs,  threeIngredientChicken]
    }
    
    @IBAction func findRecipesButtonTapped(_ sender: UIButton) {
        totalIngredientsArray.append("recipe")
        print(totalIngredientsArray)
        
        for food in testRecipe {
          recipeCheck(recipe : food)
        }
        
        recipeOneTextView.text = "\(userRecipes[0])"
        recipeTwoTextView.text = "\(userRecipes[2])"
        recipeThreeTextView.text = "\(userRecipes[4])"
    }
    
    var check = true
    var userRecipes = [String]()
    
    func recipeCheck(recipe: Array <String>){ //parameter is the recipe needed ingredients
      for item in recipe.dropLast(2) { //goes through all but the last 2 elements in recipe array (name and directions)
        if totalIngredientsArray.contains(item) == false {
          check = false //if user does not have ing needed for recipe, break
          print("false")
          break
        }
      check = true
      }
      if check{
        print("true") //print out the last two elements of the array (name and directions)
        print(recipe[recipe.count - 2])
        print(recipe[recipe.count - 1])
        userRecipes.append(recipe[recipe.count - 2])
        userRecipes.append(recipe[recipe.count - 1])
        print(userRecipes)
      }
    }
    
    @IBAction func moreButtonOne(_ sender: Any) {
        performSegue(withIdentifier: "moreSegue", sender: self)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let moreVC = segue.destination as? MoreViewController {      moreVC.moreArray.append(contentsOf: userRecipes)
            print(userRecipes)
        }
    }
    

}
