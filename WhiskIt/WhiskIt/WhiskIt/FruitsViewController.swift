//
//  FruitsViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/29/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class FruitsViewController:  UIViewController {
    //inherit WhiskIt
    
    var fruitsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func meatButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "meatSegue", sender: self)
    }
    
    @IBAction func appleSwitch(_ sender: Any) {
       // ingredient.addIngredients(ingredientItem : "apples")
        fruitsArray.append("apples")
    }
    
    @IBAction func strawberriesSwitch(_ sender: Any) {
        fruitsArray.append("strawberries")
    }
    
    @IBAction func bananaSwitch(_ sender: Any) {
        fruitsArray.append("bananas")
    }
    
    @IBAction func peachSwitch(_ sender: Any) {
        fruitsArray.append("peaches")
        print("testing peaches")
        print(fruitsArray)
    }
    
   // print(ingredients)
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let proteinVC = segue.destination as? ProteinViewController {         proteinVC.proteinArray.append(contentsOf: fruitsArray)
                   print(fruitsArray)
               }
    }
    

}
