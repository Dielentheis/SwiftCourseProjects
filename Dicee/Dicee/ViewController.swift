//
//  ViewController.swift
//  Dicee
//
//  Created by Elizabeth Dielentheis on 5/6/19.
//  Copyright © 2019 Elizabeth Dielentheis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseAndSetRandomDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        chooseAndSetRandomDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        chooseAndSetRandomDiceImages()
    }
    
    func chooseAndSetRandomDiceImages() {
        randomDiceIndex1 = Int.random(in: 1 ... 6)
        randomDiceIndex2 = Int.random(in: 1 ... 6)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
}

