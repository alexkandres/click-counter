//
//  ViewController.swift
//  Click Counter
//
//  Created by Andres, Alex K. on 8/16/18.
//  Copyright © 2018 Andres, Alex K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //TODO create 2 params
    @IBOutlet var myLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }
    
    //TODO create method that increments and sets new text
    @IBAction func incrementCount() {
        count += 1
        myLabel.text = "\(count)"
    }

}

