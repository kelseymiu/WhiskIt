//
//  ViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/28/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ingredientsArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        
        performSegue(withIdentifier: "fruitsSegue", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let fruitsVC = segue.destination as? FruitsViewController {         fruitsVC.fruitsArray.append(contentsOf: ingredientsArray)
            print(ingredientsArray)
        }
        if let recipesVC = segue.destination as? RecipesViewController {         recipesVC.totalIngredientsArray = ingredientsArray
        }
        

    }

}

