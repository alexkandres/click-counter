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
    var label: UILabel!
    var labelDuplicate: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //label
        let labelWithNumber = UILabel()
        labelWithNumber.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        labelWithNumber.text = "0"
        view.addSubview(labelWithNumber)
        self.label = labelWithNumber
        
        //labelDuplicate
        let labelWithNumberDuplicate = UILabel()
        labelWithNumberDuplicate.frame = CGRect(x: 180, y: 150, width: 60, height: 60)
        labelWithNumberDuplicate.text = "0"
        view.addSubview(labelWithNumberDuplicate)
        self.labelDuplicate = labelWithNumberDuplicate
        
        //button
        let buttonForIncrement = UIButton()
        buttonForIncrement.frame = CGRect(x: 150, y: 250, width: 100, height: 60)
        buttonForIncrement.setTitle("Increment", for: .normal)
        buttonForIncrement.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(buttonForIncrement)
        
        //add target action to the button
        buttonForIncrement.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        //buttonDecrement
        let buttonForDecrement = UIButton()
        buttonForDecrement.frame = CGRect(x: 150, y: 350, width: 100, height: 60)
        buttonForDecrement.setTitle("Decrement", for: .normal)
        buttonForDecrement.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(buttonForDecrement)
        
        //add target action to the button
        buttonForDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    }
    
    //TODO create method that increments and sets new text
    @objc func incrementCount() {
        count += 1
        label.text = "\(count)"
        labelDuplicate.text = "\(count)"

    }
    
    //TODO create method that increments and sets new text
    @objc func decrementCount() {
        count -= 1
        label.text = "\(count)"
        labelDuplicate.text = "\(count)"
        
    }

}

