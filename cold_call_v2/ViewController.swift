//
//  ViewController.swift
//  cold_call_v2
//
//  Created by Natalie Nuno on 3/11/18.
//  Copyright © 2018 Natalie Nuno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var namesList: [String] = ["Alfonso", "Isaiah", "Peter", "Mandy", "Sarah"]
    
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        var randnum: Int = Int(arc4random_uniform(5) + 1)
        
        
        if randnum == 1 || randnum == 2 {
            numLabel.textColor = UIColor.red
        }else if randnum == 3 || randnum == 4 {
            numLabel.textColor = UIColor.orange
        } else {
            numLabel.textColor = UIColor.green
        }
        numLabel.text = String(randnum)
        
        var randin: Int = Int(arc4random_uniform(5) + 1) //arc4rand chooses a number from 0-5 and subtracts 1, so i added 1
        nameLabel.text = namesList[randin-1]
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

