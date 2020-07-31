//
//  MoreViewController.swift
//  WhiskIt
//
//  Created by Kelsey Miu on 7/31/20.
//  Copyright © 2020 Kelsey Miu. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

  var moreArray = [String]()
    
    @IBOutlet weak var textOne: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after losading the view.
        textOne.text = "\(moreArray[1])"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

    }
    */

}
