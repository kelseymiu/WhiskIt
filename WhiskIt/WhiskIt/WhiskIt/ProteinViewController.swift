//
//  ProteinViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/29/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class ProteinViewController: UIViewController {

    var proteinArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func grainButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "grainSegue", sender: self)
    }
    
    
    @IBAction func appleSwitch(_ sender: Any) {
       // ingredient.addIngredients(ingredientItem : "apples")
        proteinArray.append("chicken")
    }
    
    @IBAction func strawberriesSwitch(_ sender: Any) {
        proteinArray.append("beef")
    }
    
    @IBAction func bananaSwitch(_ sender: Any) {
        proteinArray.append("pork")
    }
    
    @IBAction func peachSwitch(_ sender: Any) {
        proteinArray.append("eggs")
        print("testing peaches")
        print(proteinArray)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let grainVC = segue.destination as? GrainsViewController {      grainVC.grainArray.append(contentsOf: proteinArray)
            print(proteinArray)
        }

    }
    

}
