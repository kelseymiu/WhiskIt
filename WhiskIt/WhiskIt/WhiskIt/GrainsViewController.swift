//
//  GrainsViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/29/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class GrainsViewController: UIViewController {
    
    var grainArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func vegetableButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "vegetableSegue", sender: self)
    }
    
    @IBAction func breadSwitch(_ sender: Any) {
        grainArray.append("bread")
    }
    
    @IBAction func pastaButton(_ sender: Any) {
        grainArray.append("pasta")
    }
    
    @IBAction func riceButton(_ sender: Any) {
        grainArray.append("rice")
    }
    
    @IBAction func oatsButton(_ sender: Any) {
        grainArray.append("oats")
        print("testing peaches")
        print(grainArray)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let vegetableVC = segue.destination as? VegetablesViewController {      vegetableVC.vegetableArray.append(contentsOf: grainArray)
            print(grainArray)
        }
    }
    

}
