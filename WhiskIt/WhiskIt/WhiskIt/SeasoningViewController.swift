//
//  SeasoningViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/29/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class SeasoningViewController: UIViewController {

    var seasoningArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recipeButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "recipeSegue", sender: self)
    }
    
    
    @IBAction func saltSwitch(_ sender: Any) {
        seasoningArray.append("salt")
    }
    
    @IBAction func pepperSwitch(_ sender: Any) {
        seasoningArray.append("pepper")
    }
    
    @IBAction func garlicSwitch(_ sender: Any) {
        seasoningArray.append("garlic")
    }
    
    @IBAction func sugarSwitch(_ sender: Any) {
        seasoningArray.append("sugar")
        print(seasoningArray)
    }
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let recipeVC = segue.destination as? RecipesViewController {      recipeVC.totalIngredientsArray.append(contentsOf: seasoningArray)
            print(seasoningArray)
        }
    }
    

}
