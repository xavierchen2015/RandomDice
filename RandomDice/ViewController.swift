//
//  ViewController.swift
//  RandomDice
//
//  Created by Xavier Chen [MIGOTP] on 2018/8/3.
//  Copyright © 2018年 Xavier Chen [MIGOTP]. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var diceImageCollection: [UIImageView]!
    
    var diceArray = ["dice-1","dice-2","dice-3","dice-4","dice-5","dice-6"]
    
    @IBOutlet weak var selectSegment: UISegmentedControl!
    @IBAction func buttonChange(_ sender: Any) {
        changeDice()
    }
    
    func changeDice() {
        if selectSegment.selectedSegmentIndex == 0 {
            diceArray.shuffle()
            for (index, i) in diceArray.enumerated() {
                diceImageCollection[index].image = UIImage.init(named: i)
            }
        } else {
            for n in 0...5 {
                let diceNum = diceArray[Int.random(in: 0...5)]
                diceImageCollection[n].image = UIImage.init(named: diceNum)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeDice()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

