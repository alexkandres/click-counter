//
//  ViewController.swift
//  Click Counter
//
//  Created by Andres, Alex K. on 8/16/18.
//  Copyright © 2018 Andres, Alex K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //label
        let labelWithNumber = UILabel()
        labelWithNumber.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        labelWithNumber.text = "0"
        view.addSubview(labelWithNumber)
        
        //button
        let buttonForIncrement = UIButton()
        buttonForIncrement.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        buttonForIncrement.setTitle("Click", for: .normal)
        buttonForIncrement.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(buttonForIncrement)
    }

}

