//
//  VegetablesViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/29/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class VegetablesViewController: UIViewController {
    
    var vegetableArray = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dairyButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "dairySegue", sender: self)
    }
    
    @IBAction func carrotsSwitch(_ sender: Any) {
        vegetableArray.append("carrots")
    }
    
    @IBAction func spinachSwitch(_ sender: Any) {
        vegetableArray.append("spinach")
    }
    
    @IBAction func broccoliSwitch(_ sender: Any) {
        vegetableArray.append("broccoli")
    }
    
    @IBAction func tomatoesSwitch(_ sender: Any) {
        vegetableArray.append("tomatoes")
        print("testing peaches")
        print(vegetableArray)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let dairyVC = segue.destination as? DairyViewController {      dairyVC.dairyArray.append(contentsOf: vegetableArray)
            print(vegetableArray)
        }
    }
    

}
