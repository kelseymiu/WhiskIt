//
//  DairyViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/29/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class DairyViewController: UIViewController {

    var dairyArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func seasoningButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "seasoningSegue", sender: self)
    }
    
    
    @IBAction func milkSwitch(_ sender: Any) {
        dairyArray.append("milk")
    }
    
    @IBAction func cheeseSwitch(_ sender: Any) {
        dairyArray.append("cheese")
    }
    
    @IBAction func butterSwitch(_ sender: Any) {
        dairyArray.append("butter")
    }
    
    @IBOutlet weak var yogurtSwitch: UIView!
    @IBAction func yogurtSwitch(_ sender: Any) {
        dairyArray.append("yogurt")
        print("testing peaches")
        print(dairyArray)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let seasoningVC = segue.destination as? SeasoningViewController {      seasoningVC.seasoningArray.append(contentsOf: dairyArray)
            print(dairyArray)
        }
    }

}
